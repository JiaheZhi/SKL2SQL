from craftsman.base.graph import PrepGraph
from craftsman.rule_based_optimize.merge import merge_sql_operator_by_rules
from craftsman.cost_model.merge import merge_by_cost_model
from craftsman.utility.loader import load_model
from craftsman.utility.dbms_utils import DBMSUtils
import craftsman.base.defs as defs


class TransformerManager(object):

    def __extract_pipeline(self, pipeline):
        steps = pipeline.steps
        column_transformer_start_idx = 0

        fitted_imputer = None
        # if contain imputer extract it
        if 'Imputer' == steps[0][0]:
            fitted_imputer = steps[0][1]
            column_transformer_start_idx = 1

        # extract model
        model_name, trained_model = steps[-1]

        # extract preprocessors
        transforms = []
        for i in range(column_transformer_start_idx, len(steps) - 1):
            _, pipeline_transformers = steps[i]
            for idx in range(len(pipeline_transformers.transformers)):
                a, b, c = pipeline_transformers.transformers_[idx]
                a = a.split('_')[0]
                transforms.append({
                    'transform_name': a,
                    'fitted_transform': b,
                    'transform_features': c,
                })

        return {
            'imputer': {
                'filled_values': fitted_imputer.statistics_ if fitted_imputer else [],
                'missing_cols': fitted_imputer.missing_cols if fitted_imputer else [],
                'missing_col_indexs': fitted_imputer.missing_col_indexs if fitted_imputer else []
            },
            'transforms': transforms,
            'model': {
                'model_name': model_name,
                'trained_model': trained_model
            }
        }

    def generate_query(
        self,
        model_file,
        table_name,
        dbms,
        *,
        train_data=None,
        merge_flag=True,
        cost_flag=True,
        just_push_flag=False,
        masq=False,
        pre_sql=None,
        order_when=True,
    ):

        # some load and extract tasks
        defs.DBMS = dbms
        defs.set_JUST_PUSH_FLAG(just_push_flag)
        defs.ORDER_WHEN = order_when
        model = load_model(model_file)
        pipeline_features_in = model.feature_names_in_.tolist()
        pipeline = self.__extract_pipeline(model)

        # build the graph of the preprocessing operators
        preprocessing_graph = PrepGraph(pipeline_features_in, pipeline)

        # merge operators by rules
        if merge_flag and not masq:
            preprocessing_graph = merge_sql_operator_by_rules(preprocessing_graph)

        # merge operators by cost model
        preprocessing_graph = merge_by_cost_model(preprocessing_graph, train_data, merge_flag, cost_flag, masq)

        # generate sql through the merged graph
        query_str = self.__compose_sql(preprocessing_graph, table_name, dbms, pre_sql, pipeline)

        return query_str

    def __compose_sql(self, graph: PrepGraph, table_name: str, dbms: str, pre_sql: str, pipeline) -> str:
        input_table = table_name

        # compose join sqls
        join_feature_sqls = {}
        join_feature_list = {}
        for op in graph.join_operators:
            input_table, feature_sql, join_features = op.get_join_sql(dbms, input_table, table_name)
            join_feature_sqls[op.features[0]] = feature_sql
            join_feature_list[op.features[0]] = join_features

        # compose imputer sql if exists missing cols
        if pipeline['imputer']['missing_cols']:
            filled_values = pipeline['imputer']['filled_values']
            missing_cols = pipeline['imputer']['missing_cols']
            missing_col_indexs = pipeline['imputer']['missing_col_indexs']
            imputer_feature_sqls = []
            imputer_sql = '(SELECT '
            fill_sqls = {}
            for idx, feature in enumerate(missing_cols):
                fill_sqls[feature] = filled_values[missing_col_indexs[idx]]
            for feature, chain in graph.chains.items():
                delimited_feature = DBMSUtils.get_delimited_col(dbms, feature)
                if feature in fill_sqls:
                    if type(fill_sqls[feature]) == str:
                        imputer_feature_sqls.append(f'COALESCE({delimited_feature}, \'{fill_sqls[feature]}\') AS {delimited_feature}')
                    else:
                        imputer_feature_sqls.append(f'COALESCE({delimited_feature}, {fill_sqls[feature]}) AS {delimited_feature}')
                else:
                    imputer_feature_sqls.append(f'{delimited_feature}')
            imputer_sql += ','.join(imputer_feature_sqls)
            imputer_sql += f' FROM {input_table}) AS data'
            input_table = imputer_sql

        # compose preprocessing sqls
        max_level = 0
        for _, chain in graph.chains.items():
            max_level = max(max_level, len(chain.prep_operators))

        expend_features = {}
        prep_sqls = []
        for prep_level in range(max_level):
            perp_level_sqls = []
            for feature, chain in graph.chains.items():
                if len(chain.prep_operators) > prep_level:
                    op = chain.prep_operators[prep_level]
                    perp_level_sqls.append(op.get_sql(dbms))
                    if op.features != op.features_out:
                        expend_features[feature] = op.features_out
                else:
                    if expend_features.get(feature):
                        perp_level_sqls.append(','.join([DBMSUtils.get_delimited_col(dbms, f) for f in expend_features[feature]]))
                    elif join_feature_sqls.get(feature):
                        perp_level_sqls.append(join_feature_sqls[feature])
                        join_feature_sqls.pop(feature)
                        if len(join_feature_list.get(feature)) > 1:
                            expend_features[feature] = join_feature_list.get(feature)
                    else:
                        perp_level_sqls.append(DBMSUtils.get_delimited_col(dbms, feature))
            prep_sqls.append(','.join(perp_level_sqls))

        for prep_sql in prep_sqls:
            # the input table for the possible next transformer is the output of the current transformer
            input_table = "({}) AS data".format('SELECT ' + prep_sql + f' FROM {input_table}')

        # compose model sql
        predication_query = graph.model.query(input_table, dbms)

        return pre_sql + predication_query
