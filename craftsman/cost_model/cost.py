from craftsman.cost_model.utils import tree_paths
from craftsman.base.defs import PrimitiveType, PrimitiveCost


class PathCost(object):
    """
    Path cost of specific field
    """

    def __init__(self, path, feature):
        self.path = path
        self.feature = feature
        self.occurs_time = 0
        self.infos = {primitive_type.value: {} for primitive_type in PrimitiveType}

    def set_occurs(self, count):
        self.occurs_time = count  # TODO: extend "<=" to others:

    def set_cost(self, primitive=PrimitiveType.LE, length=1):
        if self.infos[primitive.value].get(length):
            self.infos[primitive.value][length] += 1
        else:
            self.infos[primitive.value][length] = 1


class TreeCost(object):
    """
    Tree cost for a special field
    """

    def __init__(self, feature, operator, model) -> None:
        self.feature = feature
        self.path_costs: list[PathCost] = []
        self.n_node_samples = model.trained_model.tree_.n_node_samples

    def analyze_path_fusion_cost(self, feature, operator, model):
        tree = model.trained_model.tree_
        for path in tree_paths(tree):
            path_cost = PathCost(path, feature)
            occurs_time = 0
            for node in path:
                if model.input_features[tree.feature[node]] == feature:
                    # use for no fusion
                    occurs_time += 1
                    # use for fusion
                    primitive_type = operator.get_fusion_primitive_type(
                        feature, tree.threshold[node]
                    )
                    primitive_length = operator.get_fusion_primitive_length(
                        feature, tree.threshold[node]
                    )
                    path_cost.set_cost(primitive_type, primitive_length)

            path_cost.set_occurs(occurs_time)
            self.path_costs.append(path_cost)
            
    def analyze_path_push_cost(self, feature, operator, model):
        tree = model.trained_model.tree_
        for path in tree_paths(tree):
            path_cost = PathCost(path, feature)
            occurs_time = 0
            for node in path:
                if model.input_features[tree.feature[node]] == feature:
                    # use for no fusion
                    occurs_time += 1
                    # use for fusion
                    primitive_type = operator.get_push_primitive_type(
                        feature, tree.threshold[node]
                    )
                    primitive_length = operator.get_push_primitive_length(
                        feature, tree.threshold[node]
                    )
                    path_cost.set_cost(primitive_type, primitive_length)

            path_cost.set_occurs(occurs_time)
            self.path_costs.append(path_cost)

    def calculate_tree_cost(self):
        fusion_cost = 0
        total_infos = {}
        for path_cost in self.path_costs:
            path_leaf_node = path_cost.path[-1]
            path_quantity = self.n_node_samples[path_leaf_node]
            
            infos_with_quantity = {}
            for primitive, statistics in path_cost.infos.items():
                infos_with_quantity[primitive] = {
                    key: value * path_quantity
                    for key, value in statistics.items()
                }
                
            merged_dict = {}
            for key in set(total_infos) | set(infos_with_quantity):
                # If the key exists in both dictionaries, merge their value dictionaries
                if key in total_infos and key in infos_with_quantity:
                    merged_value = {
                        k: total_infos[key].get(k, 0) + infos_with_quantity[key].get(k, 0)
                        for k in set(total_infos[key]) | set(infos_with_quantity[key])
                    }
                else:
                    # If the key is in only one of the dictionaries, the value from that dictionary is used directly
                    merged_value = total_infos.get(key, infos_with_quantity.get(key))
                merged_dict[key] = merged_value
            total_infos = merged_dict
            
        for primitive, statistics in total_infos.items():
            fusion_cost += self.__cal_primitive_cost(primitive, statistics)
        
        return fusion_cost
    
    def __cal_primitive_cost(self, primitive, statistics):
        cost = 0
        match PrimitiveType(primitive):
            case PrimitiveType.IN:
                for length, quantity in statistics.items():
                    cost += PrimitiveCost.IN(length) * quantity
                return cost
            case PrimitiveType.OR:
                for length, quantity in statistics.items():
                    cost += (PrimitiveCost.GE_EQ.value + PrimitiveCost.LE.value) * quantity
                return cost
            case PrimitiveType.INEQUAL:
                for length, quantity in statistics.items():
                    cost += PrimitiveCost.INEQUAL.value * quantity
                return cost
            case PrimitiveType.EQUAL:
                for length, quantity in statistics.items():
                    cost += PrimitiveCost.EQUAL.value * quantity
                return cost
            case PrimitiveType.LE:
                for length, quantity in statistics.items():
                    cost += PrimitiveCost.LE.value * quantity
                return cost
            case PrimitiveType.LE_EQ:
                for length, quantity in statistics.items():
                    cost += PrimitiveCost.LE_EQ.value * quantity
                return cost
            case PrimitiveType.GE:
                for length, quantity in statistics.items():
                    cost += PrimitiveCost.GE.value * quantity
                return cost
            case PrimitiveType.GE_EQ:
                for length, quantity in statistics.items():
                    cost += PrimitiveCost.GE_EQ.value * quantity
                return cost
            
    def calculate_no_fusion_cost(self):
        no_fusion_cost = 0
        for path_cost in self.path_costs:
            path_leaf_node = path_cost.path[-1]
            path_quantity = self.n_node_samples[path_leaf_node]
            no_fusion_cost += path_quantity * path_cost.occurs_time * PrimitiveCost.LE_EQ.value
        return no_fusion_cost

    # def set_sub_field_cost_expand(cost,sub_const,threshold,org_length,primitive):
    #     in_length = 0
    #     if sub_const <= threshold:# max value
    #         if sub_const == 0:
    #             in_length = org_length
    #         else:
    #             pass # always true
    #     else:
    #         if sub_const == 0:
    #             pass # always false
    #         else:
    #             in_length = org_length # not in (Assuming that not_in and in have the same cost)

    #     cost.set_cost(primitive,in_length)

    #     return cost

    # expand将x转换为x_0,x_1,...,x_n (sub_field),但在树上仍以x_i进行统计
    # 一条元组的expand的代价是求和其走过的path_i上的所有出现的x_i的代价
    # if len(chain) == 1: #cat-c-cat/expand/con-c-cat
    #     #  calculate new cost of the  tree if fuse op and the tree
    #     op:SQLOperator = ops[0]
    #     if op.op_type == OperatorType.CAT_C_CAT:
    #         # in_length = sum(i<=threshold[node] for i in op.constant_params)
    #         in_length = op.get_in_tree_len(field_name, threshold[node])
    #         path_cost.set_cost(PrimitiveType.IN,in_length)
    #     elif key == "expand_sub":
    #         #binaryencoder
    #         path_cost = set_sub_field_cost_expand(path_cost,op.constant_params[field_name],threshold[node],op.variant_len[field_name],"in")
    #     # fusion (or)
    #     elif op.op_type == OperatorType.CON_C_CAT: # TODO:max/min的边界情况考虑
    #         # match_idx = []
    #         # idx = 0
    #         # for i in op.constant_params:
    #         #     if i <= threshold[node]:
    #         #         match_idx.append(idx)
    #         #         idx += 1
    #         # avglen = count_interval(match_idx) # TODO: or表达式的计算代价目前采用“平均”启发式策略，其计算方式可能需要提高(如，建立统计信息)
    #         avg_len = op.get_or_tree_len(field_name,threshold[node])
    #         path_cost.set_cost(PrimitiveType.OR,avg_len)
    # elif len(chain) == 2:
    #     # (con-c-cat -> expand) -> tree
    #     if chain["cfe_cost"] is not None:
    #         cfe_cost = chain["cfe_cost"]
    #         path_cost = set_sub_field_cost_expand(path_cost,op.constant_params[attribute_index],threshold[node],cfe_cost["or"][attribute_index],"or")
    #     else:
    #         pass

    # """
    # cost for a field in a tree model (DT,RT,etc)
    # """
    # def get_tree_model_cost(model, model_name,attribute_index):
    #     cost = None
    #     # iterate over each tree
    #     if model_name == 'DecisionTreeClassifier':
    #         cost = get_tree_cost(model,attribute_index)
    #     elif model_name == 'RandomForestClassifier':
    #         trees = model.estimators_
    #         cost = []
    #         for tree_model in trees:
    #             cost.append(get_tree_cost(tree_model,attribute_index))

    #     # Returns cost for a attribute_index in a tree/ forest
    #     return cost

    # '''
    # Tree cost's entry function
    # '''
    # def get_global_cost(model, model_name,fields):
    #     global_cost = []
    #     for field in fields:
    #         global_cost.append(get_tree_model_cost(model,model_name,field))

    #     # Returns cost for all fields in a tree/forest
    #     return global_cost


# OP: each path's cost
# class OperatorCost(object):

#     def __init__(self,primitive_type):
#         self.primitive_type = primitive_type
#         self.infos = []

#     # def set_cost(self,identifier,length):
#     #     self.stats[identifier] = length

#     def set_cost(self,length):
#         self.infos.append(length)

# def set_cost(self,identifier,length):
#     if self.type == "Expand":
#         self.stats["in"][identifier] = length
#     elif self.type == "Con-c-Cat" or self.type == "Cat-c-Cat":
#         self.stats["<="][identifier] = length
#     elif self.type == "cfe":# con-c-cat fuse expand
#         self.stats["or"][identifier] = length

# class ExpandCost(OperatorCost):

#     def __init__(self,primitive_type = PrimitiveType.IN ):
#         super().__init__(primitive_type)
#         self.op_type = OperatorType.EXPAND

# class CON_C_CATCost(OperatorCost):

#     def __init__(self,primitive_type = PrimitiveType.LE ):
#         super().__init__(primitive_type)
#         self.op_type = OperatorType.CON_C_CAT

# class CAT_C_CATCost(OperatorCost):

#     def __init__(self,primitive_type = PrimitiveType.LE ):
#         super().__init__(primitive_type)
#         self.op_type = OperatorType.CAT_C_CAT


# class CFECost(OperatorCost):

#     def __init__(self,primitive_type = PrimitiveType.OR ):
#         super().__init__(primitive_type)
#         self.op_type = OperatorType.TEMP
