import pathlib

from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import accuracy_score, f1_score, recall_score, precision_score
from sklearn.preprocessing import StandardScaler, OneHotEncoder, KBinsDiscretizer
from sklearn.pipeline import Pipeline

import pandas as pd
import category_encoders as ce
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *
from craftsman_experiments.tool import *



tran_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Hospital/train.csv"
pipeline_save_path = pathlib.Path(__file__).parent / "./hospital_rf.joblib"
test_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Hospital/test.csv"


# load dataset
data = pd.read_csv(tran_data_path)
y = data["lengthofstay"]
X = data.drop(["lengthofstay","eid","vdate","discharged"], axis=1)


columns = X.columns.tolist()

# 指定要删除的列名
# categorical_cols = ['vdate', 'rcount','gender','discharged','facid']
categorical_cols = ['rcount','gender','facid']
numerical_columns = [col for col in columns if col not in categorical_cols]
onehot_encoder_cols = categorical_cols
standscaler_cols = numerical_columns
all_cols =  onehot_encoder_cols + standscaler_cols
print(all_cols)
X = X[all_cols]

print(all_cols)

#############################  define pipline  ##############################

# define transfomer

std_scalar = StandardScaler()
onehot_encoder = CraftsmanOneHotEncoder()

# define model
rf = RandomForestRegressor(max_depth=3,n_estimators=15,random_state=24)

# define steps
X_copy = X.copy()
transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        (
            OperatorName.STANDARDSCALER.value,
            std_scalar,
            standscaler_cols,
        ),
        (
            OperatorName.ONEHOTENCODER.value,
            onehot_encoder,
            onehot_encoder_cols,
        )
    ],
    input_data=X_copy
)
step1_column_transform = ("ColumnTransformer_step1", transformers)
# transformers_copy = clone(transformers)
X_copy = transformers.fit_transform(X_copy)

step2_pipeline_estimator = (ModelName.RANDOMFORESTREGRESSOR.value, rf)

# define pipline
pipeline = Pipeline(
    steps=[
        step1_column_transform,
        step2_pipeline_estimator
    ]
)
############################### end ##########################################
pipeline.data_rows = len(X)
# train model
pipeline.fit(X, y)

# insert join tables to database
defs.DBMS = 'duckdb'
insert_encoders_table_to_db(pipeline)

# save model to the file
save_model(pipeline, pipeline_save_path)

# test model
# data_test = pd.read_csv(test_data_path)
# y_test = data_test["lengthofstay"]
# X_test = data_test.drop("lengthofstay", axis=1)
# X_test = X_test[all_cols]

# # evaluate the test result
# y_predict = pipeline.predict(X_test)

# import os
# current_file_path = os.path.abspath(__file__)
# current_directory = os.path.dirname(current_file_path)
# generated_file_path = os.path.join(current_directory, "hospital_lr_pred.csv")
# pd.DataFrame(y_predict, columns=['data']).to_csv(generated_file_path, index=False)

# accuracy = accuracy_score(y_test, y_predict)
# f1 = f1_score(y_test, y_predict,average='macro')
# recall = recall_score(y_test, y_predict,average='macro')
# precision = precision_score(y_test, y_predict,average='macro')

# print("Accuracy on test set:", accuracy)
# print("F1 score on test set:", f1)
# print("Recall (R) on test set:", recall)
# print("Precision (P) on test set:", precision)