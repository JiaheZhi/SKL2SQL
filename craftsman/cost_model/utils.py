def count_interval(sorted_list):
    count = 1
    for i in range(1, len(sorted_list)):
        if sorted_list[i] - sorted_list[i-1] > 1:
            count += 1
    return count

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