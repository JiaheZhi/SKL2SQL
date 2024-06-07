import numpy as np
from sklearn.tree import DecisionTreeClassifier  
from craftsman.utility.dbms_utils import DBMSUtils
from craftsman.model.base_model import SQLModel


class DecisionTreeClassifierSQLModel(SQLModel):
    """
    This class implements the SQL wrapper for a Sklearn's Decision Tree Model (DTM).
    """

    def __init__(self, trained_model: DecisionTreeClassifier):
        self.trained_model = trained_model
        # get for each node, left, right child nodes, thresholds and features
        self.left = self.trained_model.tree_.children_left  # left child for each node
        self.right = self.trained_model.tree_.children_right  # right child for each node
        self.thresholds = self.trained_model.tree_.threshold  # test threshold for each node
        self.classes = self.trained_model.classes_

    
    def get_case_sql(self, dbms: str) -> str:
        self.input_features = self.trained_model.feature_names_in_
        self.features = [self.input_features[i] for i in self.trained_model.tree_.feature]

        def visit_tree(node):
            # leaf node
            if self.left[node] == -1 and self.right[node] == -1:
                return " {} ".format(self.classes[np.argmax(self.trained_model.tree_.value[node][0])])
                
            # internal node
            op = '<='
            feature = DBMSUtils.get_delimited_col(dbms, self.features[node])
            thr = self.thresholds[node]

            sql_dtm_rule = f" CASE WHEN {feature} {op} {thr} THEN"

            # check if current node has a left child
            if self.left[node] != -1:
                sql_dtm_rule += visit_tree(self.left[node])

            sql_dtm_rule += "ELSE"

            # check if current node has a right child
            if self.right[node] != -1:
                sql_dtm_rule += visit_tree(self.right[node])

            sql_dtm_rule += "END "

            return sql_dtm_rule

        # start tree visit from the root node
        root = 0
        sql_dtm_rules = visit_tree(root)

        return sql_dtm_rules


    def query(self, imput_table: str, dbms: str) -> str:
        query = "SELECT {} AS Score".format(self.get_case_sql(dbms))
        query += " FROM {}".format(imput_table)

        return query