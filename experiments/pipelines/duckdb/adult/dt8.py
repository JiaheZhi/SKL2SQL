import sys
sys.path.append("/root/volume/SKL2SQL")
from sklearn.tree import DecisionTreeClassifier
from sklearn.pipeline import Pipeline

import pandas as pd
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
import craftsman.base.defs as defs
from craftsman.utility.training_helper import *


train_data_path = "/home/postgres/craftsman_experiments/dataset/Adult/train.csv"
pipeline_save_path = "/home/postgres/craftsman_experiments/new_experiments/revision/trained_pipeline/adult/dt8.joblib"


# load dataset
data = pd.read_csv(train_data_path)
y = data["target"]
X = data.drop(["target"], axis=1)

cat_cols = ['workclass', 'education', 'marital-status', 'occupation', 'relationship', 'race', 'sex', 'native-country']
num_cols = ['age', 'fnlwgt', 'capital-gain', 'capital-loss', 'hours-per-week', ]

# 指定要删除的列名
all_cols = cat_cols + num_cols
X = X[all_cols]


#############################  define pipline  ##############################
# define steps
X_copy = X.copy()
transformer1 = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
        (
            OperatorName.KBINSDISCRETIZER.value,
            CraftsmanKBinsDiscretizer(encode="ordinal",n_bins=5),
            num_cols,
        ),
        (
            OperatorName.ONEHOTENCODER.value,
            CraftsmanOneHotEncoder(),
            cat_cols,
        )
    ],
    input_data=X_copy
)

X_copy = transformer1.fit_transform(X_copy, y)

transformer2 = CraftsmanColumnTransformer(
    remainder="passthrough",
    transformers=[
         (
            OperatorName.ONEHOTENCODER.value,
            CraftsmanOneHotEncoder(),
            num_cols,
        )
    ],
    input_data=X_copy
)

# Compose steps to build a pipeline
pipeline = Pipeline(
    steps=[
        ("ColumnTransformer_step1", transformer1), 
        ("ColumnTransformer_step2", transformer2),       
        (ModelName.DECISIONTREECLASSIFIER.value, DecisionTreeClassifier(max_depth=8, random_state=24))        
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