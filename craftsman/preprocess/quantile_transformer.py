from pandas import DataFrame
from sympy import symbols, Eq

from craftsman.base.operator import CON_A_CON
from craftsman.base.defs import  OperatorName


class QuantileTransformerSQLOperator(CON_A_CON):
    """
    This class implements the SQL wrapper for a Sklearn QuantileTransformer object.
    """

    def __init__(self, featrues: list[str], fitted_transform):
        super().__init__(OperatorName.QUANTILETRANSFORMER)
        self.features = featrues
        self._extract(fitted_transform)

    def _extract(self, fitted_transform) -> None:
        n_quantiles_list = fitted_transform.n_quantiles_
        quantiles_list = fitted_transform.quantiles_  
        references_list = fitted_transform.references_       
        
        for feature in self.features:
            self.features_out.append(feature)
            feature_idx = fitted_transform.feature_names_in_.tolist().index(feature)
            self.parameter_values.append(
                {
                    "n_quantiles": n_quantiles_list[feature_idx],
                    "quantiles": quantiles_list[feature_idx],
                    "references": references_list[feature_idx]
                }
            )

        symbols_list = symbols("y x n_quantiles quantiles references")
        y, x, n_quantiles, quantiles, references = symbols_list
        self.symbols = {symb.name: symb for symb in symbols_list}   
        self.equation = Eq(y, (x - n_quantiles) / quantiles + references)

    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        return input_data.columns
