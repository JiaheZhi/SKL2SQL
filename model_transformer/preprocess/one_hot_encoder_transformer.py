from model_transformer.utility.dbms_utils import DBMSUtils


class OneHotEncoderSQL(object):
    """
    This class implements the SQL wrapper for a Sklearn OneHotEncoder object.
    """

    def __init__(self):
        self.params = None
        self.dbms = None
        self.optimizations = None

    def set_optimizations(self, optimizations):
        self.optimizations = optimizations

    def set_dbms(self, dbms: str):
        self.dbms = dbms

    @staticmethod
    def _get_query_dense_ohe(ohe_params: dict, table_name: str, dbms: str):

        ohe_map = ohe_params["ohe_encoding"]
        remaining_features = ohe_params["other_features"]
        optimizations = ohe_params['optimizations']
        if optimizations:
            push_attris = optimizations['OneHotEncoder'].get('push_attris')
            merge_attris = optimizations['OneHotEncoder'].get('merge_attris')
            if push_attris is None and merge_attris is not None:
                push_attris = merge_attris
            elif push_attris is not None and merge_attris is not None:
                push_attris = push_attris + merge_attris

        dbms_utils = DBMSUtils()

        ohe_query = "SELECT "

        # implement one-hot encoding in SQL
        for feature_after_ohe in ohe_map:
            # feature_after_ohe = ohe_feature_map["feature_after_ohe"]
            # fao = dbms_utils.get_delimited_col(dbms, feature_after_ohe)
            ohe_feature_map = ohe_map[feature_after_ohe]
            if not optimizations or ohe_feature_map["feature_before_ohe"] not in push_attris:
                feature_before_ohe = dbms_utils.get_delimited_col(dbms, ohe_feature_map["feature_before_ohe"])
                value = ohe_feature_map["value"]
                alias = dbms_utils.get_delimited_col(dbms, ohe_feature_map["alias"])
                ohe_query += "CASE WHEN {} = '{}' THEN 1 ELSE 0 END AS {},\n".format(feature_before_ohe, value, alias)

        # add the remaining features to the selection
        for f in remaining_features:
            ohe_query += "{},".format(dbms_utils.get_delimited_col(dbms, f))
        ohe_query = ohe_query[:-1]  # remove the last ','

        ohe_query += " FROM {}".format(table_name)

        return ohe_query


    def transform_model_features_in(self, transform, all_features, pre_features):
        one_enc = transform['fitted_transform']
        one_features = transform['transform_features']
        features_after_one = one_enc.get_feature_names_out()
        count_map = {}
        for feature_after_one in features_after_one:
            # the categorical features after the Sklearn OHE follow the format x<column_id>_<column_val> (e.g., x1_a)
            feature_item = feature_after_one.split("_")
            feature = feature_item[0]
            if feature in count_map:
                count_map[feature] += 1
            else:
                count_map[feature] = 0

        other_features = []
        for feature in all_features:
            if not (feature in one_features or feature in pre_features):
                other_features.append(feature)

        one_features_fusion = []
        for attr in one_features:
            # change the one col to muilti cols
            # index_attr = all_features.index(attr)
            # all_features[index_attr:index_attr+1] = [f'{attr}_{i}' for i in range(count_map[attr] + 1)]
            one_features_fusion.extend([f'{attr}_{i}' for i in range(count_map[attr] + 1)])

        all_features = pre_features + one_features_fusion + other_features
        pre_features = pre_features + one_features_fusion 

        return all_features, pre_features



    def get_params(self, ohe, ohe_features, all_features, preprocess_all_features, prev_transform_features=None):

        # get the output ohe-encoded feature names
        features_after_ohe = ohe.get_feature_names_out()
        if self.optimizations:
            push_attris = self.optimizations['OneHotEncoder'].get('push_attris')
            merge_attris = self.optimizations['OneHotEncoder'].get('merge_attris')
            if push_attris is None and merge_attris is not None:
                push_attris = merge_attris
            elif push_attris is not None and merge_attris is not None:
                push_attris = push_attris + merge_attris

        ohe_map = {}
        count_map = {}
        features_after_ohe_list = []
        real_features_after_ohe_list = []
        # loop over the categorical features obtained after the application of the Sklearn's One Hot Encoder
        for feature_after_ohe in features_after_ohe:
            # the categorical features after the Sklearn OHE follow the format x<column_id>_<column_val> (e.g., x1_a)
            feature_item = feature_after_ohe.split("_")
            # get categorical feature name
            feature = feature_item[0]
            # get categorical feature val
            value = feature_item[1]
            if feature in count_map:
                count_map[feature] += 1
            else:
                count_map[feature] = 0
            real_features_after_ohe_list.append(f'{feature}_{count_map[feature]}')
            if push_attris:
                if feature not in push_attris:
                    features_after_ohe_list.append(f'{feature}_{count_map[feature]}')
                else:
                    if feature not in features_after_ohe_list:
                        features_after_ohe_list.append(feature)
            else:
                features_after_ohe_list.append(f'{feature}_{count_map[feature]}')
                
            ohe_map[feature_after_ohe] = {"feature_before_ohe": feature, "value": value,
                                          "alias": f'{feature}_{count_map[feature]}'}

        if prev_transform_features is None:
            prev_transform_features = []

        remaining_features = []
        for f in all_features:
            if f in prev_transform_features or f in ohe_features:
                continue
            remaining_features.append(f)

        preprocess_remaining_features = []
        for f in preprocess_all_features:
            if f in prev_transform_features or f in ohe_features:
                continue
            preprocess_remaining_features.append(f)

        # out_features = prev_transform_features + list(features_after_ohe) + remaining_features
        real_out_features = prev_transform_features + real_features_after_ohe_list + remaining_features
        preprocess_out_features = prev_transform_features + features_after_ohe_list + preprocess_remaining_features

        other_features = []
        for f in preprocess_all_features:
            if push_attris:
                if f not in ohe_features or f in push_attris:
                    other_features.append(f)
            else:
                if f not in ohe_features:
                    other_features.append(f)

        self.params = {"ohe_encoding": ohe_map, "out_all_features": real_out_features, "ohe_features": ohe_features,
                       "other_features":  other_features,
                       'out_transform_features': real_features_after_ohe_list,
                       'preprocess_all_features': preprocess_out_features, 'optimizations':self.optimizations}

        return self.params


    def query(self, table_name):

        # create the SQL query that performs the One Hot Encoding
        pre_ohe_queries = None
        ohe_query = self._get_query_dense_ohe(self.params, table_name, dbms=self.dbms)


        return pre_ohe_queries, ohe_query
