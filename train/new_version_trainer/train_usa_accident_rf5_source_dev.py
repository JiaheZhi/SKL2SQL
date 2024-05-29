import sys
sys.path.append("/root/volume/SKL2SQL/")
from sklearn.compose import ColumnTransformer
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler, OneHotEncoder, KBinsDiscretizer
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer
import pandas as pd
import category_encoders as ce
from craftsman.utility.loader import save_model
from craftsman.utility.to_df_transformer import NumpyToDataFrame
from craftsman.base.defs import OperatorName, ModelName

# files
tran_data_path = '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
pipeline_save_path = '/root/volume/SKL2SQL/trained_model/usa_rf_dp5_1catenc_source_dev.joblib'
test_data_path = '/root/volume/SKL2SQL/dataset/US_Accidents_March23_test_noshf.csv'


# load dataset
data = pd.read_csv(tran_data_path)
y = data['Severity']
X = data.drop('Severity', axis=1)

# choice effective columns
frequency_encoder_cols = ['Source']
onehot_encoder_cols = ['Timezone']
standscaler_cols = ['Pressure(in)']
other_cols = ['Station', 'Stop', 'Traffic_Signal']
all_cols = frequency_encoder_cols + onehot_encoder_cols + standscaler_cols + other_cols
k_bins_discretizer_cols = ['Pressure(in)']
X = X[all_cols]

# indentify the columns which have the missing values
missing_values = X.isnull().any()
missing_columns = missing_values[missing_values].index.to_list()

#############################  define pipline  ##############################
# define imputer
imputer = SimpleImputer(strategy='most_frequent')
pipeline_imputer = ('SimpleImputer', imputer)
# add steps which transformer numpy to dataframe
pipeline_to_df = ('To_df', NumpyToDataFrame())
# define transfomer
std_scalar = StandardScaler()
onehot_encoder = OneHotEncoder()
counter_encoder = ce.CountEncoder(cols=frequency_encoder_cols)
k_bins_discretizer = KBinsDiscretizer()
transformers = []
transformers.append((OperatorName.STANDARDSCALER.value, std_scalar, standscaler_cols))
transformers.append((OperatorName.ONEHOTENCODER.value, onehot_encoder, onehot_encoder_cols))
transformers.append((OperatorName.COUNTENCODER.value, counter_encoder, frequency_encoder_cols))
transformers.append((OperatorName.KBINSDISCRETIZER.value, k_bins_discretizer, k_bins_discretizer_cols))
pipeline_transforms = ('pipeline_transforms',
                        ColumnTransformer(remainder='passthrough',
                                            transformers=transformers))
# define model
rf = RandomForestClassifier(max_depth=5, n_estimators=4, random_state=24)
pipeline_estimator = (ModelName.RANDOMFORESTCLASSIFIER.value, rf)
# compose
pipeline = Pipeline(steps=[pipeline_imputer, pipeline_to_df,
                           pipeline_transforms, pipeline_estimator])
############################### end ##########################################

# train model
pipeline.fit(X, y, To_df__cols=all_cols, To_df__missing_cols=missing_columns)

# save model to the file
save_model(pipeline, pipeline_save_path)

# test model
data_test = pd.read_csv(test_data_path)
y_test = data_test['Severity']
X_test = data_test.drop('Severity', axis=1)
X_test = X_test[all_cols]

# evaluate the test result
y_predict = pipeline.predict(X_test)
accuracy = accuracy_score(y_test, y_predict)
print("Accuracy on test set:", accuracy)
