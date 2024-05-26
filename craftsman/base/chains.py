from craftsman.base.operator import SQLOperator

class PrepChain(object):

    def __init__(self) -> None:
        self.feature: str = None
        self.prep_operators: list[SQLOperator] = []