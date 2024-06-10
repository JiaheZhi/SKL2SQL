from enum import Enum
from craftsman.base.defs import DataType, CalculationType, OperatorType, OperatorName

class PrimitiveType(Enum):
    IN = 1
    OR = 2
    LE = 3

# Model:each path's cost of specific field (tree)
class MetaCost(object):
    
    def __init__(self, path_idx, filed_idx):
        self.path_idx = path_idx
        self.filed_idx = filed_idx
        self.infos = {"<=":0,"in":{},"or":{}}

    def set_cost(self, primitive="<=", length=1, count = 0):
        # self.primitive = primitive
        # self.length = length
        # self.count = count
        if primitive == "<=": #TODO: extend "<=" to others:
            self.infos["<="] = count
        elif primitive == "in":
            if self.infos["in"][length] is None:
                self.infos["in"][length] = 1
            else:
                self.infos["in"][length] += 1
        elif primitive == "or":
            if self.infos["or"][length] is None:
                self.infos["or"][length] = 1
            else:
                self.infos["or"][length] += 1

# OP: each path's cost
class OperatorCost(object):
    
    def __init__(self,primitive_type):
        self.primitive_type = primitive_type
        self.infos = []
    
    # def set_cost(self,identifier,length):
    #     self.stats[identifier] = length
    
    def set_cost(self,length):
        self.infos.append(length)
      
    # def set_cost(self,identifier,length):
    #     if self.type == "Expand":
    #         self.stats["in"][identifier] = length
    #     elif self.type == "Con-c-Cat" or self.type == "Cat-c-Cat":
    #         self.stats["<="][identifier] = length
    #     elif self.type == "cfe":# con-c-cat fuse expand
    #         self.stats["or"][identifier] = length
            
class ExpandCost(OperatorCost):
    
    def __init__(self,primitive_type = PrimitiveType.IN ):
        super().__init__(primitive_type)
        self.op_type = OperatorType.EXPAND
        
class CON_C_CATCost(OperatorCost):
    
    def __init__(self,primitive_type = PrimitiveType.LE ):
        super().__init__(primitive_type)
        self.op_type = OperatorType.CON_C_CAT
    
class CAT_C_CATCost(OperatorCost):
    
    def __init__(self,primitive_type = PrimitiveType.LE ):
        super().__init__(primitive_type)
        self.op_type = OperatorType.CAT_C_CAT
        
        
class CFECost(OperatorCost):
    
    def __init__(self,primitive_type = PrimitiveType.OR ):
        super().__init__(primitive_type)
        self.op_type = OperatorType.TEMP
