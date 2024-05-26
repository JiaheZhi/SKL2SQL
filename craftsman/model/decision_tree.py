import numpy as np
from sklearn.tree import BaseDecisionTree
from collections import Counter
from craftsman.utility.dbms_utils import DBMSUtils
from craftsman.model.base_model import SQLModel


class DTSQLModel(SQLModel):
    """
    This class implements the SQL wrapper for a Sklearn's Decision Tree Model (DTM).
    """

    binary_map = {}

    def __init__(self, classification: bool = False):
        """
        This method initializes the state of the Decision Tree Model SQL wrapper.

        :param classification: boolean flag that indicates whether the DTM is used in classification or regression
        """

        assert isinstance(classification, bool), "Only boolean data type is allowed for param 'classification'."

        self.classification = classification
        self.nested = True
        self.merge_features={}
        self.optimizations=None
        self.dbms = None
        self.mode = None

    def set_dbms(self, dbms: str):
        self.dbms = dbms


    def merge_ohe_with_trees(self, merge_ohe_features: dict):
        self.merge_features['merge_ohe_features'] = merge_ohe_features

    def merge_standard_with_trees(self, merge_standard_features):
        self.merge_features['merge_standard_features'] = merge_standard_features
    
    def merge_minmax_with_trees(self, merge_minmax_features):
        self.merge_features['merge_minmax_features'] = merge_minmax_features

    def merge_ordinal_with_trees(self, merge_ordinal_features):
        self.merge_features['merge_ordinal_features'] = merge_ordinal_features

    def merge_udf_with_trees(self, merge_udf_features):
        self.merge_features['merge_udf_features'] = merge_udf_features

    def merge_equal_with_trees(self, merge_equal_features):
        self.merge_features['merge_equal_features'] = merge_equal_features

    def merge_imputation_with_trees(self, merge_imputation_features):
        self.merge_features['merge_imputation_features'] = merge_imputation_features

    def merge_binary_with_trees(self, merge_binary_features):
        self.merge_features['merge_binary_features'] = merge_binary_features

    def merge_frequency_with_trees(self, merge_frequency_features):
        self.merge_features['merge_frequency_features'] = merge_frequency_features

    def merge_target_with_trees(self, merge_target_features):
        self.merge_features['merge_target_features'] = merge_target_features

    def merge_leave_with_trees(self, merge_leave_features):
        self.merge_features['merge_leave_features'] = merge_leave_features

    def set_optimizations(self, optimizations):
        self.optimizations = optimizations


    @staticmethod
    def get_sql_nested_rules(tree: BaseDecisionTree, feature_names: list, dbms: str,
                             merge_features=None, optimizations=None):

        merge_ohe_features = merge_features.get('merge_ohe_features')
        merge_standard_features = merge_features.get('merge_standard_features')
        merge_udf_features = merge_features.get('merge_udf_features')
        merge_minmax_features = merge_features.get('merge_minmax_features')
        merge_ordinal_features = merge_features.get('merge_ordinal_features')
        merge_equal_features = merge_features.get('merge_equal_features')
        merge_imputation_features = merge_features.get('merge_imputation_features')
        merge_binary_features = merge_features.get('merge_binary_features')
        merge_frequency_features = merge_features.get('merge_frequency_features')
        merge_target_features = merge_features.get('merge_target_features')
        merge_leave_features = merge_features.get('merge_leave_features')

        dbms_util = DBMSUtils()

        # get for each node, left, right child nodes, thresholds and features
        left = tree.tree_.children_left  # left child for each node
        right = tree.tree_.children_right  # right child for each node
        thresholds = tree.tree_.threshold  # test threshold for each node
        features = [feature_names[i] for i in tree.tree_.feature]
        # features = tree.tree_.feature  # indexes of the features used by the tree
        classes = tree.classes_

        def visit_tree(node):
            # leaf node
            if left[node] == -1 and right[node] == -1:
                return " {} ".format(classes[np.argmax(tree.tree_.value[node][0])])
                

            # internal node
            op = '<='
            feature = dbms_util.get_delimited_col(dbms, features[node])
            thr = thresholds[node]

            ###### merge imputation ######
            if merge_imputation_features is not None:
                imputation_infos = merge_imputation_features['imputation_infos']
                if features[node] in imputation_infos and 'is_push' in imputation_infos[features[node]] and imputation_infos[features[node]]['is_push']:
                    feature = f"COALESCE({feature}, \'{imputation_infos[features[node]]['impuataion_value']}\')"
                    
            ###### merge onehot ######
            if merge_ohe_features is not None:
                #   feature_after_ohe > 0.5 becomes original_cat_feature = val
                #   feature_after_ohe <= 0.5 becomes original_cat_feature <> val
                for one_feature in merge_ohe_features.values():
                    if features[node] == one_feature['alias']:
                        if 'merge_attris' in optimizations['OneHotEncoder'] and one_feature['feature_before_ohe'] in optimizations['OneHotEncoder']['merge_attris']:
                            feature = dbms_util.get_delimited_col(dbms, one_feature['feature_before_ohe'])
                            thr = "'{}'".format(one_feature['value'])
                            op = '<>'
                        elif 'push_attris' in optimizations['OneHotEncoder'] and one_feature['feature_before_ohe'] in optimizations['OneHotEncoder']['push_attris']:
                            feature = 'CASE WHEN {} = \'{}\' THEN 1 ELSE 0 END'.format(one_feature['feature_before_ohe'], one_feature['value'])
                        break
            
            ###### merge standscaler ######
            if merge_standard_features is not None:
                if 'merge_attris' in optimizations['StandardScaler'] and features[node] in optimizations['StandardScaler']['merge_attris']:
                    i = merge_standard_features['norm_features'].index(features[node])
                    thr = thr * merge_standard_features['stds'][i] + merge_standard_features['avgs'][i]
                elif 'push_attris' in optimizations['StandardScaler'] and features[node] in optimizations['StandardScaler']['push_attris']:
                    i = merge_standard_features['norm_features'].index(features[node])
                    if merge_standard_features["avgs"][i] >= 0:
                        feature = f'({feature}-{merge_standard_features["avgs"][i]})/({merge_standard_features["stds"][i]})'
                    else:
                        feature = f'({feature}+{-merge_standard_features["avgs"][i]})/({merge_standard_features["stds"][i]})'
            
            ###### merge udf ######
            if merge_udf_features is not None:
                udf_infos = merge_udf_features['udf_infos']
                if features[node] in udf_infos:
                    if 'is_push' in udf_infos[features[node]] and udf_infos[features[node]]['is_push']:
                        feature = f'{udf_infos[features[node]]["udf_name"]}({feature})'

            ###### merge frequency encoder ######
            if merge_frequency_features is not None:
                frequency_features = merge_frequency_features['transform_features']
                if features[node] in frequency_features:
                    train_data = merge_frequency_features['train_data']
                    if 'is_push' in frequency_features[features[node]] and frequency_features[features[node]]['is_push']:
                        data_list = train_data[features[node]]
                        # get the map of value to frequency
                        count = Counter(data_list)
                        sql = "CASE "
                        for ele, freq in count.items():
                            sql += f"WHEN {feature} = '{ele}' THEN {freq} "
                        sql += "END "
                        feature = sql
                    elif 'is_merge' in frequency_features[features[node]] and frequency_features[features[node]]['is_merge']:
                        data_list = train_data[features[node]]
                        # get the map of value to frequency
                        count = Counter(data_list)
                        ### in
                        in_list = []
                        for ele, freq in count.items():
                            if freq <= thr:
                                in_list.append(f"'{ele}'")
                        in_str = '(' + ','.join(in_list) + ')'
                        op = 'in'
                        thr = in_str

                        ### in-values
                        # in_list = []
                        # for ele, freq in count.items():
                        #     if freq <= thr:
                        #         in_list.append(f"('{ele}')")
                        # in_str = '(values' + ','.join(in_list) + ')'
                        # op = 'in'
                        # thr = in_str

                        ### any-array
                        # in_list = []
                        # for ele, freq in count.items():
                        #     if freq <= thr:
                        #         in_list.append(f"'{ele}'")
                        # in_str = '(array[' + ','.join(in_list) + '])'
                        # op = '=any'
                        # thr = in_str

                        ### any-values
                        # in_list = []
                        # for ele, freq in count.items():
                        #     if freq <= thr:
                        #         in_list.append(f"('{ele}')")
                        # in_str = '(values' + ','.join(in_list) + ')'
                        # op = '=any'
                        # thr = in_str

            ###### merge target encoder ######
            if merge_target_features is not None:
                target_enc_features = merge_target_features['transform_features']
                te = merge_target_features['te']
                if features[node] in target_enc_features:
                    train_data = merge_target_features['train_data']
                    if 'is_push' in target_enc_features[features[node]] and target_enc_features[features[node]]['is_push']:
                        data_list = train_data[features[node]]
                        count = Counter(data_list)
                        count = count.most_common()
                        # get variables of target encoder
                        te_mapping = te.mapping[features[node]]
                        oe = te.ordinal_encoder
                        for m in oe.mapping:
                            if m['col'] == features[node]:
                                oe_mapping = m['mapping']
                                break
                        # generate sql
                        f = dbms_util.get_delimited_col(dbms, features[node])
                        sql = "CASE "
                        for item in count:
                            ele, _ = item
                            sql += f"WHEN {f} = '{ele}' THEN {te_mapping[oe_mapping[ele]]} "
                        sql += f"END AS {f}, "
                        feature = sql
                    elif 'is_merge' in target_enc_features[features[node]] and target_enc_features[features[node]]['is_merge']:
                        data_list = train_data[features[node]]
                        # get the map of value to frequency
                        count = Counter(data_list)
                        count = count.most_common()
                        # get variables of target encoder
                        te_mapping = te.mapping[features[node]]
                        oe = te.ordinal_encoder
                        for m in oe.mapping:
                            if m['col'] == features[node]:
                                oe_mapping = m['mapping']
                                break
                        in_list = []
                        for ele, _ in count:
                            if te_mapping[oe_mapping[ele]] <= thr:
                                in_list.append(f"'{ele}'")
                        in_str = '(' + ','.join(in_list) + ')'
                        op = 'in'
                        thr = in_str

            ###### merge leaveOneOut encoder ######
            if merge_leave_features is not None:
                leave_enc_features = merge_leave_features['transform_features']
                looe = merge_leave_features['looe']
                if features[node] in leave_enc_features:
                    train_data = merge_leave_features['train_data']
                    if 'is_push' in leave_enc_features[features[node]] and leave_enc_features[features[node]]['is_push']:
                        data_list = train_data[features[node]]
                        count = Counter(data_list)
                        count = count.most_common()
                        # get variables of target encoder
                        looe_mapping = looe.mapping[features[node]]
                        # generate sql
                        f = dbms_util.get_delimited_col(dbms, features[node])
                        sql = "CASE "
                        for item in count:
                            ele, _ = item
                            sql += f"WHEN {f} = '{ele}' THEN {looe_mapping.at[ele, 'sum']/looe_mapping.at[ele, 'count']} "
                        sql += f"END AS {f}, "
                        feature = sql
                    elif 'is_merge' in leave_enc_features[features[node]] and leave_enc_features[features[node]]['is_merge']:
                        data_list = train_data[features[node]]
                        # get the map of value to frequency
                        count = Counter(data_list)
                        count = count.most_common()
                        # get variables of target encoder
                        looe_mapping = looe.mapping[features[node]]
                        in_list = []
                        for ele, _ in count:
                            if looe_mapping.at[ele, 'sum']/looe_mapping.at[ele, 'count'] <= thr:
                                in_list.append(f"'{ele}'")
                        in_str = '(' + ','.join(in_list) + ')'
                        op = 'in'
                        thr = in_str

            ###### merge binary encoder ######
            if merge_binary_features is not None:
                binary_atrributes = merge_binary_features['binaryencoder_infos']['attrs']
                f = ''
                for attr_name in binary_atrributes:
                    if attr_name in features[node]:
                        f = attr_name
                        break
                if f in binary_atrributes and 'is_push' in binary_atrributes[f] and binary_atrributes[f]['is_push']:
                    if features[node] not in DTSQLModel.binary_map:
                        train_data_join = merge_binary_features['train_data_join']
                        train_data_join_groupby = train_data_join.groupby(f)[[features[node]]].first()
                        begin_str = f'CASE WHEN {dbms_util.get_delimited_col(dbms, f)} in '
                        one_index_list = []
                        zero_index_list = []
                        # 遍历行
                        for row in range(train_data_join_groupby.shape[0]):
                            if train_data_join_groupby.iloc[row][features[node]]:
                                one_index_list.append(f"'{train_data_join_groupby.index[row]}'")
                            else:
                                zero_index_list.append(f"'{train_data_join_groupby.index[row]}'")
                        in_str = ""
                        if(len(one_index_list) < len(zero_index_list)):
                            in_str += f"({','.join(one_index_list)}) THEN 1 ELSE 0 "
                        else:
                            in_str += f"({','.join(zero_index_list)}) THEN 0 ELSE 1 "

                        end_str = f'END '
                        feature = begin_str + in_str + end_str
                        DTSQLModel.binary_map[features[node]] = feature
                    else:
                        feature = DTSQLModel.binary_map[features[node]]

                elif f in binary_atrributes and 'is_merge' in binary_atrributes[f] and binary_atrributes[f]['is_merge']:
                    if features[node] not in DTSQLModel.binary_map:
                        train_data_join = merge_binary_features['train_data_join']
                        train_data_join_groupby = train_data_join.groupby(f)[[features[node]]].first()
                        one_index_list = []
                        zero_index_list = []
                        # 遍历行
                        for row in range(train_data_join_groupby.shape[0]):
                            if train_data_join_groupby.iloc[row][features[node]]:
                                one_index_list.append(f"'{train_data_join_groupby.index[row]}'")
                            else:
                                zero_index_list.append(f"'{train_data_join_groupby.index[row]}'")
                        in_str = ""
                        if(len(one_index_list) < len(zero_index_list)):
                            in_str += f"({','.join(one_index_list)})"
                            op = 'not in'
                        else:
                            in_str += f"({','.join(zero_index_list)})"
                            op = 'in'
                        
                        feature = dbms_util.get_delimited_col(dbms, f)
                        thr = in_str
                        DTSQLModel.binary_map[features[node]] = {
                            'feature':feature,
                            'op': op,
                            'thr': thr
                        }
                    else:
                        feature = DTSQLModel.binary_map[features[node]]['feature']
                        op = DTSQLModel.binary_map[features[node]]['op']
                        thr = DTSQLModel.binary_map[features[node]]['thr']

            ###### merge equalwidth discretization ######
            if merge_equal_features is not None:
                equal_infos = merge_equal_features['infos']
                if features[node] in equal_infos and 'is_push' in equal_infos[features[node]] and equal_infos[features[node]]['is_push']:
                    bins = equal_infos[features[node]]['bins']
                    labels = equal_infos[features[node]]['labels']
                    sql = "CASE "
                    for i in range(len(bins)):
                        sql += f"WHEN {feature} <= {bins[i]} THEN {labels[i]} "
                    sql += f"ELSE {labels[-1]} END "
                    feature = sql
                elif features[node] in equal_infos and 'is_merge' in equal_infos[features[node]] and equal_infos[features[node]]['is_merge']:
                    bins = equal_infos[features[node]]['bins']
                    labels = equal_infos[features[node]]['labels']
                    pos = 0
                    for i in range(len(labels)):
                        if labels[i] <= thr:
                            pos = i
                        else:
                            break
                    if pos > len(bins) - 1:
                        pos = len(bins) - 1
                        op = '>'
                    if thr < labels[0]:
                        thr = -99999999
                    else:
                        thr = bins[pos]
                    

            ###### merge minmaxscaler ######
            if merge_minmax_features is not None:
                if 'merge_attris' in optimizations['MinMaxScaler'] and features[node] in optimizations['MinMaxScaler']['merge_attris']:
                    i = merge_minmax_features['norm_features'].index(features[node])
                    thr = (thr - merge_minmax_features['range_min'][i]) * 1.0 / merge_minmax_features['scale'][i] + merge_minmax_features['data_min'][i]
                elif 'push_attris' in optimizations['MinMaxScaler'] and features[node] in optimizations['MinMaxScaler']['push_attris']:
                    i = merge_minmax_features['norm_features'].index(features[node])
                    if merge_minmax_features['data_min'][i] >= 0:
                        feature = "({}-{}) * {} + {}".format(feature, merge_minmax_features['data_min'][i], merge_minmax_features['scale'][i], merge_minmax_features['range_min'][i])   
                    else:
                        feature = "({}+{}) * {} + {}".format(feature, -merge_minmax_features['data_min'][i], merge_minmax_features['scale'][i], merge_minmax_features['range_min'][i])
            
            ###### merge ordinal encoder ######
            if merge_ordinal_features is not None:
                if 'merge_attris' in optimizations['OrdinalEncoder'] and features[node] in optimizations['OrdinalEncoder']['merge_attris']:
                    op = 'in'
                    pos = int(thr) + 1
                    encoder_features = merge_ordinal_features['out_transform_features']
                    categories = merge_ordinal_features['categories']
                    i = encoder_features.index(features[node])
                    categorie = categories[i]
                    if type(categorie[0]) == str:
                        thr = '(' + ','.join([f"\'{c}\'" for c in categorie[:pos]]) +')'
                    else:
                        thr = '(' + ','.join([f"{c}" for c in categorie[:pos]]) +')'

                elif 'push_attris' in optimizations['OrdinalEncoder'] and features[node] in optimizations['OrdinalEncoder']['push_attris']:
                    sql = "CASE "
                    encoder_features = merge_ordinal_features['out_transform_features']
                    categories = merge_ordinal_features['categories']
                    i = encoder_features.index(features[node])
                    categorie = categories[i]
                    for j in range(len(categorie)):
                        if type(categorie[j]) == str:
                            sql += f"WHEN {feature} = \'{categorie[j]}\' THEN {j} "
                        else:
                            sql += f"WHEN {feature} = {categorie[j]} THEN {j} "
                    sql += "end "
                    feature = sql
            
            sql_dtm_rule = f" CASE WHEN {feature} {op} {thr} THEN"

            # check if current node has a left child
            if left[node] != -1:
                sql_dtm_rule += visit_tree(left[node])

            sql_dtm_rule += "ELSE"

            # check if current node has a right child
            if right[node] != -1:
                sql_dtm_rule += visit_tree(right[node])

            sql_dtm_rule += "END "

            return sql_dtm_rule

        # start tree visit from the root node
        root = 0
        sql_dtm_rules = visit_tree(root)

        return sql_dtm_rules

    @staticmethod
    def get_params(dtm: BaseDecisionTree, features: list, dbms: str,
                   merge_features=None, optimizations=None):

        # extract the decision rules from the Decision Tree Model
        sql_rules = DTSQLModel.get_sql_nested_rules(dtm, features, dbms,
                                                    merge_features=merge_features, optimizations=optimizations)
        tree_params = {"estimator": dtm, "sql_rules": sql_rules}

        return tree_params

    def _dtm_to_sql(self, tree_params: dict, table_name: str):

        query = "SELECT{} AS Score".format(tree_params["sql_rules"])
        query += " FROM {}".format(table_name)

        return query

    def query(self, dtm: BaseDecisionTree, features: list, table_name: str):

        # extract the parameters (i.e., the decision rules) from the fitted DTM
        dtm_params = DTSQLModel.get_params(dtm, features, dbms=self.dbms, 
                                       merge_features=self.merge_features, optimizations=self.optimizations)

        # create the SQL query that implements the DTM inference
        pre_inference_query = None
        query = self._dtm_to_sql(dtm_params, table_name)

        return pre_inference_query, query
