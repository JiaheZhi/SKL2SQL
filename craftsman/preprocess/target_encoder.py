from pandas import DataFrame, Series

from craftsman.base.operator import CAT_C_CAT
from craftsman.base.defs import OperatorName

class TargetEncoderSQLOperator(CAT_C_CAT):

    def __init__(self, featrues: list[str], fitted_transform):
        super().__init__(OperatorName.TARGETENCODER)
        self.features = featrues
        self._extract(fitted_transform)


    def _extract(self, fitted_transform) -> None:
        for feature in self.features:
            self.features_out.append(feature)
            target_mapping = fitted_transform.mapping[feature]
            oe = fitted_transform.ordinal_encoder
            for m in oe.mapping:
                if m['col'] == feature:
                    oe_mapping = m['mapping']
                    break
            self.mappings.append(Series(target_mapping[oe_mapping], index=oe_mapping.index))


    @staticmethod
    def trans_feature_names_in(input_data: DataFrame):
        return input_data.columns


    # def get_params(self, fitted_transformer, infos, all_features, preprocess_all_features, prev_transform_features):
    #     attrs = infos['attrs']
    #     train_data_path = infos['train_data_path']
    #     target = infos['target']
    #     other_features = [f for f in preprocess_all_features if f not in attrs]
    #     train_data = load_dataset(train_data_path)
    #     te = TargetEncoder(cols=attrs)
    #     te.fit(train_data[attrs], train_data[target])
    #     self.params = {'out_all_features': all_features, 'out_transform_features': prev_transform_features,
    #                    'transform_features': attrs, 'other_features': other_features, 'train_data':train_data,
    #                    'train_data_path': train_data_path, 'preprocess_all_features': preprocess_all_features, 'te':te}
    #     return self.params

    # def query(self, table_name):
    #     dbms_util = DBMSUtils()

    #     transform_features = self.params['transform_features']
    #     other_features = self.params['other_features']
    #     train_data = self.params['train_data']
    #     te = self.params['te']

    #     # create the SQL query that implements the TargetEncoder in SQL
    #     query = "SELECT "

    #     # loop over the preprocess features and insert them in the select clause
    #     for f in transform_features:
    #         if not ('is_push' in transform_features[f] and transform_features[f]['is_push'] or 'is_merge' in transform_features[f] and transform_features[f]['is_merge']):
    #             data_list = train_data[f]
    #             count = Counter(data_list)
    #             count = count.most_common()
    #             # get variables of target encoder
    #             te_mapping = te.mapping[f]
    #             oe = te.ordinal_encoder
    #             for m in oe.mapping:
    #                 if m['col'] == f:
    #                     oe_mapping = m['mapping']
    #                     break
    #             # generate sql
    #             f = dbms_util.get_delimited_col(self.dbms, f)
    #             query += "CASE "
    #             for item in count:
    #                 ele, _ = item
    #                 query += f"WHEN {f} = '{ele}' THEN {te_mapping[oe_mapping[ele]]} "
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