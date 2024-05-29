from sklearn.preprocessing import OneHotEncoder

# 假设我们有一个包含类别特征的数组
X = [['Male', 'First'],
     ['Female', 'Second'],
     ['Female', 'Third'],
     ['Male', 'First']]

# 创建OneHotEncoder实例
encoder = OneHotEncoder(sparse=False)

# 拟合数据并转换
X_encoded = encoder.fit_transform(X)

# 获取转换后特征的名称
feature_names = encoder.get_feature_names_out(input_features=['Gender', 'Order'])

# 构建映射表
# 获取每个特征的唯一类别值
categories = encoder.categories_

# 对于每个特征，创建一个从原始值到独热编码列索引的映射
mapping = {}
for i, feature in enumerate(categories):
    feature_mapping = dict(zip(feature, range(i * len(feature), (i + 1) * len(feature))))
    mapping['Feature' + str(i+1)] = feature_mapping

# 打印映射表
for feature, mapping_dict in mapping.items():
    print(f"{feature} Mapping:")
    for category, column_index in mapping_dict.items():
        print(f"{category} -> {feature_names[column_index]}")

# 输出独热编码数据
print("Encoded data:")
print(X_encoded)
