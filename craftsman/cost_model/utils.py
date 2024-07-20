import craftsman.base.defs as defs

def tree_paths(tree, node=0, path=None):
        """
        从决策树提取所有路径
        """
        if path is None:
            path = []
        path.append(node)
        if tree.children_left[node] == tree.children_right[node]:  # 叶子节点
            yield path
        else:
            yield from tree_paths(tree, tree.children_left[node], path.copy())
            yield from tree_paths(tree, tree.children_right[node], path.copy())
            

def calc_join_cost_by_sample_data(sample_data, join_table_rows, join_table_columns ):
    # pg
    if defs.DBMS == 'postgresql':
        return len(sample_data) * (4.43204396e-05 * join_table_rows + 9.08197566e-02 * join_table_columns)
    
    # duckdb
    elif defs.DBMS == 'duckdb':
        return len(sample_data) * (1.02122041e-08 * join_table_rows + 1.02417616e-05 * join_table_columns)
    
    # duckdb
    elif defs.DBMS == 'monetdb':
        return len(sample_data) * (4.58751378e-07 * join_table_rows + 1.67787246e-03 * join_table_columns)

    # TODO: choose the accurate join cost model