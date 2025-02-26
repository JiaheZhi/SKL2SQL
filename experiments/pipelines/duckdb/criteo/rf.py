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
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *



train_data_path = "/home/postgres/craftsman_experiments/dataset/criteo/train.csv"
# train_data_path = "/home/postgres/craftsman_experiments/dataset/criteo/combined.csv"
pipeline_save_path = "/home/postgres/craftsman_experiments/revision/trained_pipeline/criteo/rf_ft.joblib"
test_data_path = "/home/postgres/craftsman_experiments/dataset/criteo/test.csv"


# load dataset
data = pd.read_csv(train_data_path)
y = data["target"]
X = data.drop(["target"], axis=1)
print(data.nunique())
columns = X.columns.tolist()


# 指定要删除的列名

num_cols = ["n1", "n2", "n3", "n4", "n5", "n6", "n7", "n8", "n9", "n10", "n11", "n12", "n13"] 

catg_cols = ["c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8", "c9", "c10", "c11", "c12", "c13","c14", "c15", "c16", "c17", "c18", "c19", "c20", "c21", "c22", "c23","c24", "c25", "c26"]


all_cols = num_cols + catg_cols
X = X[all_cols]


#############################  define pipline  ##############################

# define transfomer
# minmax_scalar = MinMaxScaler()
standard_scaler = StandardScaler()
# onehot_encoder = CraftsmanOneHotEncoder()
# binary_encoder = CraftsmanBinaryEncoder()
ordinal_encoder = CraftsmanOrdinalEncoder()

k_bins_discretizer = CraftsmanKBinsDiscretizer(encode="ordinal", n_bins=10)
# count_encoder = CraftsmanCountEncoder()
imputer = CraftsmanSimpleImputer(strategy="most_frequent")


# define model
rf = RandomForestClassifier(max_depth=6, n_estimators=5, random_state=24)

# define steps

X_copy = X.copy()
step_imputer = ('Imputer', imputer)

X_copy = imputer.fit_transform(X_copy)

transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
         (
             OperatorName.ORDINALENCODER.value,
             ordinal_encoder,
             catg_cols,
        ),
         (
             OperatorName.KBINSDISCRETIZER.value,
             k_bins_discretizer,
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
             OperatorName.STANDARDSCALER.value,
             standard_scaler,
             catg_cols,
        )
    ],
    input_data=X_copy
)
step2_column_transform = ("ColumnTransformer_step2", transformers)

step3_pipeline_estimator = (ModelName.RANDOMFORESTCLASSIFIER.value, rf)

# define pipline
pipeline = Pipeline(
    steps=[
        step_imputer,
        step1_column_transform,       
        step2_column_transform,
        step3_pipeline_estimator        
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