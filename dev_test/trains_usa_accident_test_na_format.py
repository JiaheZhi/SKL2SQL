import pandas as pd

# load dataset
data = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_test.csv")

data.to_csv('/tmp/US_Accidents_March23_test.csv', index=False, na_rep='', header=False)