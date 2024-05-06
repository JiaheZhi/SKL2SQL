# coding = utf-8
# -*- coding:utf-8 -*-
import numpy as np
import onnxruntime as rt
import pandas as pd

df = pd.read_csv('./creditcard.csv')
X = df.drop('Class', axis=1)
y = df['Class']

sf = 1
X2 = X
for i in range(sf - 1):
    X2 = pd.concat([X2, X])
    print(X2.shape)

X_ = X2.values
print(X_.shape)

# model_path = './model/std/lr_model.onnx'  # scaler: 35ms, total: 44ms
# model_path = './model/pow/lr_model.onnx' # scaler: 421ms, total: 425ms
# model_path = './model/std/gb_model.onnx'  # scaler: 36ms, total: 434ms
# model_path = './model/pow/gb_model.onnx' # scalar: 430ms, total: 836ms
model_path = './model_0_24/no/rf_model.onnx' # sf=1: 0.58s; sf=10: 6.9s

op = rt.SessionOptions()
op.enable_profiling = True
op.execution_mode = rt.ExecutionMode.ORT_PARALLEL
ses = rt.InferenceSession(model_path,
                          sess_options=op,
                          providers=rt.get_available_providers())
input_name = ses.get_inputs()[0].name

pred = ses.run(["output_label"], {input_name: X_.astype(np.float32)})[0]
ses.end_profiling()
print(pred)
