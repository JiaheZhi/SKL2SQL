import category_encoders
import category_encoders.binary
import category_encoders.helmert
import sklearn

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

    def __init__(self,op,name) -> None:
        self.ml_op = op
        self.field_name = name
        self.stats = None
    
    def collect(self,data):
        # X = self.ml_op.transform(data)  
        self.stats = data[self.name].value_counts()



class CON_C_CATStats(OperatorStats):
    # Originated from kbins
    # Take the converted column as input
    pass


    
    
class CAT_C_CATStats(OperatorStats):
    # Take the original column as input
    pass

        
class ExpandStats(OperatorStats):
    
    # length = len(data.shape[0]) 
    def collect(self,sub_field_len = 0):
        self.stats = []
        # X = self.ml_op.transform(data)
        if isinstance(self.op, category_encoders.binary.BinaryEncoder): 
            # mapping_col_len = 0
            mapping_col = None
            for instance in self.op.get_params()['mapping']:
                if instance['col'] == self.field_name:
                    mapping_col = instance['mapping'].columns.values.tolist()
                    # mapping_col_len = len(mapping_col)
                    
            for col in mapping_col:
                self.stats.append(1) # 1 represents 100%
        elif isinstance(self.op,sklearn.preprocessing._encoders.OneHotEncoder):
            for i in range(sub_field_len):
                self.stats.append(1)
        elif isinstance(self.op,category_encoders.helmert.HelmertEncoder):
            pass

# Statistics at micro granularity
        

# {'base': 2, 'cols': ['City', 'County'], 'drop_invariant': False, 'handle_missing': 'value', 'handle_unknown': 'value', 'mapping': [{'col': 'City', 'mapping':      City_0  City_1  City_2  City_3  City_4  City_5  City_6
#  1        0       0       0       0       0       0       1