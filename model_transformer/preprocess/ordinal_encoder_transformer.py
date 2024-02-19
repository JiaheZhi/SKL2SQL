from model_transformer.utility.dbms_utils import DBMSUtils

class OrdinalEncoderSQL(object):

    def __init__(self):
        self.dbms = None
        self.params = None

    def set_dbms(self, dbms: str):
        self.dbms = dbms

    def get_params(self, fitted_transformer, transform_features, all_features, prev_transform_features):
        categories = fitted_transformer.categories_
        self.all_features = all_features
        other_features = []
        for feature in all_features:
            if feature not in transform_features:
                other_features.append(feature)

        self.params = {'out_all_features': all_features, 'out_transform_features': transform_features,
                        'categories': categories, 'other_features': other_features}

        return self.params


    def query(self, table_name):
        dbms_util = DBMSUtils()

        encoder_features = self.params['out_transform_features']
        other_features = self.params['other_features']
        categories = self.params['categories']

        # create the SQL query that implements the OrdinalEncoder in SQL
        query = "SELECT "

        # loop over the preprocess features and insert them in the select clause
        for i in range(len(encoder_features)):
            classes = categories[i]
            f = dbms_util.get_delimited_col(self.dbms, encoder_features[i])
            query += "CASE "
            for j in range(len(classes)):
                if type(classes[j]) == str:
                    query += f'WHEN {f} = \'{classes[j]}\' THEN {j} '
                else:
                    query += f'WHEN {f} = {classes[j]} THEN {j} '
            query += f"END AS {f},"

        # loop over the other features and insert them in the select clause
        for f in other_features:
            f = dbms_util.get_delimited_col(self.dbms, f)
            query += "{},".format(f)
        query = query[:-1]  # remove the last ','

        query += " FROM {}".format(table_name)

        return None, query