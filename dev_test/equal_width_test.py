import pandas as pd

data = pd.DataFrame([[1, 2, 3],[11,12,13],[21,22,23],[31,32,33]])

data[0] = pd.cut(data[0], bins=[0, 10, 20 ,30, 1000], labels=[1,2,3,4])
print(data[0])
