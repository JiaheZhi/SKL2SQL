import craftsman.base.defs as defs
import subprocess

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

    # monetdb
    elif defs.DBMS == 'monetdb':
        return len(sample_data) * (4.58751378e-07 * join_table_rows + 1.67787246e-03 * join_table_columns)

    # TODO: choose the accurate join cost model


def get_pg_sql_cost(sql: str):
    # print(sql)
    try:
        output = subprocess.check_output(
            [
                "psql",
                "-U",
                "postgres",
                "-d",
                "postgres",
                "-c",
                "set max_parallel_workers_per_gather=3;" + sql,
            ],
            stderr=subprocess.STDOUT
        )
    except Exception as e:
        print(sql)
        exit
    
    execution_cost = None
    for line in output.decode().split("\n"):
        if "cost=" in line:
            execution_cost = float(line.split("..")[1].split()[0])
            break

    
    return execution_cost


def get_craftsman_graph_cost(graph, train_data):
    cost = 0
    
    # case op cost
    for feature, chain in graph.chains.items():
        for op in chain.prep_operators:
            for feature_out in op.features_out:
                cost += op._get_op_cost(feature_out, train_data)
        
    # tree cost
    for feature in graph.model.input_features:
        if graph.model.model_name in (
            defs.ModelName.DECISIONTREECLASSIFIER,
            defs.ModelName.RANDOMFORESTCLASSIFIER,
            defs.ModelName.DECISIONTREEREGRESSOR,
            defs.ModelName.RANDOMFORESTREGRESSOR,
        ):
            tree_costs = graph.model.get_tree_costs_static(feature)
            total_tree_cost = sum(
                [tree_cost.calculate_no_fusion_cost() for tree_cost in tree_costs]
            )
            cost += total_tree_cost
    
    # join op cost
    for op in graph.join_operators:
        for feature in op.features:
            cost += op._get_join_cost_without_tree(feature, graph, train_data)
        
    return cost
        
    
