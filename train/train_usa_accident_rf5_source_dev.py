import sys
sys.path.append("/root/volume/SKL2SQL/")
from model_transformer.utility.loader import save_model, load_model
from model_transformer.utility.to_df_transformer import NumpyToDataFrame
from sklearn.compose import ColumnTransformer
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.pipeline import Pipeline
from sklearn.impute import SimpleImputer
import pandas as pd
import category_encoders as ce


# load dataset
data = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv")
y = data['Severity']
X = data.drop('Severity', axis=1)


# choice effective columns
frequency_encoder_cols = ['Source']
onehot_encoder_cols = ['Timezone']
standscaler_cols = ['Pressure(in)']
other_cols = ['Station', 'Stop', 'Traffic_Signal']
all_cols = frequency_encoder_cols + onehot_encoder_cols + standscaler_cols + other_cols
X = X[all_cols]


#############################  define pipline  ##############################
# define imputer
imputer = SimpleImputer(strategy='most_frequent')
pipeline_imputer = ('Imputer', imputer)
# add steps which transformer numpy to dataframe
pipeline_to_df = ('To_df', NumpyToDataFrame())
# define transfomer
std_scalar = StandardScaler(with_mean=False)
onehot_encoder = OneHotEncoder(handle_unknown='ignore')
counter_encoder = ce.CountEncoder(cols=frequency_encoder_cols)
transformers = []
transformers.append(('StandardScaler', std_scalar, standscaler_cols))
transformers.append(('OneHotEncoder', onehot_encoder, onehot_encoder_cols))
transformers.append(('FrequencyEncoder', counter_encoder, frequency_encoder_cols))
pipeline_transforms = ('pipeline_transforms',
                        ColumnTransformer(remainder='passthrough',
                                            transformers=transformers))
# define model
rf = RandomForestClassifier(max_depth=5, n_estimators=4, random_state=24)
pipeline_estimator = ('RandomForestClassifier', rf)
# compose
pipeline = Pipeline(steps=[pipeline_imputer, pipeline_to_df, 
                           pipeline_transforms, pipeline_estimator])
############################### end ##########################################

# train model
pipeline.fit(X, y, To_df__cols=all_cols)

# save model to the file
save_model(pipeline, '/root/volume/SKL2SQL/trained_model/usa_rf_dp5_1catenc_source_dev.joblib')

# test model
data_test = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_test_noshf.csv")
y_test = data_test['Severity']
X_test = data_test.drop('Severity', axis=1)
X_test = X_test[all_cols]

# evaluate the test result
y_predict = pipeline.predict(X_test)
accuracy = accuracy_score(y_test, y_predict)
print("Accuracy on test set:", accuracy)
