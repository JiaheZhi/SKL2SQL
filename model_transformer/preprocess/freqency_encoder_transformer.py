from model_transformer.utility.dbms_utils import DBMSUtils
from collections import Counter
import pandas as pd

class FrequencyEncoderSQL(object):

    def __init__(self):
        self.dbms = None
        self.params = None
    
    def set_dbms(self, dbms: str):
        self.dbms = dbms

    def get_params(self, fitted_transformer, infos, all_features, prev_transform_features):
        attrs = infos['attrs']
        train_data_path = infos['train_data_path']
        other_features = [f for f in all_features if f not in attrs]
        self.params = {'out_all_features': all_features, 'out_transform_features': prev_transform_features,
                       'transform_features': attrs, 'other_features': other_features,
                       'train_data_path': train_data_path}
        return self.params

    def query(self, table_name):
        dbms_util = DBMSUtils()

        transform_features = self.params['transform_features']
        other_features = self.params['other_features']
        train_data_path = self.params['train_data_path']
        train_data = pd.read_csv(train_data_path)

        # create the SQL query that implements the Frequency Encoder in SQL
        query = "SELECT "

        # loop over the preprocess features and insert them in the select clause
        for f in transform_features:
            data_list = train_data[f]
            # get the map of value to frequency
            count = Counter(data_list)
            f = dbms_util.get_delimited_col(self.dbms, f)
            query += "CASE "
            for ele, freq in count.items():
                query += f"WHEN {f} = '{ele}' THEN {freq} "
            query += f"END AS {f}, "

        # loop over the other features and insert them in the select clause
        for f in other_features:
            f = dbms_util.get_delimited_col(self.dbms, f)
            query += "{},".format(f)
        query = query[:-1]  # remove the last ','

        query += " FROM {}".format(table_name)

        return None, query