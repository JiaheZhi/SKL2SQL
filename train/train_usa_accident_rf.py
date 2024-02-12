import pandas as pd
from sklearn.compose import ColumnTransformer
from sklearn.ensemble import RandomForestClassifier
from sklearn.tree import DecisionTreeClassifier
from sklearn.preprocessing import StandardScaler, OneHotEncoder
from sklearn.pipeline import Pipeline
import category_encoders as ce
from joblib import dump
import time
t1 = time.perf_counter()
# load dataset
data = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv")
X = data.drop('Severity', axis=1)
y = data['Severity']
binary_encoder_cols = ['Airport_Code']
frequency_encoder_cols = ['Zipcode']
onehot_encoder_cols = ['Source', 'Timezone', 'Country']
numerical_cols = ['Temperature(F)', 'Wind_Chill(F)', 'Humidity(%)', 'Pressure(in)', 'Visibility(mi)']
udf_cols = ['Description', 'Start_Time', 'Weather_Condition']
X = X[binary_encoder_cols + frequency_encoder_cols + onehot_encoder_cols + numerical_cols + udf_cols]

# clean data
for col in X.columns:
    if len(X[col].isna().unique()) > 1:
        # X[col] = X[col].fillna(0)
        most_common_value = X[col].value_counts().idxmax()  # 获取每列中出现最多的值
        X[col].fillna(most_common_value, inplace=True)  # 使用最常见的值填充 NaN


# preprocess
binary_encoder = ce.BinaryEncoder(cols=binary_encoder_cols)
X = binary_encoder.fit_transform(X)
counter_encoder = ce.CountEncoder(cols=frequency_encoder_cols)
X = counter_encoder.fit_transform(X)
X['Description'] = X['Description'].apply(lambda row: len(str(row).split(' ')))
X['Start_Time'] = X['Start_Time'].apply(lambda time: int(str(time)[0:4])*12 + int(str(time)[5:7]))
def f(weather: str):
    bad_conditions = ['rain', 'snow', 'fog', 'wind', 'thunder', 'storm', 'drizzle', 'sand', 'whirlwind']
    weather = weather.lower()
    bad_value = 0
    for bad_cond in bad_conditions:
        if bad_cond in weather:
            bad_value += 1
    return bad_value
X['Weather_Condition'] = X['Weather_Condition'].apply(lambda weather: f(str(weather)))

# define pipline
std_scalar = StandardScaler(with_mean=False)
onehot_encoder = OneHotEncoder(handle_unknown='ignore')
pipeline_transforms = []
pipeline_transforms.append(('StandardScaler', std_scalar, numerical_cols))
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
t2 = time.perf_counter()
# save model to the file
dump(pipeline, '/root/volume/SKL2SQL/trained_model/usa_accident_rf_pipeline_deep5.joblib')

print(f'time:{t2-t1}s')