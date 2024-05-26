from craftsman.base.chains import PrepChain
from craftsman.model.base_model import SQLModel

class PrepGraph(object):

    def __init__(self, input_features: list[str], pipeline: dict) -> None:
        self.model: SQLModel = None
        self.chains: dict[str, PrepChain] = {}
        self.build_graph_(input_features, pipeline)

    
    def build_graph_(self, input_features: list[str], pipeline: dict) -> None:
        self.model = pipeline['model']['trained_model']
        for feature in input_features:
            self.chains[feature] = PrepChain(feature, pipeline)
        
