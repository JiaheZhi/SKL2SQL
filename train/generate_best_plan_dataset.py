import joblib,pickle
import sys
import numpy as np
import pandas as pd

if __name__ == '__main__':

    model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_dt_pipeline_depth_8.joblib'

    pipeline = joblib.load(model_file)
    model  = pipeline.named_steps['DecisionTreeClassifier']
    classes_arr = []
    def modify_tree(tree, node=0, path=None, attribute_index_to_count=None):
        """
        从决策树提取所有路径，并记录每个路径上 X[24] 的出现次数
        """
        if path is None:
            path = []
        path += [node]

        left_child = tree.children_left[node]
        right_child = tree.children_right[node]

        if left_child == right_child:  # 叶子节点
            # 计算路径上 X[24] 的出现次数
            occurrences = sum(1 for node in path if tree.feature[node] == attribute_index_to_count)
            classes_arr.append(occurrences)
            tree.value[node] = [[occurrences]]
            if occurrences == 0:
                tree.value[node] = [[1,0,0,0]]
            elif occurrences ==1:
                tree.value[node] = [[0,1,0,0]]
            elif occurrences ==2:
                tree.value[node] = [[0,0,1,0]]
            else:
                tree.value[node] = [[0,0,0,1]]
            # 将叶子节点的值设置为 X[24] 的出现次数
            yield path
        else:
            yield from modify_tree(tree, left_child, path.copy(), attribute_index_to_count)
            yield from modify_tree(tree, right_child, path.copy(), attribute_index_to_count)

    # 假设 pipeline_estimator 是你的决策树模型
    tree = model.tree_
    model.classes_[0] = 0
    model.classes_[1] = 1
    model.classes_[2] = 2
    model.classes_[3] = 3

    # 选择特定属性的索引，比如 X[24]
    attribute_index_to_count = 25

    # 修改决策树的路径并设置叶子节点的值
    for _ in modify_tree(tree, attribute_index_to_count=attribute_index_to_count):
        pass
    
    def get_leaf_values(tree, node_id=0):
        if tree.children_left[node_id] == -1:  # 判断是否是叶子节点
            return tree.value[node_id]
        else:
            left_child = get_leaf_values(tree, tree.children_left[node_id])
            right_child = get_leaf_values(tree, tree.children_right[node_id])
            return left_child + right_child
    
    leaf_values = [get_leaf_values(tree, i) for i in range(tree.node_count) if tree.children_left[i] == -1]

    # 打印叶子节点的输出值
    for i, values in enumerate(leaf_values):
        print(f"叶子节点 {i} 的输出值： {values}")
    # print(classes_arr)
    #保存修改后的树
    pipeline.named_steps['DecisionTreeClassifier'] = model
    print("model has been modified.\n")


    # 树的修改完成，开始通过预测打标签
    # data = pd.read_csv("/tmp/US_Accidents_March23_test_head.csv",low_memory=False)
    data = pd.read_csv("/tmp/US_Accidents_March23_test_noshf.csv",low_memory=False)
    print("data loading completed.")
    # load dataset
    X = data.drop('Severity', axis=1)
    data_without_flag  = X

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


    with open('/root/volume/SKL2SQL/train/binary_enc.pkl', 'rb') as f:
        binary_encoder = pickle.load(f)
    with open('/root/volume/SKL2SQL/train/counter_enc.pkl', 'rb') as f:
        counter_encoder = pickle.load(f)

    # preprocess
    X = binary_encoder.transform(X)
    X = counter_encoder.transform(X)
    X['Description'] = X['Description'].apply(lambda row: len(str(row).split(' '))%5)
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

    print("preprocess done.\n")

    prd_y = pipeline.predict(X)

    data_without_flag['plan'] = prd_y
    print("predict done.\n")

    # data_without_flag.to_csv('usa_accident_with_plan.csv',index = False)
    data_without_flag.to_csv('usa_accident_with_plan_noshf.csv',index = False)
