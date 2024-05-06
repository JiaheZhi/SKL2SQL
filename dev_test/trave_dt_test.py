from sklearn.tree import DecisionTreeClassifier
import numpy as np

def traverse_tree(tree, node=0):
    if tree.children_left[node] == tree.children_right[node]:  # 叶子节点
        print("Leaf node, class distribution:", tree.value[node])
    else:
        feature = tree.feature[node]
        threshold = tree.threshold[node]
        print(f"Internal node, feature={feature}, threshold={threshold}")
        print("Go left:")
        traverse_tree(tree, tree.children_left[node])
        print("Go right:")
        traverse_tree(tree, tree.children_right[node])

# 创建一个示例决策树
X = np.array([[0, 0], [1, 1], [1, 2]])
y = np.array([0, 1, 3])
clf = DecisionTreeClassifier()
clf.fit(X, y)

# 遍历决策树
print("Traversal of the decision tree:")
traverse_tree(clf.tree_)
