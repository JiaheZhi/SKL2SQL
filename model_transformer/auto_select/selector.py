# each path's statistics of specific field
class meta_statistics(Object):
    
    def __init__(self, path_idx, filed_idx):
        self.path_idx = path_idx
        self.filed_idx = filed_idx
        self.stats = {"<=":0,"in":{},"or":{}}

     def set_stats(self, primitive="<=", length=1, count):
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

class statistics(Object):
    """
    The statistical information of number of executions of the computation primitives
    """
    # statistics of preprocessor (Expand and con-c-cat and fused ops)
    def get_prep_statistics():
        pass

    # statistics of tree model 
    def get_tree_statistics():
    


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

def get_tree_statistics(tree, attribute_index):
        """
        statistics for a attribute_index in a tree
        """
        tree_stats = []
        path_idx = 0
        meta_stats = meta_statistics(path_idx,attribute_index)
        for path in tree_paths(tree):
            no_fusion_count = 0
            for node in path:
                if tree.feature[node] == attribute_index
                    # no fusion
                    no_fusion_count += 1
                    # fusion (in)
                    edag = eDAG # global variable
                    # expand将x转换为x_0,x_1,...,x_n (sub_field),但在树上仍以x_i进行统计
                    # TODO:一条元组的expand的代价是求和其走过的path_i上的所有出现的x_i的代价
                    index = 0
                    for key, value in edag[attribute_index].items():
                        if key == "cat-c-cat":
                            in_length = sum(i<=threshold[node] for i in op.constant_params)
                            meta_stats.set_stats("in",in_length)
                        elif key == "expand":
                            #binaryencoder
                            in_length = 0
                            for field_name, value in op.constant_params.item(): # traverse each sub_field
                                if value <= threshold[node]:# max value
                                    if value == 0:
                                        in_length = op.variant_len[index]
                                    else:
                                        pass # always true
                                else:
                                    if value == 0:
                                        pass # always false
                                    else:
                                       in_length = op.variant_len[index] # not in (Assuming that not_in and in have the same cost)
                                meta_stats.set_stats("in",in_length)
                                index += 1
                    
                    # fusion (or)
                    # TODO:avglen = getavglength()
                    meta_stats.set_stats("or",avglen)
                    
            # no fusion
            meta_stats.set_stats(no_fusion_count)
        
            tree_stats.append(meta_stats)
            path_idx += 1
        
        # Returns statistics for a attribute_index in a tree (per path) 
        return tree_stats


def get_tree_model_stats(model, model_name,attribute_index):
    stats = None
    # iterate over each tree 
    for tree in model_:# TODO
    if model_name == 'DecisionTreeClassifier':
        stats = get_tree_statistics(model,attribute_index)
    elif model_name == 'RandomForestClassifier':
        trees = model.estimators_
        stats = []
        for tree_model in trees:
            stats.append(get_tree_statistics(model,attribute_index))
    
    # Returns statistics for a attribute_index in a tree/ forest
    return stats


'''
entry function
'''
def get_global_stats(model, model_name,fields):
    global_stats = []
    for field in fields:
        global_stats.append(get_tree_model_stats(model,model_name,field))
    
    # Returns statistics for all fields in a tree/ forest
    return global_stats

