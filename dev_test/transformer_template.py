from model_transformer.utility.dbms_utils import DBMSUtils

class XXXSQL(object):

    def __init__(self):
        self.dbms = None
        self.params = None

    def get_params(self, fitted_transformer, binaryencoder_infos, all_features, prev_transform_features):

        self.params = {}
        return self.params


    def query(self, table_name):
        dbms_util = DBMSUtils()

        # create the SQL query that implements the XXX in SQL
        query = "SELECT "



        query += " FROM {}".format(table_name)

        return None, query