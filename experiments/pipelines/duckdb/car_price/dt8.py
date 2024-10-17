import sys
sys.path.append("/root/volume/SKL2SQL/")
from sklearn.tree import DecisionTreeRegressor
from sklearn.metrics import mean_squared_error
from sklearn.preprocessing import OneHotEncoder,MinMaxScaler
from sklearn.pipeline import Pipeline

import pandas as pd
import category_encoders as ce
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *


train_data_path = "/home/postgres/craftsman_experiments/dataset/Car_price/train.csv"
pipeline_save_path = "/home/postgres/craftsman_experiments/new_trained_pipeline/Car_price/car_dt6.joblib"
test_data_path = "/home/postgres/craftsman_experiments/dataset/Car_price/test.csv"


# load dataset
data = pd.read_csv(train_data_path)
y = data["Price"]
X = data.drop(["Price"], axis=1)


columns = X.columns.tolist()

# 指定要删除的列名
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
binary_encoder = CraftsmanBinaryEncoder()
imputer = CraftsmanSimpleImputer(strategy="most_frequent")

# define model
dt = DecisionTreeRegressor(max_depth=6,random_state=24)

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
            OperatorName.BINARYENCODER.value,
            binary_encoder,
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
        # (
        #     OperatorName.KBINSDISCRETIZER.value,
        #     CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=3),
        #     target_cols,
        # ),
    ],
    input_data=X_copy
)
step2_column_transform = ("ColumnTransformer_step2", transformers)

X_copy = transformers.fit_transform(X_copy, y)


step3_pipeline_estimator = (ModelName.DECISIONTREEREGRESSOR.value, dt)

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

# insert join tables to database
defs.DBMS = 'duckdb'
insert_encoders_table_to_db(pipeline)

print("fit done!")
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

# accuracy = accuracy_score(y_test, y_predict)
# f1 = f1_score(y_test, y_predict,average='macro')
# recall = recall_score(y_test, y_predict,average='macro')
# precision = precision_score(y_test, y_predict,average='macro')

# print("Accuracy on test set:", accuracy)
# print("F1 score on test set:", f1)
# print("Recall (R) on test set:", recall)
# print("Precision (P) on test set:", precision)


# model  = pipeline.named_steps[ModelName.RANDOMFORESTCLASSIFIER.value]


# step_models = list(pipeline.named_steps.values())
# for i in range(3):
#     X = step_models[i].transform(X)
# for i in range(3):
#     X_test = step_models[i].transform(X_test)

# print("train: \n")
# print_distribute(model,X)


# print("\n test: \n")
# print_distribute(model,X_test)