from pandas import DataFrame, Series
import numpy as np

from craftsman.base.operator import CAT_C_CAT
from craftsman.base.defs import OperatorName

class OrdinalEncoderSQLOperator(CAT_C_CAT):

    def __init__(self, featrues: list[str], fitted_transform):
        super().__init__(OperatorName.ORDINALENCODER)
        self.features = featrues
        self._extract(fitted_transform)


    def _extract(self, fitted_transform) -> None:
        
        for idx, feature in enumerate(self.features):
            self.features_out.append(feature)
            categories = fitted_transform.categories_[idx]
            encs = fitted_transform.transform(categories.reshape(-1, 1))
            self.mappings.append(Series(np.array(encs).reshape(-1)  ,index=categories)) 


    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        return input_data.columns
    
