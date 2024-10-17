import sys

sys.path.append("/root/volume/SKL2SQL")

from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import f1_score,accuracy_score,recall_score,precision_score
from sklearn.preprocessing import MinMaxScaler
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.pipeline import Pipeline

import pandas as pd
import category_encoders as ce
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *



train_data_path = "/home/postgres/craftsman_experiments/dataset/Cat/train.csv"
pipeline_save_path = "/home/postgres/craftsman_experiments/new_trained_pipeline/Cat/cat_rf_d5n5_count.joblib"
test_data_path = "/home/postgres/craftsman_experiments/dataset/Cat/test.csv"


# load dataset
data = pd.read_csv(train_data_path)
y = data["target"]
X = data.drop(["target"], axis=1)

columns = X.columns.tolist()


# 指定要删除的列名

scaler_cols = ["bin_1","bin_2","ord_0","day","month"] 


tens_encoder_cols = ["bin_3","bin_4","nom_0","nom_1","nom_2","nom_3","nom_4","ord_1","ord_2","nom_5","nom_6"] #onehot

hundreds_encoder_cols = ["ord_3","ord_4","ord_5"]


# tens_encoder_cols = ["bin_3","bin_4","nom_0","nom_1","nom_2","nom_3","nom_4","ord_1","ord_2"] #onehot

# hundreds_encoder_cols = ["nom_5","nom_6","ord_3","ord_4","ord_5"]

thousands_encoder_cols = ["nom_7","nom_8","nom_9"]

all_cols =  scaler_cols + tens_encoder_cols + hundreds_encoder_cols + thousands_encoder_cols
X = X[all_cols]


#############################  define pipline  ##############################

# define transfomer
minmax_scalar = MinMaxScaler()
standard_scaler = StandardScaler()
onehot_encoder = CraftsmanOneHotEncoder()
targetencoder = CraftsmanTargetEncoder()
binary_encoder = CraftsmanBinaryEncoder()
k_bins_discretizer = CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=20)

# define model
rf = RandomForestClassifier(max_depth=5,n_estimators=5,random_state=24)

# define steps
X_copy = X.copy()
transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        (
            OperatorName.MINMAXSCALER.value,
            minmax_scalar,
            scaler_cols,
        ),
        (
             OperatorName.ONEHOTENCODER.value,
             onehot_encoder,
             tens_encoder_cols,
        ),
         (
             OperatorName.COUNTENCODER.value,
             CraftsmanCountEncoder(),
             hundreds_encoder_cols,
        ),
        (
             OperatorName.BINARYENCODER.value,
             binary_encoder,
             thousands_encoder_cols,
        ),
    ],
    input_data=X_copy
)
step1_column_transform = ("ColumnTransformer_step1", transformers)
# transformers_copy = clone(transformers)
X_copy = transformers.fit_transform(X_copy, y)


transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        #  (
        #      OperatorName.KBINSDISCRETIZER.value+'_1',
        #      CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=2),
        #      tens_encoder_cols,
        # ),
         (
             OperatorName.KBINSDISCRETIZER.value,
             k_bins_discretizer,
             hundreds_encoder_cols,
        ),
    ],
    input_data=X_copy
)
step2_column_transform = ("ColumnTransformer_step2", transformers)
# transformers_copy = clone(transformers)
X_copy = transformers.fit_transform(X_copy)


transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        (
             OperatorName.STANDARDSCALER.value,
             standard_scaler,
             hundreds_encoder_cols,
        ),
    ],
    input_data=X_copy
)
step3_column_transform = ("ColumnTransformer_step3", transformers)
# transformers_copy = clone(transformers)
X_copy = transformers.fit_transform(X_copy)


step4_pipeline_estimator = (ModelName.RANDOMFORESTCLASSIFIER.value, rf)

# define pipline
pipeline = Pipeline(
    steps=[
        step1_column_transform, 
        step2_column_transform, 
        step3_column_transform,       
        step4_pipeline_estimator        
    ]
)
############################### end ##########################################
pipeline.data_rows = len(X)
print("before fit")
# train model
pipeline.fit(X, y)
print("fit done!")


# insert join tables to database
defs.DBMS = 'duckdb'
# insert_encoders_table_to_db(pipeline)

# save model to the file
save_model(pipeline, pipeline_save_path)

# # test model
# data_test = pd.read_csv(test_data_path)
# y_test = data_test["target"]
# X_test = data_test.drop("target", axis=1)
# X_test = X_test[all_cols]

# # evaluate the test result
# y_predict = pipeline.predict(X_test)



# step_models = list(pipeline.named_steps.values())
# for i in range(3):
#     X = step_models[i].transform(X)
# for i in range(3):
#     X_test = step_models[i].transform(X_test)

# print("train: \n")
# print_distribute(model,X)


# print("\n test: \n")
# print_distribute(model,X_test)