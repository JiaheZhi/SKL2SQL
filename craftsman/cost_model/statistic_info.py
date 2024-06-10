'''
collect data distribution information, 
such as branch distribution of a tree, path distribution of an preprocessor, etc
'''


    

def get_tree_branch_distribution(model):
    branch_distribution = []
    tree = model.tree_
    n_node_samples = tree.n_node_samples
    # n_node_samples is branch distribution of a tree
    for i in range(tree.node_count):
        if tree.children_left[i] == -1:  # 叶子节点的children_left为-1
           branch_distribution.append(n_node_samples[i])

    return branch_distribution


class OperatorStats(object):

    def __init__(self) -> None:
        self.stats = []
    
    def get_path_distribution(op):
        pass



class CON_C_CATStats(OperatorStats):
    def __init__(self) -> None:
        super().__init__()
    
    def collect(op):
        pass
    def get():
        pass
    
    
class CAT_C_CATStats(OperatorStats):
    def __init__(self) -> None:
        super().__init__()
        
class ExpandStats(OperatorStats):
    def __init__(self) -> None:
        super().__init__()
        
# category_counts = df[ ].value_counts()