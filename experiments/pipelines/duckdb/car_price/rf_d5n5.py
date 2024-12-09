import pathlib
from sklearn.ensemble import RandomForestRegressor
from sklearn.metrics import mean_squared_error
from sklearn.preprocessing import OneHotEncoder,MinMaxScaler
from sklearn.pipeline import Pipeline

import pandas as pd
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *


train_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Car_price/train.csv"
pipeline_save_path = pathlib.Path(__file__).parent / "./car_rfd5n5.joblib"
test_data_path = pathlib.Path(__file__).parent / "../../../../dataset/Car_price/test.csv"


# load dataset
data = pd.read_csv(train_data_path)
y = data["Price"]
X = data.drop(["Price"], axis=1)


columns = X.columns.tolist()

ordinal_cols = ['Owner_Type']
binary_cols = ['Location','Fuel_Type','Transmission','Name']
kbins_cols = ['Year','Kilometers_Driven','Engine','Power','Mileage','Seats']
count_cols = ['Brand']

all_cols =  ordinal_cols + binary_cols + kbins_cols + count_cols
X = X[all_cols]


#############################  define pipline  ##############################

# define transfomer

type_categories = ["First","Second","Third","Fourth & Above"]
ordinal_encoder = CraftsmanOrdinalEncoder(categories=[type_categories])
kbins = CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=15)
# binary_encoder = CraftsmanBinaryEncoder()
ohe = CraftsmanOneHotEncoder()
imputer = CraftsmanSimpleImputer(strategy="most_frequent")

# define model
rf = RandomForestRegressor(max_depth=6,n_estimators=3,random_state=24)


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
            ordinal_cols,
        ),
        (
            OperatorName.ONEHOTENCODER.value,
            ohe,
            binary_cols,
        ),
        (
            OperatorName.KBINSDISCRETIZER.value,
            kbins,
            kbins_cols,
        ),
         (
            OperatorName.COUNTENCODER.value,
            CraftsmanCountEncoder(),
            count_cols,
        ),
    ],
    input_data=X_copy
)
step1_column_transform = ("ColumnTransformer_step1", transformers)
# transformers_copy = clone(transformers)
X_copy = transformers.fit_transform(X_copy,y)


transformers = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        (
            OperatorName.MINMAXSCALER.value,
            MinMaxScaler(),
            ['Year','Kilometers_Driven','Engine'],
        ),
        #  (
        #     OperatorName.KBINSDISCRETIZER.value,
        #     CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=3),
        #     target_cols,
        # ),
    ],
    input_data=X_copy
)
step2_column_transform = ("ColumnTransformer_step2", transformers)

X_copy = transformers.fit_transform(X_copy, y)


step3_pipeline_estimator = (ModelName.RANDOMFORESTREGRESSOR.value, rf)

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

# test model
data_test = pd.read_csv(test_data_path)
y_test = data_test["Price"]
X_test = data_test.drop("Price", axis=1)
X_test = X_test[all_cols]

# evaluate the test result
y_predict = pipeline.predict(X_test)

print(f"RMSE: {mean_squared_error(y_predict,(y_test))}")
