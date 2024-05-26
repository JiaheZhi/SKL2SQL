import openml
from sklearn.compose import ColumnTransformer
from sklearn.ensemble import RandomForestClassifier
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.pipeline import Pipeline
import category_encoders as ce
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score
from joblib import dump
import pandas as pd

dataset = openml.datasets.get_dataset(31)
X, y, categorical_indicator, attribute_names = dataset.get_data(target=dataset.default_target_attribute)
# X.to_csv('/root/volume/MASQ/notebooks_zjh/credit_g_origin.csv', index=False)
binary_encoder_cols = ['purpose', 'employment', 'personal_status', 'job']
onehot_encoder_cols = ['checking_status', 'credit_history', 'savings_status', 'housing']
numerical_cols = ['duration', 'credit_amount', 'age']

binary_encoder = ce.BinaryEncoder(cols=binary_encoder_cols)
# onehot_encoder = ce.OneHotEncoder(cols=onehot_encoder_cols)
std_scalar = StandardScaler(with_mean=False)
onehot_encoder = OneHotEncoder(handle_unknown='ignore')

X = X[binary_encoder_cols + onehot_encoder_cols + numerical_cols]
X = binary_encoder.fit_transform(X)
# data_saved = pd.concat([X, y], axis=1)


pipeline_transforms = []
pipeline_transforms.append(('StandardScaler', std_scalar, numerical_cols))
pipeline_transforms.append(('OneHotEncoder', onehot_encoder, onehot_encoder_cols))

pipeline_transforms = sorted(pipeline_transforms, key=lambda x: x[0], reverse=True)
pipeline_transforms = ('pipeline_transforms',
                        ColumnTransformer(remainder='passthrough',
                                            transformers=pipeline_transforms))
rf = RandomForestClassifier(max_depth=10, n_estimators=4, random_state=24)
pipeline_estimator = ('RandomForestClassifier', rf)

pipeline = Pipeline(steps=[pipeline_transforms, pipeline_estimator])

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

pipeline.fit(X_train, y_train)
predictions = pipeline.predict(X_test)

accuracy = accuracy_score(y_test, predictions)

print("Accuracy:", accuracy)

dump(pipeline, '/root/volume/SKL2SQL/trained_model/rf_pipeline.joblib')