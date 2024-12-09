import pathlib

from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import f1_score,accuracy_score,recall_score,precision_score
from sklearn.preprocessing import MinMaxScaler
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.pipeline import Pipeline

import pandas as pd
import category_encoders as ce
from craftsman.utility.loader import save_model
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *



train_data_path = pathlib.Path(__file__).parent / "../../../../dataset/criteo/train.csv"
pipeline_save_path = pathlib.Path(__file__).parent / "./criteo_dt10_bnc.joblib"
test_data_path = pathlib.Path(__file__).parent / "../../../../dataset/criteo/test.csv"


# load dataset
data = pd.read_csv(train_data_path).head(2000000)
y = data["target"]
X = data.drop(["target"], axis=1)

columns = X.columns.tolist()


num_cols = ["n1", "n2", "n3", "n4", "n5", "n6", "n7", "n8", "n9", "n10", "n11", "n12", "n13"] 

# catg_cols = ["c1", "c2", "c5", "c6", "c7", "c8", "c9", "c10", "c11", "c13","c14", "c15", "c17", "c18", "c19", "c20", "c22", "c23", "c25"]

thousound_cols = ["c1", "c2", "c5",  "c7", "c8", "c10", "c11", "c13","c15", "c18", "c19"]

hundred_cols = ["c6","c9", "c14", "c17","c20","c22", "c23", "c25"]
                    
huge_catg = ["c3","c4","c12","c16","c21","c24","c26"]


all_cols =  num_cols + hundred_cols + thousound_cols
X = X[all_cols]


#############################  define pipline  ##############################

# define transfomer
# minmax_scalar = MinMaxScaler()
# standard_scaler = StandardScaler()
# onehot_encoder = OneHotEncoder()
binary_encoder = CraftsmanBinaryEncoder()

k_bins_discretizer = CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=12)
count_encoder = CraftsmanCountEncoder()
imputer = CraftsmanSimpleImputer(strategy="most_frequent")


# define model
dt = DecisionTreeClassifier(max_depth=8, random_state=24)

# define steps

X_copy = X.copy()
step_imputer = ('Imputer', imputer)

X_copy = imputer.fit_transform(X_copy)

transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
         (
             OperatorName.COUNTENCODER.value,
             count_encoder,
             hundred_cols,
        ),
        (
             OperatorName.BINARYENCODER.value,
             binary_encoder,
             thousound_cols,
        ),
        (
             OperatorName.KBINSDISCRETIZER.value,
             k_bins_discretizer,
             num_cols,
        ),
    ],
    input_data=X_copy
)
step1_column_transform = ("ColumnTransformer_step1", transformers)
# transformers_copy = clone(transformers)
X_copy = transformers.fit_transform(X_copy)

step2_pipeline_estimator = (ModelName.DECISIONTREECLASSIFIER.value, dt)

# define pipline
pipeline = Pipeline(
    steps=[
        step_imputer,
        step1_column_transform,       
        step2_pipeline_estimator        
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

# test model
# data_test = pd.read_csv(test_data_path)
# y_test = data_test["target"]
# X_test = data_test.drop("target", axis=1)
# X_test = X_test[all_cols]

# # evaluate the test result
# y_predict = pipeline.predict(X_test)

