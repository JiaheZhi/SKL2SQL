from sklearn.preprocessing import OrdinalEncoder
import numpy as np

enc = OrdinalEncoder()
enc.fit([[1,"paris"], [2, "paris"], [2, "tokyo"], [6, "amsterdam"]])
# enc.fit(np.array([1, 2, 2, 6]).reshape(-1, 1))
for i in enc.categories_:
    for j in i:
        print(type(j))