from sklearn.ensemble import RandomForestClassifier
from craftsman.model.decision_tree_classifier import DecisionTreeClassifierSQLModel
from craftsman.model.base_model import SQLModel

class RandomForestClassifierSQLModel(SQLModel):
    """
    This class implements the SQL wrapper for a Sklearn's Random Forest Model (RFM).

    The current random forest classifier implementation applies a majority voting technique across the forest labels,
    while Sklearn computes the the predicted class by selecting the one with highest mean probability estimate across
    the trees.
    """

    def __init__(self, trained_model: RandomForestClassifier):
        self.trained_model = trained_model
        self.input_features = trained_model.feature_names_in_
        self.estimators = trained_model.estimators_
        self.classes = trained_model.classes_
        self.decision_tree_classifiers: list[DecisionTreeClassifierSQLModel] = []
        for estimator in self.estimators:
            decision_tree_classifier = DecisionTreeClassifierSQLModel(estimator)
            decision_tree_classifier.trained_model.feature_names_in_ = trained_model.feature_names_in_
            self.decision_tree_classifiers.append(decision_tree_classifier)
        


    def query(self, imput_table: str, dbms: str) -> str:

        query = "SELECT "
        # loop over the trees and create a CASE statement for each tree
        for i in range(len(self.decision_tree_classifiers)):
            decision_tree_classifier = self.decision_tree_classifiers[i]
            sql_case = decision_tree_classifier.get_case_sql(dbms)
            sql_case += " AS tree_{},".format(i)
            query += sql_case

        query = query[:-1]  # remove the last ","

        query += " FROM {}".format(imput_table)

        # count the number of trees that have predicted the same class label
        majority_class_query = "SELECT "
        for class_ix, class_label in enumerate(self.classes):
            majority_class_query += "("

            for i in range(len(self.decision_tree_classifiers)):
                majority_class_query += "CASE WHEN tree_{} = {} THEN 1 ELSE 0 END + ".format(i, class_label)
            majority_class_query = majority_class_query[:-3]  # remove the last ' + '

            majority_class_query += ") AS class_{}, ".format(class_ix)
        majority_class_query = majority_class_query[:-2]  # remove the last ', '
        majority_class_query += " FROM ({}) AS F".format(query)

        # find the majority class label
        final_query = "SELECT "
        case_stm = "CASE"
        for i in range(len(self.classes)):
            case_stm += " WHEN "
            for j in range(len(self.classes)):
                if j == i:
                    continue
                case_stm += "class_{} >= class_{} AND ".format(i, j)
            case_stm = case_stm[:-5]  # remove the last ' AND '
            case_stm += " THEN {}\n".format(self.classes[i])
        case_stm += "END AS Score"

        final_query += "{} FROM ({}) AS F".format(case_stm, majority_class_query)

        return final_query