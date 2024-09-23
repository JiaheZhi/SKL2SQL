import numpy as np
from sklearn.tree import DecisionTreeRegressor  
from craftsman.utility.dbms_utils import DBMSUtils
from craftsman.model.base_model import TreeModel
from craftsman.base.operator import Operator
from craftsman.base.defs import ModelName
import craftsman.base.defs as defs
from craftsman.cost_model.cost import TreeCost


class DecisionTreeRegressorSQLModel(TreeModel):
    """
    This class implements the SQL wrapper for a Sklearn's Decision Tree Model (DTM).
    """

    def __init__(self, trained_model: DecisionTreeRegressor):
        super().__init__()
        self.model_name = ModelName.DECISIONTREECLASSIFIER
        self.trained_model = trained_model
        # get for each node, left, right child nodes, thresholds and features
        self.left = self.trained_model.tree_.children_left  # left child for each node
        self.right = self.trained_model.tree_.children_right  # right child for each node
        self.thresholds = self.trained_model.tree_.threshold.tolist()  # test threshold for each node
        self.ops = ['<='] * len(self.trained_model.tree_.feature)
        if hasattr(self.trained_model, 'feature_names_in_'):
            self.input_features = self.trained_model.feature_names_in_
            self.features = [DBMSUtils.get_delimited_col(defs.DBMS, self.input_features[i]) for i in self.trained_model.tree_.feature]
            self.features_origin = [self.input_features[i] for i in self.trained_model.tree_.feature]

    def set_features(self, feature_names_in):
        self.trained_model.feature_names_in_ = feature_names_in
        self.input_features = self.trained_model.feature_names_in_
        self.features = [DBMSUtils.get_delimited_col(defs.DBMS, self.input_features[i]) for i in self.trained_model.tree_.feature]
        self.features_origin = [self.input_features[i] for i in self.trained_model.tree_.feature]

    def get_case_sql(self, dbms: str) -> str:

        def visit_tree(node):
            # leaf node
            if self.left[node] == -1 and self.right[node] == -1:
                return " {} ".format(round(self.trained_model.tree_.value[node][0][0], 5))

            # internal node
            op = self.ops[node]
            thr = self.thresholds[node]

            sql_dtm_rule = f" CASE WHEN {self.features[node]} {op} {thr} THEN"

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
    
    def get_tree_costs(self, feature, operator):
        tree_cost = TreeCost(feature, operator, self)
        tree_cost.analyze_path_fusion_cost(feature, operator, self)
        return [tree_cost]
    
    def get_tree_costs_p(self, feature, operator):
        tree_cost = TreeCost(feature, operator, self)
        tree_cost.analyze_path_push_cost(feature, operator, self)
        return [tree_cost]
    
    def get_tree_costs_static(self, feature):
        tree_cost = TreeCost(feature, model=self)
        tree_cost.analyze_path_cost(feature, self)
        return [tree_cost]

    def modify_model(self, feature: str, sql_operator: Operator):
        for idx, node in enumerate(self.trained_model.tree_.feature):
            if self.input_features[node] == feature:
                self.features[idx], self.ops[idx], self.thresholds[idx] = sql_operator.modify_leaf(
                    self.features_origin[idx], self.ops[idx], self.thresholds[idx], self.features[idx]
                )
                
    def modify_model_p(self, feature: str, sql_operator: Operator):
        for idx, node in enumerate(self.trained_model.tree_.feature):
            if self.input_features[node] == feature:
                self.features[idx], self.ops[idx], self.thresholds[idx] = sql_operator.modify_leaf_p(
                    self.features_origin[idx], self.ops[idx], self.thresholds[idx]
                )

    def query(self, input_table: str, dbms: str) -> str:
        query = "SELECT {} AS Score".format(self.get_case_sql(dbms))
        query += " FROM {}".format(input_table)

        return query
