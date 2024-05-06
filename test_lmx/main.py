# coding = utf-8
# -*- coding:utf-8 -*-

""" 加载数据集 """
import pandas as pd

df = pd.read_csv('./creditcard.csv')
# print(df.head())
# print(df.columns)
# print('No Frauds', round(df['Class'].value_counts()[0]/len(df) * 100,2), '% of the dataset')
# print('Frauds', round(df['Class'].value_counts()[1]/len(df) * 100,2), '% of the dataset')


""" 处理数据不平衡 """
df = df.sample(frac=1)
fraud_df = df.loc[df['Class'] == 1]
non_fraud_df = df.loc[df['Class'] == 0][:fraud_df.shape[0]]
normal_distributed_df = pd.concat([fraud_df, non_fraud_df])
new_df = normal_distributed_df.sample(frac=1, random_state=42)
# print(new_df.head())
# print('Distribution of the Classes in the subsample dataset')
# print(new_df['Class'].value_counts() / len(new_df))


""" 标准化 """
from sklearn.preprocessing import StandardScaler, PowerTransformer, QuantileTransformer
from sklearn.compose import ColumnTransformer

X = new_df.drop('Class', axis=1)
y = new_df['Class']

column_transformer = ColumnTransformer(
    transformers=[
                # ('StandardScaler', StandardScaler(), slice(0, 30))
                # ('PowerTransformer', PowerTransformer(), slice(0, 30))
    ],
    remainder='passthrough'
)

column_transformer.fit(X.values)

""" 训练 """
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import GradientBoostingClassifier, RandomForestClassifier
from sklearn.model_selection import cross_val_score

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

X_train = X_train.values
X_train_std = column_transformer.transform(X_train.copy())
X_test = X_test.values
X_test_std = column_transformer.transform(X_test.copy())
y_train = y_train.values
y_test = y_test.values

classifiers = [
    ("LogisticRegression", LogisticRegression()),
    ("GradientBoostingClassifier", GradientBoostingClassifier()),
    ("RandomForestClassifier", RandomForestClassifier())
]


# classifier_tuple = classifiers[0]
# classifier = classifier_tuple[1]
# model_path = './model/std/lr_model.onnx'
# model_path = './model/pow/lr_model.onnx'
# model_path = './model/no/lr_model.onnx'

# classifier_tuple = classifiers[1]
# classifier = classifier_tuple[1]
# model_path = './model/std/gb_model.onnx'
# model_path = './model/pow/gb_model.onnx'
# model_path = './model/no/gb_model.onnx'

classifier_tuple = classifiers[2]
classifier = classifier_tuple[1]
# model_path = './model/std/rf_model.onnx'
# model_path = './model/pow/rf_model.onnx'
model_path = './model/no/rf_model.onnx'

classifier.fit(X_train_std, y_train)

training_score = cross_val_score(classifier, X_train_std, y_train, cv=5)
print("Classifiers: ", classifier.__class__.__name__, "Has a training score of", round(training_score.mean(), 2) * 100, "% accuracy score")


""" pipeline """
from sklearn.pipeline import Pipeline

model = Pipeline(
    steps=[
        ('preprocessor', column_transformer),
        (classifier_tuple[0], classifier)
    ]
)

training_score = cross_val_score(model, X_train, y_train, cv=5)
print("Classifiers: ", classifier.__class__.__name__, "Has a training score of", round(training_score.mean(), 2) * 100, "% accuracy score")


""" convert """
# from skl2onnx import convert_sklearn
# from skl2onnx.common.data_types import FloatTensorType

# initial_type = [
#     ('features', FloatTensorType([None, 30]))
# ]
# model_onnx = convert_sklearn(model, initial_types=initial_type)


""" save """
import joblib
# import onnx

if type(classifier) is RandomForestClassifier:
    joblib.dump(model, model_path + ".joblib")

# onnx.save_model(model_onnx, model_path)
# onnx.utils.extract_model(model_path, model_path, ["features"], ["output_label"])
