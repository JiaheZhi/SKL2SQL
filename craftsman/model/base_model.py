from abc import ABC, abstractmethod
from typing import Union
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier

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