import pandas as pd
from sklearn.compose import ColumnTransformer
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import accuracy_score
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.pipeline import Pipeline
import category_encoders as ce
from joblib import dump

# load dataset
data = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv")
X = data.drop('Severity', axis=1)
y = data['Severity']

# choice effective columns
frequency_encoder_cols = ['Weather_Condition', 'Zipcode']
onehot_encoder_cols = ['Timezone']
standscaler_cols = ['Pressure(in)']
other_cols = ['Station', 'Stop', 'Traffic_Signal']
X = X[frequency_encoder_cols + onehot_encoder_cols + standscaler_cols + other_cols]

# clean data
for col in X.columns:
    if len(X[col].isna().unique()) > 1:
        most_common_value = X[col].value_counts().idxmax()  # get the most frequency value
        X[col].fillna(most_common_value, inplace=True)  # imputate the null value
        print(col, ':', most_common_value)

# Frequency Encoder
counter_encoder = ce.CountEncoder(cols=frequency_encoder_cols)
X = counter_encoder.fit_transform(X)

# define pipline
std_scalar = StandardScaler(with_mean=False)
onehot_encoder = OneHotEncoder(handle_unknown='ignore')
pipeline_transforms = []
pipeline_transforms.append(('StandardScaler', std_scalar, standscaler_cols))
pipeline_transforms.append(('OneHotEncoder', onehot_encoder, onehot_encoder_cols))
pipeline_transforms = sorted(pipeline_transforms, key=lambda x: x[0], reverse=True)
pipeline_transforms = ('pipeline_transforms',
                        ColumnTransformer(remainder='passthrough',
                                            transformers=pipeline_transforms))
rf = RandomForestClassifier(max_depth=5, n_estimators=4, random_state=24)
pipeline_estimator = ('RandomForestClassifier', rf)
pipeline = Pipeline(steps=[pipeline_transforms, pipeline_estimator])

# train model
pipeline.fit(X, y)

# save model to the file
dump(pipeline, '/root/volume/SKL2SQL/trained_model/usa_accident_rf_deep5_1.joblib')

# test model
data_test = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_test.csv")
X_test = data.drop('Severity', axis=1)
y_test = data['Severity']
X_test = X_test[frequency_encoder_cols + onehot_encoder_cols + standscaler_cols + other_cols]

# clean data
for col in X_test.columns:
    if len(X_test[col].isna().unique()) > 1:
        most_common_value = X_test[col].value_counts().idxmax()  # get the most frequency value
        X_test[col].fillna(most_common_value, inplace=True)  # imputate the null value

# Frequency Encoder
counter_encoder = ce.CountEncoder(cols=frequency_encoder_cols)
X_test = counter_encoder.fit_transform(X_test)

# evaluate the test result
y_predict = pipeline.predict(X_test)
accuracy = accuracy_score(y_test, y_predict)
print("Accuracy on test set:", accuracy)
    

