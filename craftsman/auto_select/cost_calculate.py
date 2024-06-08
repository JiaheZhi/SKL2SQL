# Model:each path's cost of specific field (tree)
class meta_cost(Object):
    
    def __init__(self, path_idx, filed_idx):
        self.path_idx = path_idx
        self.filed_idx = filed_idx
        self.stats = {"<=":0,"in":{},"or":{}}

     def set_cost(self, primitive="<=", length=1, count):
        # self.primitive = primitive
        # self.length = length
        # self.count = count
        if primitive = "<=" #TODO: extend "<=" to others:
            self.stats["<="] = count
        elif primitive = "in":
            if self.stats["in"][length] is None:
                self.stats["in"][length] = 1
            else:
                self.stats["in"][length] += 1
        elif primitive = "or":
            if self.stats["or"][length] is None:
                self.stats["or"][length] = 1
            else:
                self.stats["or"][length] += 1

# OP: each path's cost
class op_cost(Object):
    
    def __init__(self,op_type):
        self.type = op_type
        # self.identifier = identifier
        self.stats = {"<=":{},"in":{},"or":{}}

     def set_cost(self,identifier,length):
        if self.type == "Expand":
            self.stats["in"][identifier] = length
        elif self.type == "Con-c-Cat" or self.type == "Cat-c-Cat":
            self.stats["<="][identifier] = length
        elif self.type == "cfe":# con-c-cat fuse expand
            self.stats["or"][identifier] = length


eDAG = {
        'field_1': {
            'op_1': specific_op, # maybe a python object
            'op_2': specific_op
        },
        'field_2': {
            'op_1': op_name,
            'op_2': op_name
        }
        'model':{
            Decision_Tree_Model
        }
    }

class cost(Object):
    """
    The statistical information of number of executions of the computation primitives
    """
    # cost of preprocessor (Expand and con-c-cat and fused ops)
    def get_prep_cost():
        pass

    # cost of tree model 
    def get_tree_cost():
    


def tree_paths(tree, node=0, path=None):
        """
        从决策树提取所有路径
        """
        if path is None:
            path = []
        path += [node]
        if tree.children_left[node] == tree.children_right[node]:  # 叶子节点
            yield path
        else:
            yield from tree_paths(tree, tree.children_left[node], path.copy())
            yield from tree_paths(tree, tree.children_right[node], path.copy())


"""
    cost for a field in a tree
"""
def get_tree_cost(tree, attribute_index):
        
        tree_cost = []
        path_idx = 0
        edag = eDAG # global variable
        chain = edag[attribute_index]
        ops = list(chain.values())
        
        for path in tree_paths(tree):
            meta_cost = meta_cost(path_idx,attribute_index)
            no_fusion_count = 0
            for node in path:
                if tree.feature[node] == attribute_index
                    # no fusion
                    no_fusion_count += 1
                    # fusion (in)
                    # expand将x转换为x_0,x_1,...,x_n (sub_field),但在树上仍以x_i进行统计
                    # 一条元组的expand的代价是求和其走过的path_i上的所有出现的x_i的代价
                    if len(chain) == 1: #cat-c-cat/expand/con-c-cat
                        #  calculate new cost of the tree if fuse op and the tree
                        key = list(chain.keys())[0]
                        op = ops[0]
                        if key == "cat-c-cat":
                            in_length = sum(i<=threshold[node] for i in op.constant_params)
                            meta_cost.set_cost("in",in_length)
                        elif key == "expand_sub":
                            #binaryencoder
                            meta_cost = set_sub_field_cost_expand(meta_cost,op.constant_params[attribute_index],threshold[node],op.variant_len[attribute_index],"in")          
                        # fusion (or)
                        elif key == "con-c-cat": # TODO:max/min的边界情况考虑
                            match_idx = []
                            idx = 0
                            for i in op.constant_params:
                                if i <= threshold[node]:
                                    match_idx.append(idx)
                                    idx += 1
                            avglen = count_interval(match_idx) # TODO: or表达式的计算代价目前采用“平均”启发式策略，其计算方式可能需要提高(如，建立统计信息)
                            meta_cost.set_cost("or",avglen)
                    elif len(edag[attribute_index]) == 2:
                        # (con-c-cat -> expand) -> tree
                        if chain["cfe_cost"] is not None:
                            cfe_cost = chain["cfe_cost"]
                            meta_cost = set_sub_field_cost_expand(meta_cost,op.constant_params[attribute_index],threshold[node],cfe_cost["or"][attribute_index],"or") 
                        else:
                            pass
                        
                        
          
            # no fusion
            meta_cost.set_cost(no_fusion_count)
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
    for tree in model_:# TODO
    if model_name == 'DecisionTreeClassifier':
        cost = get_tree_cost(model,attribute_index)
    elif model_name == 'RandomForestClassifier':
        trees = model.estimators_
        cost = []
        for tree_model in trees:
            cost.append(get_tree_cost(model,attribute_index))
    
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
                                


def get_expand_cost(op,downstream_op = None):
    op_cost = None
    if downstream_op is None:        
        op_cost = op_cost("Expand")
        if op.op_name == "BinaryEncoder":
            index = 0
            for field_name, value in op.constant_params.item(): # traverse each sub_field
                op_cost.set_cost(field_name,op.variant_len[index])
                index += 1
        else:
            pass
    else:
        if op.op_name == "BinaryEncoder":
            # transform list to dict
            params_dict = {}
            index = 0
            op_cost = op_cost("cfe")
            for param in downstream_op.constant_params:
                if params_dict[param] is None:
                    params_dict[param] = [index]
                else:
                    params_dict[param].append(index)
                index += 1
            
            comp_lens = []

            field_name_idx = 0
            field_names = list(op.variant_params.keys())
            for variant_param in op.variant_params: # traverse each sub_field
                idx_list = [params_dict.get(p) for p in variant_param]
                idx_list_merge = sum(idx_list,[]).sort()
                comp_len = count_interval(idx_list_merge) # TODO: or表达式的计算代价目前采用“平均”启发式策略，其计算方式可能需要提高(如，建立统计信息)
                op_cost.set_cost(field_names[field_name_idx],comp_lens)
        else:
            pass

    return op_cost
            

def get_conccat_cost(op,):
    cost = 0
    op_cost = op_cost("Con-c-Cat")
    for c in op.constant_params:
        set_cost(c,cost)
        cost += 1

    return op_cost


def get_catccat_cost(op):
    cost = 0
    op_cost = op_cost("Cat-c-Cat")
    for c in op.constant_params:
        set_cost(c,cost)
        cost += 1

    return op_cost

 
def get_chain_cost_info (model_name,model,field,chain):
    # op+Tree

    if model_name == "DecisionTreeClassifier" or model_name = "RandomForestClassifier":
            if len(chain) == 1: # 常见情况 cat-c-cat expand con-c-cat
                op_type = list(chain.keys())[0]
                op = list(chain.values())[0]
                # get op cost (no fusion)                     
                if op_type == "expand":
                    get_expand_cost(op)
                elif op_type == "con-c-cat":
                    get_conccat_cost(op)
                elif op_type = "cat-c-cat":
                    get_catccat_cost(op)
                
                # Join cost

            elif len(chain) == 2: #con-c-cat -> expand -> tree
                op1 = list(chain.values())[0]
                op2 = list(chain.values())[1]
                # cet t's is stored in tree_cost_info
                op1_cost = get_conccat_cost(op1)
                op2_cost = get_catccat_cost(op2)

                # c(et) et's is stored in tree_cost_info
                op1_cost = get_conccat_cost(op1)
                
                # (ce)t
                cfe_cost = get_expand_cost(op2,op1)
            
                # (cet)
                cfe_cost = get_expand_cost(op2,op1)
                # TODO: global change
                chain = eDAG[attribute_index]
                chain['cfe_cost'] = cfe_cost

    # get tree cost and fusion cost (cost_info_table)
    tree_cost_info = get_tree_model_cost(model, model_name,field)




    # op+LR


def count_interval(sorted_list):
    count = 1
    for i in range(1, len(sorted_list)):
        if sorted_list[i] - sorted_list[i-1] > 1:
            count += 1
    return count


