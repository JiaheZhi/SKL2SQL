from pandas import DataFrame

from craftsman.base.graph import PrepGraph
from craftsman.base.operator import *


def merge_sql_operator_by_rules(preprocessing_graph: PrepGraph) -> PrepGraph:
    new_prep_graph = preprocessing_graph.get_empty_chains_graph()

    for feature, chain in preprocessing_graph.chains.items():
        if chain.prep_operators:
            first_op = chain.prep_operators[0]
            op_idx = 1
            while op_idx < len(chain.prep_operators):
                second_op = chain.prep_operators[op_idx]
                op_idx += 1
                merged_op = _merge(first_op, second_op)
                if merged_op is None:
                    new_prep_graph.chains[feature].prep_operators.append(first_op)
                    first_op = second_op
                else:
                    new_prep_graph.chains[feature].prep_operators.append(merged_op)
                    first_op = merged_op

            if chain.prep_operators and (
                not new_prep_graph.chains[feature].prep_operators
                or first_op != new_prep_graph.chains[feature].prep_operators[-1]
            ):
                new_prep_graph.chains[feature].prep_operators.append(first_op)

    return new_prep_graph


def _merge(first_op: Operator, second_op: Operator):
    rule_table_content = [
        ["simply", "simply", "disable", "disable"],
        ["apply", "apply", "apply", "disable"],#"simply"
        ["apply", "apply", "apply", "simply"],
        ["apply", "apply", "apply", "disable"],
    ]

    rule_table_index_columns = [
        OperatorType.CON_A_CON.value,
        OperatorType.CON_C_CAT.value,
        OperatorType.CAT_C_CAT.value,
        OperatorType.EXPAND.value,
    ]

    rule_table = DataFrame(
        rule_table_content,
        index=rule_table_index_columns,
        columns=rule_table_index_columns,
    )

    choice = rule_table.loc[first_op.op_type.value, second_op.op_type.value]

    if choice == "apply":
        return second_op.apply(first_op)
    elif choice == "simply":
        return first_op.simply(second_op)
    elif choice == "disable":
        return None
