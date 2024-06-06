from __future__ import annotations
from abc import ABC, abstractmethod
from typing import Type, Union

from pandas import DataFrame, Series
from sympy import Eq, solve, lambdify
from craftsman.base.defs import DataType, CalculationType, OperatorType, OperatorName


class SQLOperator(ABC):

    def __init__(self, op_name: OperatorName):
        self.op_name: OperatorName = op_name
        self.input_data_type: DataType
        self.output_data_type: DataType
        self.calculation_type: CalculationType
        self.op_type: OperatorType
        self.features: str | list[str]

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
                merged_op = CON_C_CAT_Merged_OP(OperatorName.CON_C_CAT_Merged_OP)
                merged_op.n_bins = second_op.n_bins
                merged_op.categories = second_op.categories
                reversed_equation = solve(self.equation, self.symbols["x"])[0]
                for idx in range(len(self.features)):
                    sub_equation = reversed_equation.subs(
                        {
                            self.symbols[sym_name]: self.parameter_values[idx][sym_name]
                            for sym_name in self.parameter_values[idx]
                        }
                    )
                    f = lambdify(self.symbols['y'], sub_equation, 'numpy')
                    merged_op.bin_edges.append(f(second_op.bin_edges[idx]))

                return merged_op


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


class CON_C_CAT_Merged_OP(CON_C_CAT):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        

    def _extract(self, fitted_transform) -> None:
        pass


OperationType = Type[SQLOperator]