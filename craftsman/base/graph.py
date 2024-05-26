from craftsman.base.chains import PrepChain
from craftsman.model.base_model import SQLModel

class PrepGraph(object):

    def __init__(self, pipeline: dict) -> None:
        self.model: SQLModel = None
        self.chains: dict[str, PrepChain] = {}
        self.build_graph_(pipeline)

    
    def build_graph_(self, pipeline: dict) -> None:
        pass
