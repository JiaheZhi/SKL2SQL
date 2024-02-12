from sklearn.ensemble import GradientBoostingRegressor, GradientBoostingClassifier, RandomForestClassifier, RandomForestRegressor
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.linear_model import LogisticRegression, SGDRegressor, LinearRegression
from sklearn.neural_network import MLPClassifier, MLPRegressor
# from lightning.regression import SDCARegressor
from sklearn.compose import ColumnTransformer
from sklearn.pipeline import Pipeline
from sklearn.utils.validation import check_array
from sklearn.tree._tree import DTYPE
from sklearn.tree import DecisionTreeClassifier, DecisionTreeRegressor
from model_transformer.utility.loader import load_model
from model_transformer.preprocess.binary_encoder_transformer import BinaryEncoderSQL
from model_transformer.preprocess.std_scaler_transformer import StandardScalerSQL
from model_transformer.preprocess.one_hot_encoder_transformer import OneHotEncoderSQL
from model_transformer.preprocess.default_preprocess_transformer import DefaultPreprocessSQL
from model_transformer.preprocess.udf_transformer import UDFSQL
from model_transformer.preprocess.imputatation_transformer import ImputationSQL
from model_transformer.preprocess.equal_width_discretization_transformer import EqualWidthDiscretizationSQL
from model_transformer.model.decision_tree_transformer import DTMSQL
from model_transformer.model.random_forest_transformer import RFMSQL
from model_transformer.utility.dbms_utils import DBMSUtils

from sklearn.metrics import r2_score, accuracy_score, precision_score, recall_score, f1_score, mean_squared_error, \
    mean_absolute_error

import numpy as np


def f1_score_variant(y_true, y_pred):
    return f1_score(y_true, y_pred, average='macro')


def recall_score_variant(y_true, y_pred):
    return recall_score(y_true, y_pred, average='macro')


def precision_score_variant(y_true, y_pred):
    return precision_score(y_true, y_pred, average='macro')


class TransformerManager(object):
    model_types = {
        'GradientBoostingRegressor': GradientBoostingRegressor(max_leaf_nodes=20, n_estimators=100, min_samples_leaf=10,
                                                               learning_rate=0.2, random_state=24),
        'GradientBoostingClassifier': GradientBoostingClassifier(max_leaf_nodes=20, n_estimators=100,
                                                                 min_samples_leaf=10,
                                                                 learning_rate=0.2, random_state=24),
        'LogisticRegression': LogisticRegression(random_state=24),
        'SGDRegressor': SGDRegressor(),
        # 'SDCARegressor': SDCARegressor(),
        'DecisionTreeClassifier': DecisionTreeClassifier(max_depth=3, min_samples_leaf=10,
                                                         random_state=24),
        'DecisionTreeRegressor': DecisionTreeRegressor(max_depth=3, random_state=42),
        'RandomForestClassifier': RandomForestClassifier(max_depth=10, n_estimators=4, random_state=24),
        'RandomForestRegressor': RandomForestRegressor(max_depth=3, max_leaf_nodes=20, n_estimators=100,
                                                       min_samples_leaf=10, random_state=24),
        'MLPClassifier': MLPClassifier(hidden_layer_sizes=(5, 5, 5)),
        'MLPRegressor': MLPRegressor(hidden_layer_sizes=(5, 5, 5)),
        'LinearRegression': LinearRegression(),

    }

    transform_types = {
        'StandardScaler': StandardScaler(with_mean=False),
        'OneHotEncoder': OneHotEncoder(handle_unknown='ignore'),
    }

    sql_model_types = {
        # 'GradientBoostingRegressor': GBMSQL(),
        # 'GradientBoostingClassifier': GBMSQL(classification=True),
        # 'LogisticRegression': LogisticRegressionSQL(),
        # 'SGDRegressor': SGDModelSQL(),
        # 'SDCARegressor': SDCARegressorSQL(),
        'DecisionTreeClassifier': DTMSQL(classification=True),
        'DecisionTreeRegressor': DTMSQL(),
        'RandomForestClassifier': RFMSQL(classification=True),
        'RandomForestRegressor': RFMSQL(),
        # 'MLPClassifier': MLPSQL(classification=True),
        # 'MLPRegressor': MLPSQL(),
        # 'LinearRegression': LINRModelSQL()
    }

    sql_transform_types = {
        'StandardScaler': StandardScalerSQL(),
        'OneHotEncoder': OneHotEncoderSQL(),
        'DefaultPreprocess': DefaultPreprocessSQL(),
        'UDF': UDFSQL(),
        'Imputation': ImputationSQL(),
        'BinaryEncoder': BinaryEncoderSQL(),
        'EqualWidthDiscretization': EqualWidthDiscretizationSQL()
    }

    metric_types = {
        'accuracy_score': accuracy_score,
        'f1_score': f1_score_variant,
        'precision_score': precision_score_variant,
        'recall_score': recall_score_variant,
        'r2_score': r2_score,
        'mae': mean_absolute_error,
        'mse': mean_squared_error,
    }

    model_name = None
    transforms = []

    def select_model(self, model_name):
        if model_name not in self.model_types:
            raise ValueError('{} model isn\'t supported'.format(model_name))
        self.model_name = model_name

    def set_transforms(self, transforms):
        for transform in transforms:
            if 'transform_type' not in transform or 'transform_column' not in transform:
                raise TypeError('transform_column or transform_type aren\'t in transform dictionary')
            if transform['transform_type'] not in self.transform_types:
                raise ValueError('{} transform isn\'t supported'.format(transform.transform_type))

        self.transforms = transforms

    def add_transform(self, transform):
        self.transforms.append(transform)

    def clear_transform(self):
        self.transforms = []

    def _create_pipeline(self):

        transforms = {}
        for transform in self.transforms:
            if transform['transform_type'] not in transforms:
                # transforms[transform['transform_type']] = [transform['transform_column']]
                transforms[transform['transform_type']] = transform['transform_column']
            else:
                # transforms[transform['transform_type']].append(transform['transform_column'])
                transforms[transform['transform_type']] += transform['transform_column']

        pipeline_transforms = []
        for k, val in transforms.items():
            pipeline_transforms.append(
                (k, self.transform_types[k], val)
            )

        pipeline_transforms = sorted(pipeline_transforms, key=lambda x: x[0], reverse=True)

        pipeline_transforms = ('pipeline_transforms',
                               ColumnTransformer(remainder='passthrough',
                                                 transformers=pipeline_transforms))

        pipeline_estimator = (self.model_name, self.model_types[self.model_name])

        pipeline = Pipeline(steps=[pipeline_transforms, pipeline_estimator])
        return pipeline

    @staticmethod
    def extract_pipeline(pipeline, preprocessors=None):
        model_name, trained_model = pipeline.steps[1]
        transforms = []

        if preprocessors is not None:
            for key in preprocessors: 
                transforms.append({
                    'transform_name': key,
                    'transform_features': preprocessors[key],
                })

        for idx in range(len(pipeline.steps[0][1].transformers)):
            a, b, c = pipeline.steps[0][1].transformers_[idx]
            transforms.append({
                'transform_name': a,
                'fitted_transform': b,
                'transform_features': c,
            })

        return {
            'model': {
                'model_name': model_name,
                'trained_model': trained_model
            },
            'transforms': transforms
        }

    @staticmethod
    def extract_pipeline_components(pipeline, expand=False):
        model_name, _ = pipeline.steps[1]
        transforms = []
        for idx in range(len(pipeline.steps[0][1].transformers)):
            a, _, c = pipeline.steps[0][1].transformers_[idx]

            if expand:
                # Single transformer for each selected features
                for col in c:
                    transforms.append({
                        'transform_type': a,
                        'transform_column': col,
                    })
            else:
                # One transformer type for a set of selected features
                transforms.append({
                    'transform_type': a,
                    'transform_column': c,
                })

        return {
            'model': model_name,
            'transforms': transforms
        }

    def _check_fitted_pipeline(self, pipeline, X):

        # Sklearn's GradientBoostingClassifier adds to the final score (i.e., the weighted sum of the tree scores) an
        # init score.
        # This part has not been implemented in SQL, but this score has been added to the final query as an offset.

        # retrieve the Sklearn's GradientBoostingClassifier init score
        if self.model_name.startswith("GradientBoosting"):
            model = pipeline[self.model_name]

            transformers = pipeline["pipeline_transforms"]
            transformed_data = transformers.transform(X)

            transformed_data = check_array(transformed_data, dtype=DTYPE, order="C", accept_sparse='csr')
            init_score = model._raw_predict_init(transformed_data).ravel()[0]
            model.init_score = init_score

    def fit(self, X, y):
        if self.model_name is None:
            raise ValueError('model has not been selected')

        pipeline = self._create_pipeline()

        # if the model comes from the lightning library, y has to be a 2D array
        if self.model_name == "SDCARegressor":
            y = np.array(y).reshape(-1, 1)

        pipeline.fit(X, y)

        self._check_fitted_pipeline(pipeline, X)

        return pipeline

    @staticmethod
    def predict(X, model_data):
        model = load_model(model_data)
        y_pred = model.predict(X)
        return y_pred

    def generate_query(self, model_data, dataset_name, features, dbms, optimization=False, scaler_optimization=False, preprocessors=None):
        model = load_model(model_data)
        pipeline = self.extract_pipeline(model, preprocessors)
        input_table = dataset_name

        opt = Optimizer(pipeline, features, optimization, dbms, scaler_optimization)
        pipeline = opt.optimize()

        # create an SQL query for each transformer
        sql_transformers = pipeline["transforms"]
        preliminary_queries = []
        for sql_transformer in sql_transformers:
            transf_pre_queries, transformation_query = sql_transformer.query(input_table)
            if transf_pre_queries is not None:
                preliminary_queries += transf_pre_queries

            # the input table for the possible next transformer is the output of the current transformer
            input_table = "({}) AS data".format(transformation_query)

        # create the SQL query that performs the model inference
        model = pipeline['model']
        fitted_model = model["trained_model"]
        model_sql_wrapper = model['model_sql_wrapper']
        assert 'model_features' in model
        if model['model_features'] is not None:
            features = model['model_features']

        model_pre_queries, query = model_sql_wrapper.query(fitted_model, features, input_table)

        queries = preliminary_queries.copy()
        out_query = ''
        for pre_q in preliminary_queries:
            out_query += f'{pre_q}\n'
        if model_pre_queries is not None:
            out_query += '\n'.join(model_pre_queries)
            queries += model_pre_queries
        out_query += query
        queries.append(query)

        return queries, out_query

    def evaluate(self, metric, labels, predictions):
        if metric not in self.metric_types:
            raise ValueError('metric {} is not defined'.format(metric))

        res = self.metric_types[metric](labels, predictions)
        return res


class Optimizer(object):
    def __init__(self, pipeline: dict, features: list, optimization: bool, dbms: str, scaler_optimization: bool):
        assert isinstance(pipeline, dict)
        assert 'model' in pipeline
        assert 'transforms' in pipeline
        assert 'model_name' in pipeline['model']
        assert 'trained_model' in pipeline['model']
        assert isinstance(pipeline['transforms'], list)
        assert isinstance(features, list)
        assert len(features) > 0
        for f in features:
            assert isinstance(f, str)
        assert isinstance(optimization, bool)
        assert isinstance(dbms, str)

        self.pipeline = pipeline
        self.features = features

        self.transformers = self.pipeline["transforms"]
        self.model = self.pipeline['model']
        self.transformer_names = [transformer["transform_name"] for transformer in self.transformers]
        self.model_name = self.model["model_name"]
        self.tree_based_model_keys = ['Gradient', 'Tree', 'Forest']

        self.ml_manager = TransformerManager()
        self.optimization = optimization
        self.scaler_optimization = scaler_optimization
        self.udf_need_gen_preprocess = True
        self.udf_need_merge = False

        if self.optimization:
            print("OneHot Optimizer enabled.")
        else:
            print("OneHot Optimizer disabled.")
        
        if self.scaler_optimization:
            print("Scaler Optimizer enabled.")
        else:
            print("Scaler Optimizer disabled.")

        self.dbms = dbms

    def optimize(self):

        out_pipeline = self.pipeline.copy()
        features = self.features

        # if the optimization is enabled then check if the operator fusion can be applied
        transformers_to_merge = []
        if self.optimization:
            # if the pipeline includes an OneHotEncoder and a tree-based model then apply the one-hot encoding directly
            # in the decision tree rules
            if 'OneHotEncoder' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('OneHotEncoder')
        
        if self.scaler_optimization:
            # if the pipeline includes an StandardScaler and a tree-based model then apply the StandardScaler directly
            # in the decision tree rules and simplified
            if 'StandardScaler' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('StandardScaler')
        
        
        for transform in out_pipeline['transforms']:
            if transform['transform_name'] == 'UDF':
                transform_features = transform['transform_features']
                merge_num = 0
                for attr_name in transform_features:
                    if transform_features[attr_name]['is_merge']:
                        merge_num += 1
                if merge_num == len(transform_features):
                    self.udf_need_gen_preprocess = False
                    self.udf_need_merge = True
                elif merge_num < len(transform_features) and merge_num > 0:
                    self.udf_need_merge = True     
        
        if self.udf_need_merge:
            # if the pipeline includes an udf and a tree-based model then apply the udf directly
            # in the decision tree rules and simplified
            if 'UDF' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('UDF')
                
        
        # get the fitted transformers from the pipeline
        prev_transform_features = []
        new_transformers = []
        sql_transformers_to_merge = []
        for transformer in self.transformers:
            transformer_name = transformer["transform_name"]
            if "fitted_transform" in transformer:
                fitted_transformer = transformer["fitted_transform"]
            else:
                fitted_transformer = None
            transformer_features = transformer["transform_features"]

            # retrieve the SQL wrapper related to the current transformer and extract its fitted params
            transformer_sql_wrapper = self.ml_manager.sql_transform_types[transformer_name]
            transformer_params = transformer_sql_wrapper.get_params(fitted_transformer, transformer_features,
                                                                    features, prev_transform_features)
            features = transformer_params["out_all_features"]

            # transformers that have to be merged with the model are ignored in this phase
            if transformer_name not in transformers_to_merge or (transformer_name == 'UDF' and self.udf_need_gen_preprocess):
                transformer_sql_wrapper.set_dbms(self.dbms)
                new_transformers.append(transformer_sql_wrapper)

            if transformer_name in transformers_to_merge:
                sql_transformers_to_merge.append((transformer_name, transformer_sql_wrapper, transformer_params))
            

            prev_transform_features = transformer_params["out_transform_features"][:]
        # if all the preprocess is fusion to the tree, then use the deafaultpreprecess to select all needed attributes
        if not new_transformers:
            transformer_sql_wrapper = self.ml_manager.sql_transform_types['DefaultPreprocess']
            transformer_sql_wrapper.get_params(self.features)
            transformer_sql_wrapper.set_dbms(self.dbms)
            new_transformers.append(transformer_sql_wrapper)


        # get the fitted model from the pipeline and retrieve its SQL wrapper
        fitted_model = self.model["trained_model"]
        model_sql_wrapper = self.ml_manager.sql_model_types[self.model_name]
        model_sql_wrapper.set_dbms(self.dbms)

        # if the onehot optimization is enabled then check if the sparse implementation can be applied
        sparse = False
        if self.optimization:
            # check if the number of features generated after the application of the transformers has reached dbms
            # limits; this is checked in particular for models based on linear combination of the features where
            # expression limits may be exceeded
            # for the moment only the OneHotEncoder transformer supports the sparse implementation
            linear_models = ['LogisticRegression', 'SGDRegressor', 'LinearRegression']
            if self.model_name in linear_models and any(['OneHotEncoder' in str(type(nt)) for nt in new_transformers]):
                dbms_limit = DBMSUtils.get_expression_limits(self.dbms)
                if dbms_limit is not None and len(features) > dbms_limit:
                    sparse = True
                    print("Sparse implementation enabled.")

        # if dbms limits are reached then set the sparse implementation for some transformers and for the model
        # in the opposite case enable dense modality for all the pipeline components
        for nt in new_transformers:
            if 'OneHotEncoder' in str(type(nt)):
                if sparse:
                    nt.set_mode('sparse')
                    features = nt.get_table_cols()
                else:
                    nt.set_mode('dense')
        if sparse:
            model_sql_wrapper.set_mode('sparse')
        else:
            model_sql_wrapper.set_mode('dense')

        # if no operator can be merged or the sparse implementation is active then disable the operator fusion
        # optimization
        if len(sql_transformers_to_merge) == 0 or sparse:
            model_sql_wrapper.reset_optimization()

        # if there are operators to merge and the sparse implementation is disabled then merge the previously
        # selected transformers with the model
        if len(sql_transformers_to_merge) > 0 and not sparse:
            for sql_transf_to_merge in sql_transformers_to_merge:
                transf_name = sql_transf_to_merge[0]
                transf_sql = sql_transf_to_merge[1]
                transf_params = sql_transf_to_merge[2]

                if transf_name == 'OneHotEncoder':
                    print("OneHot Operator fusion enabled.")
                    model_sql_wrapper.merge_ohe_with_trees(transf_params['ohe_encoding'])
                
                if transf_name == 'StandardScaler':
                    print("StandardScaler Operator fusion enabled.")
                    model_sql_wrapper.merge_scaler_with_trees(transf_params)
                
                if transf_name == 'UDF':
                    print("UDF Operator fusion enabled.")
                    model_sql_wrapper.merge_udf_with_trees(transf_params)

        if self.optimization:
            if self.dbms == 'sqlserver' and any([key in self.model_name for key in self.tree_based_model_keys]):
                if 'estimators_' in dir(fitted_model):
                    if isinstance(fitted_model.estimators_, np.ndarray):
                        depth = np.max([tree.tree_.max_depth for estimator in fitted_model.estimators_ for tree in
                                        estimator])
                    else:
                        depth = np.max([estimator.tree_.max_depth for estimator in fitted_model.estimators_])
                else:
                    depth = fitted_model.tree_.max_depth
                if depth > 10:
                    model_sql_wrapper.set_flat_implementation()

        new_model = {
            'trained_model': fitted_model,
            'model_sql_wrapper': model_sql_wrapper,
            'model_features': features,
        }

        out_pipeline['transforms'] = new_transformers
        out_pipeline['model'] = new_model

        return out_pipeline
