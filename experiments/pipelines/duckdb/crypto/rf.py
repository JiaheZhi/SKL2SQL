import sys
sys.path.append("/root/volume/SKL2SQL")

from sklearn.ensemble import RandomForestRegressor
from sklearn.pipeline import Pipeline

import pandas as pd
from craftsman.utility.loader import save_model
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *



train_data_path = "/home/postgres/craftsman_experiments/dataset/Crypto/train.csv"
pipeline_save_path = "/home/postgres/craftsman_experiments/revision/trained_pipeline/crypto/rf100000.joblib"


# load dataset
data = pd.read_csv(train_data_path)
data.replace([np.inf, -np.inf], np.nan, inplace=True)
data.fillna(method='pad', inplace=True)
data.fillna(method='bfill', inplace=True)
y = data["Target"]
X = data.drop(["Target"], axis=1)

columns = X.columns.tolist()
columns.remove('timestamp')

all_cols = columns
X = X[all_cols]


#############################  define pipline  ##############################

# define transfomer
k_bins_discretizer = CraftsmanKBinsDiscretizer(encode="ordinal", n_bins=100000)
imputer = CraftsmanSimpleImputer(strategy="most_frequent")

# define model
rf = RandomForestRegressor(max_depth=6, n_estimators=5, random_state=24)

# define steps
X_copy = X.copy()
step_imputer = ('Imputer', imputer)

X_copy = imputer.fit_transform(X_copy)

transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
         (
             OperatorName.KBINSDISCRETIZER.value,
             k_bins_discretizer,
             all_cols,
        )
    ],
    input_data=X_copy
)

step1_column_transform = ("ColumnTransformer_step1", transformers)

step2_pipeline_estimator = (ModelName.RANDOMFORESTREGRESSOR.value, rf)

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