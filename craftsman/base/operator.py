from __future__ import annotations

class SQLOperator(object):

    def __init__(self, op_type: str):
        self.op_type: str = op_type
        self.input_data_type: str = None
        self.output_data_type: str = None
        self.calculation_type: str = None
    

    # constant propagation
    def apply(self, first_op: SQLOperator):
        pass
     

    # algebraic simplification
    def simply(self, second_op: SQLOperator):
        pass