import pandas as pd
from sklearn.model_selection import train_test_split

# load dataset
data = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23.csv")
for i in range(len(data)):
    if not pd.isna(data.at[i, 'Description']) and data.at[i, 'Description'][-1] == '\\':
        data.at[i, 'Description'] += ' '

X = data.drop('Severity', axis=1)
y = data['Severity']

# spilt dataset into train and test 
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.7, random_state=42)

# save the spilt dataset to csv file
data_train = pd.concat((X_train, y_train), axis=1) 
data_test = pd.concat((X_test, y_test), axis=1) 

data_train.to_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv", index=False)
data_test.to_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_test.csv", index=False)

