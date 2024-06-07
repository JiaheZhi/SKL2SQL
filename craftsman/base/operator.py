from __future__ import annotations
from abc import ABC, abstractmethod
from typing import Type, Union

from pandas import DataFrame, Series
from sympy import Eq, solve, lambdify
from craftsman.base.defs import DataType, CalculationType, OperatorType, OperatorName
from craftsman.utility.dbms_utils import DBMSUtils


class SQLOperator(ABC):

    def __init__(self, op_name: OperatorName):
        self.op_name: OperatorName = op_name
        self.input_data_type: DataType
        self.output_data_type: DataType
        self.calculation_type: CalculationType
        self.op_type: OperatorType
        self.features: list[str]
        self.features_out: list[str] = []

    @abstractmethod
    def apply(self, first_op: OperationType):
        """constant propagation
        Args:
            first_op (SQLOperator): _description_
        """

    @abstractmethod
    def simply(self, second_op: OperationType):
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


class CAT_C_CAT(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.input_data_type = DataType.CAT
        self.output_data_type = DataType.CAT
        self.calculation_type = CalculationType.COMPARISON
        self.op_type = OperatorType[self._get_op_type()]

        self.mappings: list[Series] = []

    def apply(self, first_op: OperationType):
        return None

    def simply(self, second_op: OperationType):
        return None

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

    def apply(self, first_op: OperationType):
        return None

    def simply(self, second_op: OperationType):
        return None

    def get_sql(self, dbms: str):
        sqls = []
        feature = self.features[0]
        for col in self.mapping.columns:
            col_sql = "CASE "
            col_mapping = self.mapping[col]
            categories_list = col_mapping.groupby(col_mapping).apply(
                lambda x: x.index.tolist()
            )
            sorted_categories_list = categories_list.apply(
                lambda x: len(x)
            ).sort_values(ascending=True)
            categories_list = categories_list.iloc[sorted_categories_list.index]
            for enc_value in categories_list.index.tolist()[:-1]:
                if len(categories_list[enc_value]) == 1:
                    col_sql += f"WHEN {DBMSUtils.get_delimited_col(dbms, feature)} = '{categories_list[enc_value][0]}' THEN {enc_value} "
                else:
                    in_str = ",".join([f"'{c}'" for c in categories_list[enc_value]])
                    col_sql += f"WHEN {DBMSUtils.get_delimited_col(dbms, feature)} in ({in_str}) THEN {enc_value} "
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

        self.accepted_secdond_op_types = [
            OperatorType.CON_A_CON,
            OperatorType.CON_C_CAT,
        ]

        self.equation: Eq
        self.symbols: dict = {}
        self.parameter_values: list = []

    def apply(self, first_op: OperationType):
        return None

    def simply(self, second_op: OperationType):
        if second_op.op_type in self.accepted_secdond_op_types:
            if second_op.op_type == OperatorType.CON_A_CON:
                return None
            elif second_op.op_type == OperatorType.CON_C_CAT:
                merged_op = CON_C_CAT_Merged_OP(second_op)
                reversed_equation = solve(self.equation, self.symbols["x"])[0]
                for idx in range(len(self.features)):
                    sub_equation = reversed_equation.subs(
                        {
                            self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                            for sym_name in self.parameter_values[idx]
                        }
                    )
                    f = lambdify(self.symbols["y"], sub_equation, "numpy")
                    merged_op.bin_edges.append(f(second_op.bin_edges[idx]))
                return merged_op

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

    def apply(self, first_op: OperationType):
        return None

    def simply(self, second_op: OperationType):
        return None

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

    def _extract(self, fitted_transform) -> None:
        pass


OperationType = Type[SQLOperator]
