from abc import ABC, abstractmethod
from typing import Union
from sklearn.tree import DecisionTreeClassifier, DecisionTreeRegressor
from sklearn.ensemble import RandomForestClassifier, RandomForestRegressor
from sklearn.linear_model import LinearRegression, LogisticRegression

from craftsman.base.operator import Operator
from craftsman.base.defs import ModelName

ModelType = Union[
    DecisionTreeClassifier,
    RandomForestClassifier,
    DecisionTreeRegressor,
    RandomForestRegressor,
    LinearRegression,
    LogisticRegression,
]


class SQLModel(ABC):

    def __init__(self) -> None:
        self.trained_model: ModelType
        self.input_features: list[str]
        self.model_name: ModelName

    @abstractmethod
    def query(self, input_table: str, dbms: str) -> str:
        """_summary_

        Args:
            imput_table (str): _description_
            dbms (str): _description_

        Returns:
            str: _description_
        """
        pass

    @abstractmethod
    def modify_model(self, feature: str, sql_operator: Operator):
        """_summary_

        Args:
            feature (str): _description_
            sql_operator (Operator): _description_
        """
        pass

    @abstractmethod
    def modify_model_p(self, feature: str, sql_operator: Operator):
        """_summary_

        Args:
            feature (str): _description_
            sql_operator (Operator): _description_
        """
        pass


class LinearModel(SQLModel):

    def __init__(self) -> None:
        super().__init__()
    
    def modify_model(self, feature: str, sql_operator: Operator):
        pass
    
    def modify_model_p(self, feature: str, sql_operator: Operator):
        pass


class TreeModel(SQLModel):

    def __init__(self) -> None:
        super().__init__()

    @abstractmethod
    def get_tree_costs(self, feature, operator):
        """_summary_

        Args:
            feature (_type_): _description_
            operator (_type_): _description_
        """
        pass

    @abstractmethod
    def get_tree_costs_p(self, feature, operator):
        """_summary_

        Args:
            feature (_type_): _description_
            operator (_type_): _description_
        """
        pass
