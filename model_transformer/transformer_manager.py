from sklearn.ensemble import GradientBoostingRegressor, GradientBoostingClassifier, RandomForestClassifier, RandomForestRegressor
from sklearn.preprocessing import StandardScaler, OneHotEncoder, MinMaxScaler, LabelEncoder, OrdinalEncoder
from sklearn.linear_model import LogisticRegression, SGDRegressor, LinearRegression
from sklearn.neural_network import MLPClassifier, MLPRegressor
# from lightning.regression import SDCARegressor
from sklearn.tree import DecisionTreeClassifier, DecisionTreeRegressor
from model_transformer.utility.loader import load_model
from model_transformer.preprocess.binary_encoder_transformer import BinaryEncoderSQL
from model_transformer.preprocess.std_scaler_transformer import StandardScalerSQL
from model_transformer.preprocess.one_hot_encoder_transformer import OneHotEncoderSQL
from model_transformer.preprocess.default_preprocess_transformer import DefaultPreprocessSQL
from model_transformer.preprocess.udf_transformer import UDFSQL
from model_transformer.preprocess.imputatation_transformer import ImputationSQL
from model_transformer.preprocess.equal_width_discretization_transformer import EqualWidthDiscretizationSQL
from model_transformer.preprocess.minmax_scaler_transformer import MinMaxScalerSQL
from model_transformer.preprocess.label_encoder_transformer import LabelEncoderSQL
from model_transformer.preprocess.ordinal_encoder_transformer import OrdinalEncoderSQL
from model_transformer.preprocess.freqency_encoder_transformer import FrequencyEncoderSQL
from model_transformer.model.decision_tree_transformer import DTMSQL
from model_transformer.model.random_forest_transformer import RFMSQL
from model_transformer.utility.dbms_utils import DBMSUtils

import numpy as np


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
        'MinMaxScaler': MinMaxScaler(),
        'LabelEncoder': LabelEncoder(),
        'OrdinalEncoder': OrdinalEncoder()
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
        'EqualWidthDiscretization': EqualWidthDiscretizationSQL(),
        'MinMaxScaler': MinMaxScalerSQL(),
        'LabelEncoder': LabelEncoderSQL(),
        'OrdinalEncoder': OrdinalEncoderSQL(),
        'FrequencyEncoder': FrequencyEncoderSQL()
    }


    model_name = None
    transforms = []

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

    def generate_query(self, model_data, dataset_name, features, dbms, optimizations=None, preprocessors=None):
        model = load_model(model_data)
        pipeline = self.extract_pipeline(model, preprocessors)
        input_table = dataset_name

        opt = Optimizer(pipeline, features, dbms, optimizations)
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


class Optimizer(object):
    def __init__(self, pipeline: dict, features: list, dbms: str, optimizations):
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
        assert isinstance(dbms, str)

        self.pipeline = pipeline
        self.features = features

        self.transformers = self.pipeline["transforms"]
        self.model = self.pipeline['model']
        self.transformer_names = [transformer["transform_name"] for transformer in self.transformers]
        self.model_name = self.model["model_name"]
        self.tree_based_model_keys = ['Gradient', 'Tree', 'Forest']

        self.ml_manager = TransformerManager()
        if 'OneHotEncoder' in optimizations:
            self.one_optimization = True
            if optimizations['OneHotEncoder'].get('other_attris'):
                self.one_gen_preprocess = True
            else:
                self.one_gen_preprocess = False
        else:
            self.one_optimization = False

        if 'StandardScaler' in optimizations:
            self.standard_optimization = True
            if optimizations['StandardScaler'].get('other_attris'):
                self.standard_gen_preprocess = True
            else:
                self.standard_gen_preprocess = False
        else:
            self.standard_optimization = False

        if 'MinMaxScaler' in optimizations:
            self.minmax_optimization = True
            if optimizations['MinMaxScaler'].get('other_attris'):
                self.minmax_gen_preprocess = True
            else:
                self.minmax_gen_preprocess = False
        
        if 'OrdinalEncoder' in optimizations:
            self.ordinal_optimization = True
            if optimizations['OrdinalEncoder'].get('other_attris'):
                self.ordinal_gen_preprocess = True
            else:
                self.ordinal_gen_preprocess = False

        self.udf_need_gen_preprocess = True
        self.udf_need_merge = False

        self.optimizations = optimizations
        self.dbms = dbms


    def optimize(self):

        out_pipeline = self.pipeline.copy()
        features = self.features

        # if the optimization is enabled then check if the operator fusion can be applied
        transformers_to_merge = []
        if self.one_optimization:
            # if the pipeline includes an OneHotEncoder and a tree-based model then apply the one-hot encoding directly
            # in the decision tree rules
            if 'OneHotEncoder' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('OneHotEncoder')
        
        if self.standard_optimization:
            if 'StandardScaler' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('StandardScaler')
        
        if self.minmax_optimization:
            if 'MinMaxScaler' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('MinMaxScaler')

        if self.ordinal_optimization:
            if 'OrdinalEncoder' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('OrdinalEncoder')

        
        for transform in out_pipeline['transforms']:
            if transform['transform_name'] == 'UDF':
                transform_features = transform['transform_features']
                merge_num = 0
                for attr_name in transform_features:
                    if transform_features[attr_name]['is_push']:
                        merge_num += 1
                if merge_num == len(transform_features):
                    self.udf_need_gen_preprocess = False
                    self.udf_need_merge = True
                elif merge_num < len(transform_features) and merge_num > 0:
                    self.udf_need_merge = True     
        
        if self.udf_need_merge:
            if 'UDF' in self.transformer_names and \
                    any(key in self.model_name for key in self.tree_based_model_keys):
                transformers_to_merge.append('UDF')
                
        
        # get the fitted transformers from the pipeline
        prev_transform_features = []
        new_transformers = []
        sql_transformers_to_merge = []
        preprocess_all_features = features
        for transformer in self.transformers:
            transformer_name = transformer["transform_name"]
            if "fitted_transform" in transformer:
                fitted_transformer = transformer["fitted_transform"]
            else:
                fitted_transformer = None
            transformer_features = transformer["transform_features"]

            # retrieve the SQL wrapper related to the current transformer and extract its fitted params
            transformer_sql_wrapper = self.ml_manager.sql_transform_types[transformer_name]
            # pass the optimizations parameters to the preprocess transformer
            if transformer_name in self.optimizations:
                transformer_sql_wrapper.set_optimizations(self.optimizations)
            transformer_params = transformer_sql_wrapper.get_params(fitted_transformer, transformer_features,
                                                                    features, preprocess_all_features, prev_transform_features)
            features = transformer_params["out_all_features"]
            preprocess_all_features = transformer_params['preprocess_all_features']
            # transformers that have to be merged with the model are ignored in this phase
            if transformer_name not in transformers_to_merge or (transformer_name == 'UDF' and self.udf_need_gen_preprocess)\
                or (transformer_name == 'StandardScaler' and self.standard_gen_preprocess)\
                    or (transformer_name == 'MinMaxScaler' and self.minmax_gen_preprocess)\
                        or (transformer_name == 'OneHotEncoder' and self.one_gen_preprocess)\
                            or (transformer_name == 'OrdinalEncoder' and self.ordinal_gen_preprocess):
                transformer_sql_wrapper.set_dbms(self.dbms)
                new_transformers.append(transformer_sql_wrapper)

            if transformer_name in transformers_to_merge:
                sql_transformers_to_merge.append((transformer_name, transformer_sql_wrapper, transformer_params))
            

            prev_transform_features = prev_transform_features + transformer_params["out_transform_features"]
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
        # pass the optimizations parameters to sql tree model
        if self.model_name in ['RandomForestClassifier','RandomForestRegressor',
                               'DecisionTreeClassifier','DecisionTreeRegressor']:
            model_sql_wrapper.set_optimizations(self.optimizations)


        # if dbms limits are reached then set the sparse implementation for some transformers and for the model
        # in the opposite case enable dense modality for all the pipeline components
        for nt in new_transformers:
            if 'OneHotEncoder' in str(type(nt)):
                    nt.set_mode('dense')
        model_sql_wrapper.set_mode('dense')


        # if there are operators to merge and the sparse implementation is disabled then merge the previously
        # selected transformers with the model
        if len(sql_transformers_to_merge) > 0:
            for sql_transf_to_merge in sql_transformers_to_merge:
                transf_name = sql_transf_to_merge[0]
                transf_sql = sql_transf_to_merge[1]
                transf_params = sql_transf_to_merge[2]

                if transf_name == 'OneHotEncoder':
                    print("OneHot Operator fusion enabled.")
                    model_sql_wrapper.merge_ohe_with_trees(transf_params['ohe_encoding'])
                
                if transf_name == 'StandardScaler':
                    print("StandardScaler Operator fusion enabled.")
                    model_sql_wrapper.merge_standard_with_trees(transf_params)
                
                if transf_name == 'UDF':
                    print("UDF Operator fusion enabled.")
                    model_sql_wrapper.merge_udf_with_trees(transf_params)
                
                if transf_name == 'MinMaxScaler':
                    print("MinMaxScaler Operator fusion enabled.")
                    model_sql_wrapper.merge_minmax_with_trees(transf_params)

                if transf_name == 'OrdinalEncoder':
                    print("OrdinalEncoder Operator fusion enabled.")
                    model_sql_wrapper.merge_ordinal_with_trees(transf_params)


        new_model = {
            'trained_model': fitted_model,
            'model_sql_wrapper': model_sql_wrapper,
            'model_features': features,
        }

        out_pipeline['transforms'] = new_transformers
        out_pipeline['model'] = new_model

        return out_pipeline
