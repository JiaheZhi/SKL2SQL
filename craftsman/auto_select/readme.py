# 1. Selector's input (a.k.a,rewriter's output) is an eDAG (extend DAG), it looks like:
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

# 2. Invoke functions to get candidate strategies of a sub-chain (preprocessors on field_1)


# 3. Calculate cost of strategies based on static analysis and ML statistical informations


# 4. add Impute