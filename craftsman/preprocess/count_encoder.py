from pandas import DataFrame

from craftsman.base.operator import CAT_C_CAT
from craftsman.base.defs import OperatorName

class CountEncoderSQLOperator(CAT_C_CAT):

    def __init__(self, featrues: list[str], fitted_transform):
        super().__init__(OperatorName.COUNTENCODER)
        self.features = featrues
        self._extract(fitted_transform)


    def _extract(self, fitted_transform) -> None:
        for feature in self.features:
            self.features_out.append(feature)
            count_mapping = fitted_transform.mapping[feature]
            self.mappings.append(count_mapping)


    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        return input_data.columns
