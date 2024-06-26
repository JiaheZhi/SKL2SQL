from craftsman.base.graph import PrepGraph
from craftsman.base.defs import *
from craftsman.model.decision_tree_classifier import DecisionTreeClassifierSQLModel
from craftsman.model.decision_tree_regressor import DecisionTreeRegressorSQLModel
from craftsman.model.random_forest_classifier import RandomForestClassifierSQLModel
from craftsman.model.random_forest_regressor import RandomForestRegressorSQLModel


def merge_by_cost_model(graph: PrepGraph, train_data):
    new_prep_graph = graph.get_empty_chains_graph()

    # Tree model type
    # if isinstance(
    #     graph.model,
    #     (
    #         DecisionTreeClassifierSQLModel,
    #         RandomForestClassifierSQLModel,
    #         DecisionTreeRegressorSQLModel,
    #         RandomForestRegressorSQLModel,
    #     ),
    # ):
    for feature, chain in graph.chains.items():
        if chain.prep_operators:
            # common case: (cat-c-cat | expand | con-c-cat) + Tree
            if len(chain.prep_operators) == 1:
                op = chain.prep_operators[0]
                sql_plan: SQLPlanType = op.get_best_plan(graph, train_data)

                if sql_plan == SQLPlanType.FUSION:
                    op.fusion(new_prep_graph)
                elif sql_plan == SQLPlanType.JOIN:
                    op.join(new_prep_graph)
                elif sql_plan == SQLPlanType.PUSH:
                    op.push(new_prep_graph)
                elif sql_plan == SQLPlanType.CASE:
                    new_prep_graph.chains[feature] = chain

            # special case: con-c-cat + expand + tree
            elif len(chain.prep_operators) == 2:
                pass

    # # Other Model type
    # else:
    #     for feature, chain in graph.chains.items():
    #         new_prep_graph.chains[feature] = chain

    return new_prep_graph
