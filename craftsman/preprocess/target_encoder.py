from pandas import DataFrame, Series

from craftsman.base.operator import CAT_C_CAT
from craftsman.base.defs import OperatorName

class TargetEncoderSQLOperator(CAT_C_CAT):

    def __init__(self, featrues: list[str], fitted_transform):
        super().__init__(OperatorName.TARGETENCODER)
        self.features = featrues
        self._extract(fitted_transform)


    def _extract(self, fitted_transform) -> None:
        for feature in self.features:
            self.features_out.append(feature)
            target_mapping = fitted_transform.mapping[feature]
            oe = fitted_transform.ordinal_encoder
            for m in oe.mapping:
                if m['col'] == feature:
                    oe_mapping = m['mapping']
                    break
            self.mappings.append(Series(target_mapping[oe_mapping], index=oe_mapping.index))


    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        return input_data.columns
