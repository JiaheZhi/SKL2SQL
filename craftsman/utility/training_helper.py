import re
import importlib

import numpy as np
import pandas as pd
from sklearn.impute import SimpleImputer
from sklearn.compose import ColumnTransformer
from sklearn.preprocessing import LabelEncoder
from scipy import sparse
from category_encoders import TargetEncoder

from craftsman.base.defs import PREPROCESS_PACKAGE_PATH


def train_pipeline(train_data_path, preprocessors: dict, model_type):
    pass


class CraftsmanColumnTransformer(ColumnTransformer):

    def __init__(
        self,
        transformers,
        input_data,
        *,
        remainder="drop",
        sparse_threshold=0.3,
        n_jobs=None,
        transformer_weights=None,
        verbose=False,
        verbose_feature_names_out=True,
    ):
        super().__init__(
            transformers,
            remainder=remainder,
            sparse_threshold=sparse_threshold,
            n_jobs=n_jobs,
            transformer_weights=transformer_weights,
            verbose=verbose,
            verbose_feature_names_out=verbose_feature_names_out,
        )
        self.feature_names_in_: list[str]
        self.feature_names_out_: list[str]
        self.input_data = None

        self.__init_transform_data_columns(input_data)

    def __camel_to_snake(self, name: str):
        s1 = re.sub("(.)([A-Z][a-z]+)", r"\1_\2", name)
        return re.sub("([a-z0-9])([A-Z])", r"\1_\2", s1).lower()

    def __init_transform_data_columns(self, input_data: pd.DataFrame):
        self.feature_names_in_ = input_data.columns.tolist()
        self.feature_names_out_ = []
        features_trans = []
        for idx, (trans_name, fitted_trans, trans_features) in enumerate(
            self.transformers
        ):
            module_name = self.__camel_to_snake(trans_name.split("_")[0])
            transform_module = importlib.import_module(
                PREPROCESS_PACKAGE_PATH + module_name
            )
            operator_class = getattr(
                transform_module, trans_name.split("_")[0] + "SQLOperator"
            )

            # replace the trans_features for the last expand operator
            new_trans_features = []
            for feature in trans_features:
                if feature in self.feature_names_in_:
                    new_trans_features.append(feature)
                else:
                    after_expand_features = [
                        f_in for f_in in self.feature_names_in_ if feature in f_in
                    ]
                    new_trans_features.extend(after_expand_features)

            features_trans.extend(new_trans_features)
            self.transformers[idx] = (trans_name, fitted_trans, new_trans_features)
            self.feature_names_out_.extend(
                operator_class.trans_feature_names_in(input_data[new_trans_features])
            )

        features_remain = [
            feature
            for feature in self.feature_names_in_
            if feature not in features_trans
        ]
        self.feature_names_out_.extend(features_remain)

    def fit(self, X, y=None):
        X = pd.DataFrame(X, columns=self.feature_names_in_)
        return super().fit(X, y)

    def transform(self, X):
        X = pd.DataFrame(X, columns=self.feature_names_in_)
        trans_data = super().transform(X)
        if isinstance(trans_data, sparse.spmatrix):
            return pd.DataFrame(trans_data.toarray(), columns=self.feature_names_out_)
        else:
            return pd.DataFrame(trans_data, columns=self.feature_names_out_)

    def fit_transform(self, X, y=None):
        X = pd.DataFrame(X, columns=self.feature_names_in_)
        trans_data = super().fit_transform(X, y)
        if isinstance(trans_data, sparse.spmatrix):
            return pd.DataFrame(trans_data.toarray(), columns=self.feature_names_out_)
        else:
            return pd.DataFrame(trans_data, columns=self.feature_names_out_)


class CraftsmanSimpleImputer(SimpleImputer):
    def __init__(
        self,
        *,
        missing_values=np.nan,
        strategy="mean",
        fill_value=None,
        copy=True,
        add_indicator=False,
        keep_empty_features=False,
    ):
        super().__init__(
            missing_values=missing_values,
            strategy=strategy,
            fill_value=fill_value,
            copy=copy,
            add_indicator=add_indicator,
            keep_empty_features=keep_empty_features,
        )
        self.cols: list[str]
        self.missing_cols: list[str]
        self.missing_col_indexs: list[int]

    def fit(self, X, y=None, **fit_params):
        self.cols = X.columns.tolist()
        # indentify the columns which have the missing values
        missing_values = X.isnull().any()
        missing_columns = missing_values[missing_values].index.to_list()
        self.missing_cols = missing_columns
        self.missing_col_indexs = [self.cols.index(col) for col in self.missing_cols]
        super().fit(X, y)
        return self

    def transform(self, X, y=None, **fit_params):
        imputed_X = super().transform(X)
        return pd.DataFrame(imputed_X, columns=self.cols)

    def fit_transform(self, X, y=None, **fit_params):
        self.cols = X.columns.tolist()
        # indentify the columns which have the missing values
        missing_values = X.isnull().any()
        missing_columns = missing_values[missing_values].index.to_list()
        self.missing_cols = missing_columns
        self.missing_col_indexs = [self.cols.index(col) for col in self.missing_cols]
        imputed_X = super().fit_transform(X, y)
        return pd.DataFrame(imputed_X, columns=self.cols)


class CraftsmanLabelEncoder(LabelEncoder):

    def __init__(self) -> None:
        super().__init__()

    def fit(self, X, y=None):
        super().fit(X)

    def transform(self, X, y=None):
        trans_data = super().transform(X).reshape(-1, 1)
        return pd.DataFrame(trans_data)

    def fit_transform(self, X, y=None, **fit_params):
        trans_data = super().fit_transform(X).reshape(-1, 1)
        return pd.DataFrame(trans_data)


class CraftsmanTargetEncoder(TargetEncoder):

    def __init__(
        self, verbose=0, cols=None, drop_invariant=False, return_df=True, handle_missing='value',
                 handle_unknown='value', min_samples_leaf=20, smoothing=10, hierarchy=None
    ):
        super().__init__(
            verbose=verbose,
            cols=cols,
            drop_invariant=drop_invariant,
            return_df=return_df,
            handle_missing=handle_missing,
            handle_unknown=handle_unknown,
            min_samples_leaf=min_samples_leaf,
            smoothing=smoothing,
            hierarchy=hierarchy,
        )

    def fit(self, X, y=None, **kwargs):
        X = pd.DataFrame(X)
        non_string_columns = X.select_dtypes(exclude=['object']).columns
        X[non_string_columns] = X[non_string_columns].astype(str)
        super().fit(X, y, **kwargs)
        return self

    def transform(self, X, y=None, override_return_df=False):
        X = pd.DataFrame(X)
        trans_data = super().transform(X, y, override_return_df=override_return_df)
        return pd.DataFrame(trans_data)

    def fit_transform(self, X, y=None, **fit_params):
        X = pd.DataFrame(X)
        non_string_columns = X.select_dtypes(exclude=['object']).columns
        self.non_string_columns = non_string_columns
        X[non_string_columns] = X[non_string_columns].astype(str)
        trans_data = super().fit_transform(X, y, **fit_params)
        return pd.DataFrame(trans_data)
