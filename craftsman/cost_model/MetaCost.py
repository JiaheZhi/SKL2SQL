from enum import Enum
from typing import List
from craftsman.cost_model.utils import *
from craftsman.base.defs import DataType, CalculationType, OperatorType, OperatorName
from craftsman.base.operator import *

class PrimitiveType(Enum):
    IN = 1
    OR = 2
    LE = 3
    CASE = 4
    

# Model:each path's cost of specific field (tree)
class MetaCost(object):
    
    def __init__(self, path_idx, filed_idx):
        self.path_idx = path_idx
        self.filed_idx = filed_idx
        self.occurs_time = 0
        self.infos = {"in":{},"or":{},"case":{}}

    def set_occurs(self,count):
        self.occurs_time = count #TODO: extend "<=" to others:
        
    def set_cost(self, primitive=PrimitiveType.LE, length=1):
        if primitive == PrimitiveType.IN:
            if self.infos["in"][length] is None:
                self.infos["in"][length] = 1
            else:
                self.infos["in"][length] += 1
        elif primitive == PrimitiveType.OR:
            if self.infos["or"][length] is None:
                self.infos["or"][length] = 1
            else:
                self.infos["or"][length] += 1
        elif primitive == PrimitiveType.CASE:
            pass
                
                
class TreeCost(object):
    """
    cost for a field in a tree
    """

    def set_sub_field_cost_expand(cost,sub_const,threshold,org_length,primitive):
        in_length = 0
        if sub_const <= threshold:# max value
            if sub_const == 0:
                in_length = org_length
            else:
                pass # always true
        else:
            if sub_const == 0:
                pass # always false
            else:
                in_length = org_length # not in (Assuming that not_in and in have the same cost)
        
        cost.set_cost(primitive,in_length)

        return cost

    def get_tree_cost(tree,field_name,chain):
            
            tree_cost = []
            path_idx = 0
            ops = List[SQLOperator]
            ops = chain
            threshold = tree.threshold
            for path in tree_paths(tree):
                meta_cost = meta_cost(path_idx,field_name)
                times = 0
                for node in path:
                    if tree.feature[node] == field_name:
                        # no fusion
                        times += 1
                        # fusion (in)
                        # expand将x转换为x_0,x_1,...,x_n (sub_field),但在树上仍以x_i进行统计
                        # 一条元组的expand的代价是求和其走过的path_i上的所有出现的x_i的代价
                        if len(chain) == 1: #cat-c-cat/expand/con-c-cat
                            #  calculate new cost of the  tree if fuse op and the tree
                            op:SQLOperator = ops[0]
                            if op.op_type == OperatorType.CAT_C_CAT:
                                # in_length = sum(i<=threshold[node] for i in op.constant_params)
                                in_length = op.get_in_tree_len(field_name,threshold[node])
                                meta_cost.set_cost(PrimitiveType.IN,in_length)
                            elif key == "expand_sub":
                                #binaryencoder
                                meta_cost = set_sub_field_cost_expand(meta_cost,op.constant_params[field_name],threshold[node],op.variant_len[field_name],"in")          
                            # fusion (or)
                            elif op.op_type == OperatorType.CON_C_CAT: # TODO:max/min的边界情况考虑
                                # match_idx = []
                                # idx = 0
                                # for i in op.constant_params:
                                #     if i <= threshold[node]:
                                #         match_idx.append(idx)
                                #         idx += 1
                                # avglen = count_interval(match_idx) # TODO: or表达式的计算代价目前采用“平均”启发式策略，其计算方式可能需要提高(如，建立统计信息)
                                meta_cost.set_cost("or",avglen)
                        elif len(chain) == 2:
                            # (con-c-cat -> expand) -> tree
                            if chain["cfe_cost"] is not None:
                                cfe_cost = chain["cfe_cost"]
                                meta_cost = set_sub_field_cost_expand(meta_cost,op.constant_params[attribute_index],threshold[node],cfe_cost["or"][attribute_index],"or") 
                            else:
                                pass
       
                # no fusion
                meta_cost.set_occurs(times)
                tree_cost.append(meta_cost)
                path_idx += 1
            
            # Returns cost for a attribute_index in a tree (per path) 
            return tree_cost,fused_expand_cost


    """
    cost for a field in a tree model (DT,RT,etc)
    """
    def get_tree_model_cost(model, model_name,attribute_index):
        cost = None
        # iterate over each tree 
        if model_name == 'DecisionTreeClassifier':
            cost = get_tree_cost(model,attribute_index)
        elif model_name == 'RandomForestClassifier':
            trees = model.estimators_
            cost = []
            for tree_model in trees:
                cost.append(get_tree_cost(tree_model,attribute_index))
        
        # Returns cost for a attribute_index in a tree/ forest
        return cost


    '''
    Tree cost's entry function
    '''
    def get_global_cost(model, model_name,fields):
        global_cost = []
        for field in fields:
            global_cost.append(get_tree_model_cost(model,model_name,field))
        
        # Returns cost for all fields in a tree/forest
        return global_cost

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
