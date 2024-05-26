from craftsman.utility.dbms_utils import DBMSUtils

class XXXSQL(object):

    def __init__(self):
        self.dbms = None
        self.params = None
    
    def set_dbms(self, dbms: str):
        self.dbms = dbms

    def get_params(self, fitted_transformer, infos, all_features, preprocess_all_features, prev_transform_features):

        self.params = {}
        return self.params


    def query(self, table_name):
        dbms_util = DBMSUtils()

        # create the SQL query that implements the XXX in SQL
        query = "SELECT "

        
        # loop over the preprocess features and insert them in the select clause


        # loop over the other features and insert them in the select clause

        query += " FROM {}".format(table_name)

        return None, query