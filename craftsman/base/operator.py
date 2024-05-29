from __future__ import annotations
from abc import ABC, abstractmethod
from pandas import DataFrame, Series
from craftsman.base.defs import DataType, CalculationType, OperatorType, OperatorName

class SQLOperator(ABC):

    def __init__(self, op_name: OperatorName):
        self.op_name: OperatorName = op_name
        self.input_data_type: DataType
        self.output_data_type: DataType
        self.calculation_type: CalculationType
        self.op_type: OperatorType
        self.feature: str
    

    @abstractmethod
    def apply(self, first_op: SQLOperator):
        """constant propagation
        Args:
            first_op (SQLOperator): _description_
        """
     

    @abstractmethod
    def simply(self, second_op: SQLOperator):
        """algebraic simplification

        Args:
            second_op (SQLOperator): _description_
        """


    @abstractmethod
    def _abstract(self, fitted_transform) -> None:
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





class CAT_C_CAT(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.mapping: Series
        




class EXPAND(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)
        self.mapping: DataFrame | Series
        

        

class CON_A_CON(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)




class CON_C_CAT(SQLOperator):

    def __init__(self, op_name: OperatorName):
        super().__init__(op_name)