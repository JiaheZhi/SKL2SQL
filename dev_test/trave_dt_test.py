# from sklearn.tree import DecisionTreeClassifier
# import numpy as np

# def traverse_tree(tree, node=0):
#     if tree.children_left[node] == tree.children_right[node]:  # 叶子节点
#         print("Leaf node, class distribution:", tree.value[node])
#     else:
#         feature = tree.feature[node]
#         threshold = tree.threshold[node]
#         print(f"Internal node, feature={feature}, threshold={threshold}")
#         print("Go left:")
#         traverse_tree(tree, tree.children_left[node])
#         print("Go right:")
#         traverse_tree(tree, tree.children_right[node])

# # 创建一个示例决策树
# X = np.array([[0, 0], [1, 1], [1, 2]])
# y = np.array([0, 1, 3])
# clf = DecisionTreeClassifier()
# clf.fit(X, y)

# # 遍历决策树
# print("Traversal of the decision tree:")
# traverse_tree(clf.tree_)


import pandas as pd
from sklearn.datasets import load_iris
from sklearn.tree import DecisionTreeClassifier
from sklearn.model_selection import train_test_split
import numpy as np

# 加载数据集
iris = load_iris()
X = pd.DataFrame(iris.data, columns=iris.feature_names)
y = iris.target

# 划分训练集和测试集
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

# 训练决策树模型
model = DecisionTreeClassifier()
model.fit(X_train, y_train)

# 获取训练集中的决策路径
paths = model.decision_path(X_train)

# 获取非零元素的索引
row_indices, col_indices = paths.nonzero()

# 获取特征名称
feature_names = model.feature_names_in_

# 打印每个样本的路径以及经过的特征
for i in range(len(paths.indptr) - 1):
    start_idx = paths.indptr[i]
    end_idx = paths.indptr[i + 1]
    features_used = [feature_names[model.tree_.feature[col_indices[j]]] for j in range(start_idx, end_idx)]
    print(f"Sample {i+1} path: {features_used}")

