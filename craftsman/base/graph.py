from craftsman.base.chains import PrepChain
from craftsman.model.base_model import SQLModel

class PrepGraph(object):

    def __init__(self, input_features: list[str], pipeline: dict) -> None:
        self.model: SQLModel
        self.chains: dict[str, PrepChain] = {}
        self.__build_graph(input_features, pipeline)

    
    def __build_graph(self, input_features: list[str], pipeline: dict) -> None:
        self.model = pipeline['model']['trained_model']
        for feature in input_features:
            self.chains[feature] = PrepChain(feature, pipeline)
        
