from model_transformer.transformer_manager import TransformerManager
from model_transformer.utility.dbms_utils import DBMSUtils
import joblib,pickle
import sys
import numpy as np
import pandas as pd
from collections import Counter


if __name__ == '__main__':
    manager = TransformerManager()

    # model_file = '/root/volume/SKL2SQL/trained_model/rf_pipeline.joblib'
    # dataset_name = 'credit_g' 
    # features = ['purpose_0','purpose_1','purpose_2','purpose_3','employment_0','employment_1'
    #             ,'employment_2','personal_status_0','personal_status_1','personal_status_2'
    #             ,'job_0','job_1','job_2','checking_status','credit_history'
    #             ,'savings_status','housing','duration','credit_amount','age']
    # dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    # optimization = False

    # model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_rf_pipeline.joblib'
    # model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_dt_pipeline.joblib'
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
    print(classes_arr)

   

    
    
    counts = Counter(classes_arr)
    # 打印结果
    for value, count in counts.items():
        print(f"{value}: {count}")
    
    # sys.exit()
    
    def tree_paths(tree, node=0, path=None):
        """
        从决策树提取所有路径
        """
        if path is None:
            path = []
        path += [node]
        if tree.children_left[node] == tree.children_right[node]:  # 叶子节点
            yield path
        else:
            yield from tree_paths(tree, tree.children_left[node], path.copy())
            yield from tree_paths(tree, tree.children_right[node], path.copy())

    def count_negative_paths(tree, attribute_index, threshold=2):
        """
        计算决策树中负向路径的数量
        """
        negative_paths_count = 0
        for path in tree_paths(tree):
            occurrences = sum(1 for node in path if tree.feature[node] == attribute_index)
            if occurrences >= threshold:
                negative_paths_count += 1
        return negative_paths_count

    def get_negative_paths(tree, attribute_index, threshold=2):
        """
        获取决策树中负向路径
        """
        negative_paths = []
        for path in tree_paths(tree, attribute_index=attribute_index, threshold=threshold):
            occurrences = sum(1 for node in path if tree.feature[node] == attribute_index)
            if occurrences >= threshold:
                negative_paths.append(path)
        return negative_paths

    # 假设 pipeline_estimator 是你的决策树模型
    tree = model.tree_

    # 选择特定属性的索引，比如 X[24]
    attribute_index_to_check = 25

    # 统计负向路径的数量以及具体路径
    negative_paths_count = count_negative_paths(tree, attribute_index_to_check)
    # negative_paths = get_negative_paths(tree, attribute_index_to_check)

    # 打印负向路径的数量及路径
    print(f"The decision tree has {negative_paths_count} negative paths with X[{attribute_index_to_check}].")
    # for i, path in enumerate(negative_paths, start=1):
    #     print(f"Negative Path {i}: {path}")


    from sklearn import tree
    import pydotplus

    # feature_name = ["Pclass","Sex","Age","Fare","Embarked","IsAlone"]
    from six import StringIO
    dot_data = StringIO()
    tree.export_graphviz(model
    ,out_file = dot_data 
    ,filled=True
    ,rounded=True
    )
    # graph = graphviz.Source(dot_data)
    depth = 8
    graph = pydotplus.graph_from_dot_data(dot_data.getvalue())
    pdf_name='model'+str(depth)+'.pdf'
    graph.write_pdf(pdf_name)  # 写入pdf

    sys.exit()
    # model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_rf_pipeline_deep5.joblib'
    dataset_name = 'usa_accident' 
    features = ['Airport_Code_0', 'Airport_Code_1', 'Airport_Code_2', 'Airport_Code_3',
       'Airport_Code_4', 'Airport_Code_5', 'Airport_Code_6', 'Airport_Code_7',
       'Airport_Code_8', 'Airport_Code_9', 'Airport_Code_10', 'Zipcode',
       'Source', 'Timezone', 'Country', 'Temperature(F)', 'Wind_Chill(F)',
       'Humidity(%)', 'Pressure(in)', 'Visibility(mi)', 'Description',
       'Start_Time', 'Weather_Condition']
    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    optimization = False

    queries, query = manager.generate_query(model_file, dataset_name, features, dbms, optimization)
    # with open('/root/volume/SKL2SQL/generated_sql/usa_accident_rf_deep5.sql', 'w') as sql_file:
    #     sql_file.write(query)

    with open('/root/volume/SKL2SQL/generated_sql/usa_accident_dt_deep8.sql', 'w') as sql_file:
        sql_file.write(query)

    print(query)
