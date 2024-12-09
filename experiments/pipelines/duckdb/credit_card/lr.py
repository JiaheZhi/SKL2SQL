import pathlib

from sklearn.linear_model import LogisticRegression
from sklearn.metrics import accuracy_score, f1_score, recall_score, precision_score
from sklearn.pipeline import Pipeline
from sklearn.preprocessing import StandardScaler, MinMaxScaler

import pandas as pd
import category_encoders as ce
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
from craftsman.utility.training_helper import *

# files
tran_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Credit_card/train.csv"
pipeline_save_path = pathlib.Path(__file__).parent / "./credit_card_lr.joblib"
test_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Credit_card/test.csv"


# load dataset
data = pd.read_csv(tran_data_path)
y = data["Class"]
X = data.drop("Class", axis=1)



# choice effective columns
num_cols = ["V1", "V2", "V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", 
                                    "V11", "V12", "V13", "V14", "V15", "V16", "V17", "V18", "V19", "V20",
                                    "V21", "V22", "V23", "V24", "V25", "V26", "V27", "V28"]

all_cols = num_cols
X = X[all_cols]


#############################  define pipline  ##############################

# define transfomer
minmax_scalar = MinMaxScaler()
standard_scaler = StandardScaler()
# define model
lr = LogisticRegression(C=10.0,dual=False,penalty="l2")

X_copy = X.copy()

# define steps
transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        (
            OperatorName.STANDARDSCALER.value,
            standard_scaler,
            num_cols,
        )
    ],
    input_data=X_copy
)

step1_column_transform = ("ColumnTransformer_step1", transformers)
X_copy = transformers.fit_transform(X_copy)


transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        (
            OperatorName.MINMAXSCALER.value,
            minmax_scalar,
            num_cols,
        )
    ],
    input_data=X_copy
)

step2_column_transform = ("ColumnTransformer_step2", transformers)
X_copy = transformers.fit_transform(X_copy)


# step4_pipeline_estimator = (ModelName.RANDOMFORESTCLASSIFIER.value, rf)
# step2_pipeline_estimator = (ModelName.LOGISTICREGRESSION.value, lr)
step3_pipeline_estimator = (ModelName.LOGISTICREGRESSION.value, lr)


# define pipline
pipeline = Pipeline(
    steps=[
        step1_column_transform,
        step2_column_transform,
        step3_pipeline_estimator,
    ]
)
############################### end ##########################################
pipeline.data_rows = len(X)
# train model
pipeline.fit(X, y)

# save model to the file
save_model(pipeline, pipeline_save_path)

# test model
data_test = pd.read_csv(test_data_path)
y_test = data_test["Class"]
X_test = data_test.drop("Class", axis=1)
X_test = X_test[all_cols]

# evaluate the test result
y_predict = pipeline.predict(X_test)

import os
current_file_path = os.path.abspath(__file__)
current_directory = os.path.dirname(current_file_path)
generated_file_path = os.path.join(current_directory, "q1_pred_lr.csv")
# pd.DataFrame(y_predict, columns=['data']).to_csv(generated_file_path, index=False)

accuracy = accuracy_score(y_test, y_predict)
# f1 = f1_score(y_test, y_predict,average='weighted')
# recall = recall_score(y_test, y_predict,average='weighted')
# precision = precision_score(y_test, y_predict,average='weighted')


f1 = f1_score(y_test, y_predict,average='macro')
recall = recall_score(y_test, y_predict,average='macro')
precision = precision_score(y_test, y_predict,average='macro')

print("Accuracy on test set:", accuracy)
print("F1 score on test set:", f1)
print("Recall (R) on test set:", recall)
print("Precision (P) on test set:", precision)
