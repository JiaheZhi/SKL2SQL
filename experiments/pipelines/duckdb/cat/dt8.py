import pathlib

from sklearn.tree import DecisionTreeClassifier
from sklearn.preprocessing import MinMaxScaler
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.pipeline import Pipeline

import pandas as pd
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *


train_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Cat/train.csv"
pipeline_save_path = pathlib.Path(__file__).parent / "./cat_dt8.joblib"
test_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Cat/test.csv"


# load dataset
data = pd.read_csv(train_data_path)
y = data["target"]
X = data.drop(["target"], axis=1)

columns = X.columns.tolist()



scaler_cols = ["bin_1","bin_2","ord_0","day","month"] 

tens_encoder_cols = ["bin_3","bin_4","nom_0","nom_1","nom_2","nom_3","nom_4","ord_1","ord_2"] #onehot

hundreds_encoder_cols = ["nom_5","nom_6","ord_3","ord_4","ord_5"]

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
k_bins_discretizer = CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=30)

# define model
dt = DecisionTreeClassifier(max_depth=8, random_state=24)

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
             OperatorName.TARGETENCODER.value+'_1',
             CraftsmanTargetEncoder(),
             tens_encoder_cols,
        ),
         (
             OperatorName.TARGETENCODER.value+'_2',
             targetencoder,
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
         (
             OperatorName.KBINSDISCRETIZER.value+'_1',
            CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=2),
             tens_encoder_cols,
        ),
         (
             OperatorName.KBINSDISCRETIZER.value+'_2',
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


step4_pipeline_estimator = (ModelName.DECISIONTREECLASSIFIER.value, dt)

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
insert_encoders_table_to_db(pipeline)

# save model to the file
save_model(pipeline, pipeline_save_path)

# test model
data_test = pd.read_csv(test_data_path)
y_test = data_test["target"]
X_test = data_test.drop("target", axis=1)
X_test = X_test[all_cols]

# evaluate the test result
y_predict = pipeline.predict(X_test)