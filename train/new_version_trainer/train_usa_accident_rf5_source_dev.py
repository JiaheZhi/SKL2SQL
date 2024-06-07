import sys

sys.path.append("/root/volume/SKL2SQL/")
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler, OneHotEncoder, KBinsDiscretizer
from sklearn.pipeline import Pipeline

import pandas as pd
import category_encoders as ce
from craftsman.utility.loader import save_model
from craftsman.base.defs import OperatorName, ModelName
from craftsman.utility.training_helper import CraftsmanColumnTransformer, CraftsmanSimpleImputer

# files
tran_data_path = "/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv"
pipeline_save_path = "/root/volume/SKL2SQL/trained_model/usa_rf_dp5_1catenc_source_dev.joblib"
test_data_path = "/root/volume/SKL2SQL/dataset/US_Accidents_March23_test_noshf.csv"


# load dataset
data = pd.read_csv(tran_data_path)
y = data["Severity"]
X = data.drop("Severity", axis=1)

# choice effective columns
frequency_encoder_cols = ["Source"]
onehot_encoder_cols = ["Timezone"]
binary_encoder_cols = ["Weather_Condition"]
standscaler_cols = ["Pressure(in)"]
other_cols = ["Station", "Stop", "Traffic_Signal"]
all_cols = frequency_encoder_cols + onehot_encoder_cols + standscaler_cols + other_cols + binary_encoder_cols
k_bins_discretizer_cols = ["Pressure(in)"]
X = X[all_cols]


#############################  define pipline  ##############################

# define transfomer
imputer = CraftsmanSimpleImputer(strategy="most_frequent")
std_scalar = StandardScaler()
onehot_encoder = OneHotEncoder()
counter_encoder = ce.CountEncoder()
k_bins_discretizer = KBinsDiscretizer(encode="ordinal")
binary_encoder = ce.BinaryEncoder()

# define model
rf = RandomForestClassifier(max_depth=5, n_estimators=4, random_state=24)

# define steps
step1_simple_imputer = ('Imputer', imputer)
X_copy = X.copy()
X_copy = imputer.fit_transform(X_copy)

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
        ),
        (
            OperatorName.COUNTENCODER.value,
            counter_encoder,
            frequency_encoder_cols,
        ),
        (
            OperatorName.BINARYENCODER.value,
            binary_encoder,
            binary_encoder_cols
        )
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
            OperatorName.KBINSDISCRETIZER.value + '_1',
            k_bins_discretizer,
            k_bins_discretizer_cols,
        ),
        (
            OperatorName.KBINSDISCRETIZER.value + '_2',
            KBinsDiscretizer(encode="ordinal", n_bins=2, strategy='uniform'),
            ["Weather_Condition"],
        )
    ],
    input_data=X_copy
)
step3_column_transform = ("ColumnTransformer_step3", transformers)

step4_pipeline_estimator = (ModelName.RANDOMFORESTCLASSIFIER.value, rf)

# define pipline
pipeline = Pipeline(
    steps=[
        step1_simple_imputer,
        step2_column_transform,
        step3_column_transform,
        step4_pipeline_estimator,
    ]
)
############################### end ##########################################

# train model
pipeline.fit(X, y)

# save model to the file
save_model(pipeline, pipeline_save_path)

# test model
data_test = pd.read_csv(test_data_path)
y_test = data_test["Severity"]
X_test = data_test.drop("Severity", axis=1)
X_test = X_test[all_cols]

# evaluate the test result
y_predict = pipeline.predict(X_test)
accuracy = accuracy_score(y_test, y_predict)
print("Accuracy on test set:", accuracy)
