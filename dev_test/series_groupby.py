import pandas as pd

# 创建一个 Series 对象
s = pd.Series(data=[1, 2, 1, 3, 2], index=['a', 'b', 'c', 'd', 'e'])

# 对 Series 进行 groupby 操作
grouped = s.groupby(s)


# # 使用 apply 函数将每个组的索引组成一个列表
index_lists = grouped.apply(lambda x: x.index.tolist())

# # 输出结果
for l in index_lists:
    print(type(l))
