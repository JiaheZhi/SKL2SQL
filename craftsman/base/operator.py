from __future__ import annotations
from abc import ABC, abstractmethod
from typing import Type

from numpy import vectorize
from pandas import DataFrame, Series
from sympy import Eq, solve, lambdify
from craftsman.base.defs import *

from craftsman.utility.dbms_utils import DBMSUtils
from craftsman.utility.join_utils import insert_db, df_type2db_type
from craftsman.utility.base_utils import merge_intervals
from craftsman.cost_model.MetaCost import OperatorCost, ExpandCost, CON_C_CATCost, CAT_C_CATCost


class SQLOperator(ABC):

    def __init__(self, op_name: OperatorName):
        self.op_name: OperatorName = op_name
        self.input_data_type: DataType
        self.output_data_type: DataType
        self.calculation_type: CalculationType
        self.op_type: OperatorType
        self.features: list[str]
        self.features_out: list[str] = []
        self.cost: list[OperatorCost] = [] # special case expand
        self.stats =  []
        self.is_encoder: bool = False

    @abstractmethod
    def apply(self, first_op: Operator):
        """constant propagation
        Args:
            first_op (SQLOperator): _description_
        """

    @abstractmethod
    def simply(self, second_op: Operator):
        """algebraic simplification

        Args:
            second_op (SQLOperator): _description_
        """

    @abstractmethod
    def _extract(self, fitted_transform) -> None:
        """absract the infomation from the fitted_transorm

        Args:
            fitted_transform (object): sklearn-base model from sklearn or catgory_encoders
        """

    def _get_op_type(self) -> str:
        """return the father class type

        Returns:
            str: father class type
        """
        return self.__class__.__base__.__name__

    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        """_summary_

        Args:
            input_data (DataFrame): _description_
        """

    @abstractmethod
    def get_sql(self, dbms: str):
        pass

    def fusion(self, graph):
        for feature in self.features_out:
            graph.model.modify_model(feature, self)
    
    @abstractmethod
    def modify_leaf(self, feature, op, thr):
        pass
    
    def push(self, graph):
        for feature in self.features_out:
            graph.model.modify_model_p(feature, self)
    
    @abstractmethod
    def modify_leaf_p(self, feature, op, thr):
        pass


class EncoderOperator(SQLOperator):
    
    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.is_encoder = True
    
    def join(self, graph):
        graph.add_join_operator(self)
        
    @abstractmethod
    def get_join_sql(self, dbms: str, input_table: str, table_name: str):
        pass


Operator = Type[SQLOperator]


class CAT_C_CAT(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.input_data_type = DataType.CAT
        self.output_data_type = DataType.CAT
        self.calculation_type = CalculationType.COMPARISON
        self.op_type = OperatorType[self._get_op_type()]

        self.mappings: list[Series] = []

    def apply(self, first_op: Operator):
        if first_op.op_type == OperatorType.CON_C_CAT:
            merged_op = CON_C_CAT_Merged_OP(first_op)
            merged_op.bin_edges = first_op.bin_edges
            for idx, mapping in enumerate(self.mappings):
                merged_op.categories.append(mapping[first_op.categories[idx]].values)
            return merged_op
        
        elif first_op.op_type == OperatorType.CAT_C_CAT:
            merged_op = CAT_C_CAT_Merged_OP(first_op)
            for idx, mapping in enumerate(first_op.mappings):
                merged_op.mappings.append(Series(self.mappings[idx][mapping].values, index=mapping.index))
            return merged_op
        
        elif first_op.op_type == OperatorType.EXPAND:
            merged_op = EXPAND_Merged_OP(first_op)
            merged_op.mapping = first_op.mapping
            for idx, col in enumerate(first_op.mapping.columns):
                merged_op.mapping[col] = self.mappings[idx][merged_op.mapping[col]]
            return merged_op
        
        else:
            return None

    def simply(self, second_op: Operator):
        if second_op.op_type == OperatorType.EXPAND:
            merged_op = EXPAND_Merged_OP(second_op)
            merged_op.mapping = second_op.mapping
            index_mapping = self.mappings[0]
            reverse_index_mapping = Series(data=index_mapping.index, index=index_mapping) 
            merged_op.mapping.index = reverse_index_mapping[merged_op.mapping.index]
            return merged_op
                
        else:
            return None

    
    def get_cost_info(self):
        for idx in range(len(self.features)):
            op_cost = CAT_C_CATCost()
            mapping = self.mappings[idx]
            for path_cost in range(1,len( mapping.index)+1):
                op_cost.set_cost(path_cost)
            self.cost.append(op_cost)
        return self.cost
                
    def get_sql(self, dbms: str):
        sqls = []
        for idx in range(len(self.features)):
            feature_sql = "CASE "
            mapping = self.mappings[idx]
            for category in mapping.index:
                feature_sql += f"WHEN {DBMSUtils.get_delimited_col(dbms, self.features[idx])} = '{category}' THEN {mapping[category]} "
            feature_sql += (
                f"END AS {DBMSUtils.get_delimited_col(dbms, self.features[idx])}"
            )
            sqls.append(feature_sql)
        return ",".join(sqls)
    
    
    def get_join_sql(self, dbms: str, input_table: str, table_name: str):
        feature = self.features[0]
        mapping = self.mappings[0]
        join_table_name = feature + CAT_C_CAT_JOIN_POSTNAME
        cols = {feature: DBDataType.VARCHAR.value}
        cols[CAT_C_CAT_JOIN_COL_NAME] = df_type2db_type(mapping.dtype, dbms)
        data = [(idx, mapping[idx]) for idx in mapping.index]
        insert_db(dbms, join_table_name, cols, data)
        delimitied_feature = DBMSUtils.get_delimited_col(dbms, feature)
        input_table = f"{input_table} left join {join_table_name} on {table_name}.{delimitied_feature}={join_table_name}.{delimitied_feature}"
        featuer_sql = f"{DBMSUtils.get_delimited_col(dbms, CAT_C_CAT_JOIN_COL_NAME)} AS {delimitied_feature}"
        return input_table, featuer_sql
    
    def modify_leaf(self, feature, op, thr):
        mapping = self.mappings[self.features_out.index(feature)]
        in_list = []
        for idx, enc_value in mapping.items():
            if enc_value <= thr:
                in_list.append(f'\'{idx}\'')
        return feature, 'in', f"({','.join(in_list)})" 
    
    def modify_leaf_p(self, feature, op, thr):
        mapping = self.mappings[self.features_out.index(feature)]
        feature_sub_sql = 'CASE '
        for idx, val in mapping.items()[:-1]:
            feature_sub_sql += f'WHEN {feature} = {idx} THEN {val} '
        feature_sub_sql += 'ELSE {} END '.format(mapping[-1])       
        return feature_sub_sql, op, thr  


class EXPAND(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.input_data_type = DataType.CAT
        self.output_data_type = DataType.CAT
        self.calculation_type = CalculationType.COMPARISON
        self.op_type = OperatorType[self._get_op_type()]

        self.mapping: DataFrame | Series
        self.con_c_cat_mapping = None # using for the merge of the con_c_cat and expand

    def apply(self, first_op: Operator):
        return None

    def simply(self, second_op: Operator):
        return None

    def get_cost_info(self):
        op_cost = ExpandCost()
        sub_field_cost = []
        for col in self.mapping.columns:
            col_mapping = self.mapping[col]
            categories_list = col_mapping.groupby(col_mapping).apply(
                lambda x: x.index.tolist()
            )
            sorted_categories_list = categories_list.apply(
                lambda x: len(x)
            ).sort_values(ascending=True)
            categories_list = categories_list[sorted_categories_list.index]
            for enc_value in categories_list.index.tolist()[:-1]:
                sub_field_cost.append(len(categories_list[enc_value]))
            op_cost.set_cost(sub_field_cost)
        self.cost.append(op_cost)
        return self.cost

    def get_sql(self, dbms: str):
        sqls = []
        feature = self.features[0]
        for col in self.mapping.columns:
            col_sql = "CASE "
            col_mapping = self.mapping[col]
            col_mapping = col_mapping[~col_mapping.index.isnull()]
            col_mapping = col_mapping[[idx for idx in col_mapping.index if idx != 'NaN']]
            categories_list = col_mapping.groupby(col_mapping).apply(
                lambda x: x.index.tolist()
            )
            sorted_categories_list = categories_list.apply(
                lambda x: len(x)
            ).sort_values(ascending=True)
            categories_list = categories_list[sorted_categories_list.index]
            if self.con_c_cat_mapping is None:
                for enc_value in categories_list.index.tolist()[:-1]:
                    if len(categories_list[enc_value]) == 1:
                        col_sql += f"WHEN {DBMSUtils.get_delimited_col(dbms, feature)} = '{categories_list[enc_value][0]}' THEN {enc_value} "
                    else:
                        in_str = ",".join(
                            [f"'{c}'" for c in categories_list[enc_value]]
                        )
                        col_sql += f"WHEN {DBMSUtils.get_delimited_col(dbms, feature)} in ({in_str}) THEN {enc_value} "
            else:
                for enc_value in categories_list.index.tolist()[:-1]:
                    intervals = []
                    for c in categories_list[enc_value]:
                        intervals.extend(self.con_c_cat_mapping[c]) 
                    merged_intervals = merge_intervals(intervals)
                    condition_str = " OR ".join(
                        [
                            f"{DBMSUtils.get_delimited_col(dbms, feature)} >= {interval[0]}"
                            + " AND "
                            + f"{DBMSUtils.get_delimited_col(dbms, feature)} < {interval[1]}"
                            for interval in merged_intervals
                        ]
                    )
                    col_sql += f"WHEN {condition_str} THEN {enc_value} "
                    
            col_sql += f"ELSE {categories_list.index.tolist()[-1]} END AS {DBMSUtils.get_delimited_col(dbms, col)}"
            sqls.append(col_sql)

        return ",".join(sqls)

    def get_join_sql(self, dbms: str, input_table: str, table_name: str):
        feature = self.features[0]
        join_table_name = feature + EXPAND_JOIN_POSTNAME
        cols = {feature: DBDataType.VARCHAR.value}
        for col in self.mapping.columns:
            cols[col] = df_type2db_type(self.mapping[col].dtype, dbms)
        data = []
        for idx in self.mapping.index:
            data.append((idx,) + tuple(self.mapping.loc[idx]))
        insert_db(dbms, join_table_name, cols, data)
        delimitied_feature = DBMSUtils.get_delimited_col(dbms, feature)
        input_table = f"{input_table} left join {join_table_name} on {table_name}.{delimitied_feature}={join_table_name}.{delimitied_feature}"
        feature_sql = ','.join(self.mapping.columns.tolist())
        return input_table, feature_sql

    def modify_leaf(self, feature, op, thr):
        mapping = self.mapping[feature]
        if self.con_c_cat_mapping is None:
            in_list = []
            for idx, enc_value in mapping.items():
                if enc_value <= thr:
                    in_list.append(f'\'{idx}\'')
            return feature, 'in', f"({','.join(in_list)})" 
        else:
            all_intervals = []
            for enc_value, intervals in self.con_c_cat_mapping.items():
                if enc_value <= thr:
                    all_intervals.extend(intervals)
            merged_intervals = merge_intervals(all_intervals)
            condition_str = " OR ".join(
                [
                    f"{DBMSUtils.get_delimited_col(DBMS, feature)} >= {interval[0]}"
                    + " AND "
                    + f"{DBMSUtils.get_delimited_col(DBMS, feature)} < {interval[1]}"
                    for interval in merged_intervals
                ]
            )
            return condition_str, '', ''
        
    def modify_leaf_p(self, feature, op, thr):
        mapping = self.mapping[feature]
        if self.con_c_cat_mapping is None:
            feature_sub_sql = 'CASE '
            for idx, val in mapping.items()[:-1]:
                feature_sub_sql += f'WHEN {feature} = {idx} THEN {val} '
            feature_sub_sql += 'ELSE {} END '.format(mapping[-1])       
            return feature_sub_sql, op, thr  
        
        else:
            col_sql = "CASE "
            col_mapping = self.mapping[feature]
            col_mapping = col_mapping[~col_mapping.index.isnull()]
            col_mapping = col_mapping[[idx for idx in col_mapping.index if idx != 'NaN']]
            categories_list = col_mapping.groupby(col_mapping).apply(
                lambda x: x.index.tolist()
            )
            sorted_categories_list = categories_list.apply(
                lambda x: len(x)
            ).sort_values(ascending=True)
            categories_list = categories_list[sorted_categories_list.index]
            for enc_value in categories_list.index.tolist()[:-1]:
                intervals = []
                for c in categories_list[enc_value]:
                    intervals.extend(self.con_c_cat_mapping[c]) 
                merged_intervals = merge_intervals(intervals)
                condition_str = " OR ".join(
                    [
                        f"{DBMSUtils.get_delimited_col(DBMS, feature)} >= {interval[0]}"
                        + " AND "
                        + f"{DBMSUtils.get_delimited_col(DBMS, feature)} < {interval[1]}"
                        for interval in merged_intervals
                    ]
                )
                col_sql += f"WHEN {condition_str} THEN {enc_value} "
            col_sql += f"ELSE {categories_list.index.tolist()[-1]} END "
            return col_sql, op, thr


class CON_A_CON(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.input_data_type = DataType.CON
        self.output_data_type = DataType.CON
        self.calculation_type = CalculationType.ARITHMETIC
        self.op_type = OperatorType[self._get_op_type()]

        self.equation: Eq
        self.symbols: dict = {}
        self.parameter_values: list = []

    def apply(self, first_op: Operator):
        if first_op.op_type == OperatorType.CON_C_CAT:
            merged_op = CON_C_CAT_Merged_OP(first_op)
            merged_op.bin_edges = first_op.bin_edges
            for idx, category_list in enumerate(first_op.categories):
                sub_equation = self.equation.rhs.subs(
                    {
                        self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                        for sym_name in self.parameter_values[idx]
                    }
                )
                f = lambdify(self.symbols["x"], sub_equation, "numpy")
                merged_op.categories.append(f(category_list))
            return merged_op
        
        elif first_op.op_type == OperatorType.CAT_C_CAT:
            merged_op = CAT_C_CAT_Merged_OP(first_op)
            for idx, mapping in enumerate(first_op.mappings):
                sub_equation = self.equation.rhs.subs(
                    {
                        self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                        for sym_name in self.parameter_values[idx]
                    }
                )
                f = lambdify(self.symbols["x"], sub_equation, "numpy")   
                merged_op.mappings.append(Series(f(mapping), index=mapping.index))
            return merged_op
        
        elif first_op.op_type == OperatorType.EXPAND:
            merged_op = EXPAND_Merged_OP(first_op)
            merged_op.mapping = first_op.mapping
            for idx, col in enumerate(first_op.mapping.columns):
                sub_equation = self.equation.rhs.subs(
                    {
                        self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                        for sym_name in self.parameter_values[idx]
                    }
                )
                f = lambdify(self.symbols["x"], sub_equation, "numpy")   
                merged_op.mapping[col] = f(merged_op.mapping[col])
            return merged_op
        
        else:
            return None

    def simply(self, second_op: Operator):
        if second_op.op_type == OperatorType.CON_A_CON:
            merged_op = CON_A_CON_Merged_OP(second_op)
            merged_op.equation = Eq(
                second_op.equation.lhs,
                second_op.equation.rhs.subs(
                    {second_op.symbols["x"]: self.equation.rhs}
                ),
            )
            merged_op.symbols = {**second_op.symbols, **self.symbols}
            merged_op.parameter_values = [
                {**second_op.parameter_values[idx], **self.parameter_values[idx]}
                for idx in range(len(self.parameter_values))
            ]
            return merged_op

        elif second_op.op_type == OperatorType.CON_C_CAT:
            merged_op = CON_C_CAT_Merged_OP(second_op)
            merged_op.categories = second_op.categories
            reversed_equation = solve(self.equation, self.symbols["x"])[0]
            for idx, bin_edge in enumerate(second_op.bin_edges):
                sub_equation = reversed_equation.subs(
                    {
                        self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                        for sym_name in self.parameter_values[idx]
                    }
                )
                f = lambdify(self.symbols["y"], sub_equation, "numpy")
                merged_op.bin_edges.append(f(bin_edge))
            return merged_op

        else:
            return None

    def get_sql(self, dbms: str):
        sqls = []
        for idx in range(len(self.features)):
            sub_equation = self.equation.rhs.subs(
                {
                    self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                    for sym_name in self.parameter_values[idx]
                }
            )
            feature_sql = (
                str(sub_equation).replace(
                    "x", DBMSUtils.get_delimited_col(dbms, self.features[idx])
                )
                + f" AS {DBMSUtils.get_delimited_col(dbms, self.features[idx])}"
            )
            sqls.append(feature_sql)

        return ",".join(sqls)
    
    
    def modify_leaf(self, feature, op, thr):
        reversed_equation = solve(self.equation, self.symbols["x"])[0]
        idx = self.features_out.index(feature)
        sub_equation = reversed_equation.subs(
            {
                self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                for sym_name in self.parameter_values[idx]
            }
        )
        thr = sub_equation.subs(self.symbols['y'], thr)
        return feature, op, thr
    
    def modify_leaf_p(self, feature, op, thr):
        equation = self.equation.rhs.subs(
            {
                self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                for sym_name in self.parameter_values[idx]
            }
        )
        feature_sql = str(equation).replace('x', f'{DBMSUtils.get_delimited_col(DBMS, feature)}') + ' '
        return feature_sql, op, thr


class CON_C_CAT(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.input_data_type = DataType.CON
        self.output_data_type = DataType.CAT
        self.calculation_type = CalculationType.COMPARISON
        self.op_type = OperatorType[self._get_op_type()]

        self.bin_edges: list = []
        self.n_bins: list = []
        self.categories: list = []

    def __judge_feature_value(self, x, feature_idx):
        for i in range(self.n_bins[feature_idx]):
            if (
                x >= self.bin_edges[feature_idx][i]
                and x <= self.bin_edges[feature_idx][i + 1]
            ):
                return self.categories[feature_idx][i]

    def apply(self, first_op: Operator):
        if first_op.op_type == OperatorType.EXPAND:
            merged_op = EXPAND_Merged_OP(first_op)
            merged_op.mapping = first_op.mapping
            for idx, column in enumerate(merged_op.mapping.columns):
                merged_op.mapping[column] = merged_op.mapping[column].apply(
                    lambda x: self.__judge_feature_value(x, idx)
                )

            return merged_op

        elif first_op.op_type == OperatorType.CON_C_CAT:
            merged_op = CON_C_CAT_Merged_OP(first_op)
            merged_op.bin_edges = first_op.bin_edges    
            vectorized_function = vectorize(self.__judge_feature_value)
            for idx, category_list in self.categories:
                merged_op.categories.append(vectorized_function(category_list, idx))

            return merged_op

        elif first_op.op_type == OperatorType.CAT_C_CAT:
            merged_op = CAT_C_CAT_Merged_OP(first_op)
            vectorized_function = vectorize(self.__judge_feature_value)
            for idx, mapping in first_op.mappings:
                merged_op.mappings.append(Series(vectorized_function(mapping.values, idx)), index=mapping.index)

        else:
            return None

    def simply(self, second_op: Operator):
        if second_op.op_type == OperatorType.EXPAND:
            merged_op = EXPAND_Merged_OP(second_op)
            merged_op.mapping = second_op.mapping
            intervals = [(self.bin_edges[0][i], self.bin_edges[0][i+1]) for i in range(self.n_bins[0])]
            interval_cat_map = Series(self.categories[0], index=intervals)
            cat_interval_map = interval_cat_map.groupby(interval_cat_map).apply(
                lambda x: x.index.tolist()
            )
            merged_op.con_c_cat_mapping = cat_interval_map

            return merged_op

        else:
            return None

    def get_cost_info(self):
        for idx in range(len(self.features)):
            op_cost = CON_C_CATCost()
            for path_cost in range(1,len(self.n_bins[idx])+1):
                op_cost.set_cost(path_cost)
            self.cost.append(op_cost)
        return self.cost

    def get_stats(self,dbms:str):
        pass

    def get_sql(self, dbms: str):
        sqls = []

        for idx in range(len(self.features)):
            feature_sql = "CASE "
            for i in range(self.n_bins[idx] - 1):
                feature_sql += (
                    f"WHEN {DBMSUtils.get_delimited_col(dbms, self.features[idx])} >= {self.bin_edges[idx][i]}"
                    + " AND "
                    + f"{DBMSUtils.get_delimited_col(dbms, self.features[idx])} < {self.bin_edges[idx][i+1]} THEN {self.categories[idx][i]} "
                )
            feature_sql += f"ELSE {self.bin_edges[idx][-1]} END AS {DBMSUtils.get_delimited_col(dbms, self.features[idx])} "
            sqls.append(feature_sql)

        return ",".join(sqls)

    def modify_leaf(self, feature, op, thr):
        bin_edge = self.bin_edges[self.features_out.index(feature)]
        categoiry_list = self.categories[self.features_out.index(feature)]
        intervals = []
        for i, category in enumerate(categoiry_list):
            if category <= thr:
                intervals.append((bin_edge[i], bin_edge[i+1]))
        merged_intervals = merge_intervals(intervals)

        condition_sqls = []
        for interval in merged_intervals:
            condition_sql += (
                f"{DBMSUtils.get_delimited_col(DBMS, feature)} >= {interval[0]}"
                + " AND "
                + f"{DBMSUtils.get_delimited_col(DBMS, feature)} < {interval[1]}"
            )
            condition_sqls.append(condition_sql)

        return ' OR '.join(condition_sqls), '', ''

    def modify_leaf_p(self, feature, op, thr):
        idx = self.features_out.index(feature)
        feature_sql = "CASE "
        for i in range(self.n_bins[idx] - 1):
            feature_sql += (
                f"WHEN {DBMSUtils.get_delimited_col(DBMS, self.features[idx])} >= {self.bin_edges[idx][i]}"
                + " AND "
                + f"{DBMSUtils.get_delimited_col(DBMS, self.features[idx])} < {self.bin_edges[idx][i+1]} THEN {self.categories[idx][i]} "
            )
        feature_sql += f"ELSE {self.bin_edges[idx][-1]} END "
        
        return feature_sql, op, thr


class CON_C_CAT_Merged_OP(CON_C_CAT):

    def __init__(self, op: Type[CON_C_CAT]):
        super().__init__(OperatorName.CON_C_CAT_Merged_OP)
        self.n_bins = op.n_bins
        self.categories = op.categories
        self.features = op.features
        self.features_out = op.features_out

    def _extract(self, fitted_transform) -> None:
        pass


class EXPAND_Merged_OP(EXPAND):

    def __init__(self, op: Type[EXPAND]):
        super().__init__(OperatorName.EXPAND_Merged_OP)
        self.features = op.features
        self.features_out = op.features_out

    def _extract(self, fitted_transform) -> None:
        pass


class CON_A_CON_Merged_OP(CON_A_CON):

    def __init__(self, op: Type[CON_A_CON]):
        super().__init__(OperatorName.CON_A_CON_Merged_OP)
        self.features = op.features
        self.features_out = op.features_out

    def _extract(self, fitted_transform) -> None:
        pass


class CAT_C_CAT_Merged_OP(CAT_C_CAT):

    def __init__(self, op: Type[CAT_C_CAT]):
        super().__init__(OperatorName.CAT_C_CAT_Merged_OP)
        self.features = op.features
        self.features_out = op.features_out

    def _extract(self, fitted_transform) -> None:
        pass
