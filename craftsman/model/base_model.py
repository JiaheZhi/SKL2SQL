from abc import ABC, abstractmethod
from typing import Union
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier

from craftsman.base.operator import Operator

ModelType = Union[DecisionTreeClassifier, RandomForestClassifier]

class SQLModel(ABC):

    def __init__(self) -> None:
        self.trained_model: ModelType
        self.input_features: list[str]

    @abstractmethod
    def query(self, imput_table: str, dbms: str) -> str:
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