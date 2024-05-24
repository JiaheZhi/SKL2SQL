from sklearn.base import BaseEstimator, TransformerMixin
import pandas as pd

class NumpyToDataFrame(BaseEstimator, TransformerMixin):
    def __init__(self):
        self.cols=None

    def fit(self, X, y=None, **fit_params):
        return self

    def transform(self, X, y=None, **fit_params):
        return pd.DataFrame(X, columns=self.cols)

    def fit_transform(self, X, y=None, **fit_params):
        self.cols = fit_params['cols']
        return pd.DataFrame(X, columns=fit_params['cols'])
