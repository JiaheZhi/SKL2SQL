# 1. Selector's input (a.k.a,rewriter's output) is an eDAG (extend DAG), it looks like:
eDAG = {
        'Source': [CountEncoderSQLOperator],
        'Timezone': [CountEncoderSQLOperator],
        'model':[Decision_Tree_Model]
    }

# 2. Invoke functions to get candidate strategies of a sub-chain (preprocessors on field_1)


# 3. Calculate cost of strategies based on static analysis and ML statistical informations


# 4. add Impute