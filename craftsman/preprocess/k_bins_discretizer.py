from pandas import DataFrame, Series

from craftsman.utility.dbms_utils import DBMSUtils
from craftsman.base.operator import CON_C_CAT, SQLOperator
from craftsman.utility.loader import load_dataset
from craftsman.base.defs import DataType, CalculationType, OperatorType, OperatorName

class KBinsDiscretizerSQLOperator(CON_C_CAT):

    def __init__(self, featrue: str, fitted_transform):
        super().__init__(OperatorName.KBINSDISCRETIZER)
        self.input_data_type = DataType.CAT
        self.output_data_type = DataType.CAT
        self.calculation_type = CalculationType.COMPARISON
        self.op_type = OperatorType[self._get_op_type()]
        self.feature = featrue

        self._abstract(fitted_transform)



    def _abstract(self, fitted_transform) -> None:
        self.strategy = fitted_transform.strategy
        self.bin_edges = fitted_transform.bin_edges_


    def apply(self, first_op: SQLOperator):
        pass
    

    def simply(self, second_op: SQLOperator):
        pass


    @staticmethod
    def trans_feature_names_in(input_data: DataFrame | Series):
        return input_data.columns
