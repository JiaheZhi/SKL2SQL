from __future__ import annotations

from craftsman.base.chains import PrepChain
from craftsman.model.base_model import SQLModel

class PrepGraph(object):

    def __init__(self, input_features: list[str] = None, pipeline: dict = None) -> None:
        self.model: SQLModel
        self.chains: dict[str, PrepChain] = {}
        if pipeline is not None:
            self.__build_graph(input_features, pipeline)

    
    def __build_graph(self, input_features: list[str], pipeline: dict) -> None:
        self.model = pipeline['model']['trained_model']
        for feature in input_features:
            self.chains[feature] = PrepChain(feature, pipeline)
        

    def get_empty_chains_graph(self) -> PrepGraph:
        """construct a new graph with empty featrues preprocessing chains

        Returns:
            PrepGraph: new graph
        """

        new_graph = PrepGraph()
        new_graph.model = self.model
        for feature, _ in self.chains.items():
            new_graph.chains[feature] = PrepChain(feature)

        return new_graph

