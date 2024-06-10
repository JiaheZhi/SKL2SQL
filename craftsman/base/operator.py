from __future__ import annotations
from abc import ABC, abstractmethod
from typing import Type

from numpy import vectorize
from pandas import DataFrame, Series
from sympy import Eq, solve, lambdify
from craftsman.base.defs import DataType, CalculationType, OperatorType, OperatorName
from craftsman.utility.dbms_utils import DBMSUtils
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

        return None
    
    def get_cost(self):
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

    def get_cost(self):
        pass

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
                    and_str = " OR ".join(
                        [
                            self.con_c_cat_mapping[c].format(
                                DBMSUtils.get_delimited_col(dbms, feature),
                                DBMSUtils.get_delimited_col(dbms, feature)
                            )
                            for c in categories_list[enc_value]
                        ]
                    )
                    col_sql += f"WHEN {and_str} THEN {enc_value} "
            col_sql += f"ELSE {categories_list.index.tolist()[-1]} END AS {DBMSUtils.get_delimited_col(dbms, col)}"
            sqls.append(col_sql)

        return ",".join(sqls)

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
                merged_op.bin_edges.append(bin_edge)
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
            merged_op.con_c_cat_mapping = Series(
                [
                    "{}"
                    + f" >= {self.bin_edges[0][i]}"
                    + " and "
                    + "{}"
                    + f" <= {self.bin_edges[0][i + 1]}"
                    for i in range(len(self.categories[0]))
                ],
                index=self.categories[0],
            )
            return merged_op

        else:
            return None

    def get_cost(self):
        for idx in range(len(self.features)):
            op_cost = CON_C_CATCost()
            for path_cost in range(1,len(self.n_bins[idx])+1):
                op_cost.set_cost(path_cost)
            self.cost.append(op_cost)
        return self.cost

    def get_sql(self, dbms: str):
        sqls = []

        for idx in range(len(self.features)):
            feature_sql = "CASE "
            for i in range(self.n_bins[idx]):
                feature_sql += f"WHEN {DBMSUtils.get_delimited_col(dbms, self.features[idx])} >= {self.bin_edges[idx][i]} AND {DBMSUtils.get_delimited_col(dbms, self.features[idx])} <= {self.bin_edges[idx][i+1]} THEN {self.categories[idx][i]} "
            feature_sql += (
                f"END AS {DBMSUtils.get_delimited_col(dbms, self.features[idx])} "
            )
            sqls.append(feature_sql)

        return ",".join(sqls)


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
