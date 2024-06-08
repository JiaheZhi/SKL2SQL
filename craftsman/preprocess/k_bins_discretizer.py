from pandas import DataFrame
from numpy import array

from craftsman.base.operator import CON_C_CAT
from craftsman.base.defs import OperatorName

class KBinsDiscretizerSQLOperator(CON_C_CAT):

    def __init__(self, featrues: list[str], fitted_transform):
        super().__init__(OperatorName.KBINSDISCRETIZER)
        self.features = featrues
        self._extract(fitted_transform)


    def _extract(self, fitted_transform) -> None:  
        self.strategy = fitted_transform.strategy
        for feature in self.features:
            self.features_out.append(feature)
            feature_idx = fitted_transform.feature_names_in_.tolist().index(feature)
            self.bin_edges.append(fitted_transform.bin_edges_[feature_idx])
            self.n_bins.append(fitted_transform.n_bins_[feature_idx])
            self.categories.append(array(list(range(1, fitted_transform.n_bins_[feature_idx] + 1))))


    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        return input_data.columns
