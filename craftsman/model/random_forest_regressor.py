from sklearn.ensemble import RandomForestRegressor
from craftsman.model.decision_tree_regressor import DecisionTreeRegressorSQLModel
from craftsman.model.base_model import TreeModel
from craftsman.base.operator import Operator
from craftsman.base.defs import ModelName
from craftsman.cost_model.cost import TreeCost

class RandomForestRegressorSQLModel(TreeModel):
    """
    This class implements the SQL wrapper for a Sklearn's Random Forest Model (RFM).

    The current random forest classifier implementation applies a majority voting technique across the forest labels,
    while Sklearn computes the the predicted class by selecting the one with highest mean probability estimate across
    the trees.
    """

    def __init__(self, trained_model: RandomForestRegressor):
        super().__init__()
        self.model_name = ModelName.RANDOMFORESTREGRESSOR
        self.trained_model = trained_model
        self.input_features = trained_model.feature_names_in_
        self.estimators = trained_model.estimators_
        self.decision_tree_regressors: list[DecisionTreeRegressorSQLModel] = []
        for estimator in self.estimators:
            decision_tree_classifier = DecisionTreeRegressorSQLModel(estimator)
            decision_tree_classifier.set_features(trained_model.feature_names_in_)
            self.decision_tree_regressors.append(decision_tree_classifier)
        self.tree_weights = [1/len(self.decision_tree_regressors)] * len(self.decision_tree_regressors)
        
    def modify_model(self, feature: str, sql_operator: Operator):
        for decision_tree_classifier in self.decision_tree_regressors:
            decision_tree_classifier.modify_model(feature, sql_operator)
            
    def modify_model_p(self, feature: str, sql_operator: Operator):
        for decision_tree_classifier in self.decision_tree_regressors:
            decision_tree_classifier.modify_model_p(feature, sql_operator)
            
    def get_tree_costs(self, feature, operator):
        tree_costs = []
        for dtc in self.decision_tree_regressors:
            tree_cost = TreeCost(feature, operator, dtc)
            tree_cost.analyze_path_fusion_cost(feature, operator, dtc)
            tree_costs.append(tree_cost)
        return tree_costs
    
    def get_tree_costs_p(self, feature, operator):
        tree_costs = []
        for dtc in self.decision_tree_regressors:
            tree_cost = TreeCost(feature, operator, dtc)
            tree_cost.analyze_path_push_cost(feature, operator, dtc)
            tree_costs.append(tree_cost)
        return tree_costs
    
    def get_tree_costs_static(self, feature):
        tree_costs = []
        for dtc in self.decision_tree_regressors:
            tree_cost = TreeCost(feature, model=dtc)
            tree_cost.analyze_path_cost(feature, dtc)
            tree_costs.append(tree_cost)
        return tree_costs

    def query(self, input_table: str, dbms: str) -> str:
        query = "SELECT "
        # loop over the trees and create a CASE statement for each tree
        for i in range(len(self.decision_tree_regressors)):
            decision_tree_classifier = self.decision_tree_regressors[i]
            sql_case = decision_tree_classifier.get_case_sql(dbms)
            sql_case += " AS tree_{},".format(i)
            query += sql_case
        query = query[:-1]  # remove the last ","
        query += " FROM {}".format(input_table)

        # combine the tree scores with a mean
        external_query = " SELECT ("
        for i in range(len(self.decision_tree_regressors)):
            tree_weight = self.tree_weights[i]
            external_query += "{} * tree_{} + ".format(tree_weight, i)

        external_query = external_query[:-3]  # remove the last ' + '
        external_query += ") AS Score"

        # combine internal and external queries in a single query
        final_query = "{} FROM ({}) AS F".format(external_query, query)

        return final_query