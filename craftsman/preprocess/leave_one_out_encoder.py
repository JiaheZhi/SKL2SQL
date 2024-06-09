from pandas import DataFrame

from craftsman.base.operator import CAT_C_CAT
from craftsman.base.defs import OperatorName

class LeaveOneOutEncoderSQLOperator(CAT_C_CAT):

    def __init__(self, featrues: list[str], fitted_transform):
        super().__init__(OperatorName.LEAVEONEOUTENCODER)
        self.features = featrues
        self._extract(fitted_transform)


    def _extract(self, fitted_transform) -> None:
        for feature in self.features:
            self.features_out.append(feature)
            loo_mapping = fitted_transform.mapping[feature]
            self.mappings.append(loo_mapping['sum'] / loo_mapping['count'])


    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        return input_data.columns

    # def get_params(self, fitted_transformer, infos, all_features, preprocess_all_features, prev_transform_features):
    #     attrs = infos['attrs']
    #     train_data_path = infos['train_data_path']
    #     target = infos['target']
    #     other_features = [f for f in preprocess_all_features if f not in attrs]
    #     train_data = load_dataset(train_data_path)
    #     looe = LeaveOneOutEncoder(cols=attrs)
    #     looe.fit(train_data[attrs], train_data[target])
    #     self.params = {'out_all_features': all_features, 'out_transform_features': prev_transform_features,
    #                    'transform_features': attrs, 'other_features': other_features, 'train_data':train_data,
    #                    'train_data_path': train_data_path, 'preprocess_all_features': preprocess_all_features, 'looe':looe}
    #     return self.params

    # def query(self, table_name):
    #     dbms_util = DBMSUtils()

    #     transform_features = self.params['transform_features']
    #     other_features = self.params['other_features']
    #     train_data = self.params['train_data']
    #     looe = self.params['looe']

    #     # create the SQL query that implements the LeaveOneOutEncoder in SQL
    #     query = "SELECT "

    #     # loop over the preprocess features and insert them in the select clause
    #     for f in transform_features:
    #         if not ('is_push' in transform_features[f] and transform_features[f]['is_push'] or 'is_merge' in transform_features[f] and transform_features[f]['is_merge']):
    #             data_list = train_data[f]
    #             count = Counter(data_list)
    #             count = count.most_common()
    #             # get variables of target encoder
    #             looe_mapping = looe.mapping[f]
                
    #             # generate sql
    #             f = dbms_util.get_delimited_col(self.dbms, f)
    #             query += "CASE "
    #             for item in count:
    #                 ele, _ = item
    #                 query += f"WHEN {f} = '{ele}' THEN {looe_mapping.at[ele, 'sum']/looe_mapping.at[ele, 'count']} "
    #             query += f"END AS {f}, "

    #     # loop over the other features and insert them in the select clause
    #     for f in other_features:
    #         f = dbms_util.get_delimited_col(self.dbms, f)
    #         query += "{},".format(f)

    #     for f in transform_features:
    #         if 'is_push' in transform_features[f] and transform_features[f]['is_push'] or 'is_merge' in transform_features[f] and transform_features[f]['is_merge']:
    #             f = dbms_util.get_delimited_col(self.dbms, f)
    #             query += "{},".format(f)
                
    #     query = query[:-1]  # remove the last ','

    #     query += " FROM {}".format(table_name)

    #     return None, query