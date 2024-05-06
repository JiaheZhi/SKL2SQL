# coding = utf-8
# -*- coding:utf-8 -*-
import joblib
import onnx
from skl2onnx import convert_sklearn
from skl2onnx.common.data_types import FloatTensorType

model_path0 = './model_0_24/no/rf_model.onnx.joblib'
model_path = './model_0_24/no/rf_model.onnx'
model = joblib.load(model_path0)
initial_type = [
    ('features', FloatTensorType([None, 30]))
]
model_onnx = convert_sklearn(model, initial_types=initial_type)
onnx.save_model(model_onnx, model_path)
onnx.utils.extract_model(model_path, model_path, ["features"], ["output_label"])
