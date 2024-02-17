from sklearn.preprocessing import MinMaxScaler
data = [[-1, 2], [-0.5, 6], [0, 10], [1, 18]]
scaler = MinMaxScaler(feature_range=(1,2))
scaler.fit(data)
print(scaler.data_max_)
print(scaler.data_min_)
print(scaler.min_ + scaler.data_min_ * scaler.scale_)
print(scaler.data_range_)