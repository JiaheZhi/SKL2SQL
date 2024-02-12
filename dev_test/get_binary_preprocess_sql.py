import pandas as pd
import category_encoders as ce
binary_encoder_cols = ['Airport_Code']


data = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv")
X = data.drop('Severity', axis=1)
y = data['Severity']
binary_encoder = ce.BinaryEncoder(cols=binary_encoder_cols)
X_binary = binary_encoder.fit_transform(X[binary_encoder_cols])
X_binary_join = pd.concat([X_binary, X[binary_encoder_cols]], axis=1)

binaryed_encoder_cols = []
one_items_str_list = []
zero_items_str_list = []
binary_preprocess_sql_list = []
for binary_col_name in binary_encoder_cols:
    binaryed_col_list = []
    for col_name in X_binary.columns:
        if binary_col_name in col_name:
            binaryed_col_list.append(col_name)
    
    X_binary_join_groupby = X_binary_join.groupby(binary_col_name)[binaryed_col_list].first()
    
    begin_str = f'CASE WHEN "{binary_col_name}" in '
    for col_name in X_binary_join_groupby.columns:
        one_index_list = []
        zero_index_list = []
        # 遍历行
        for row in range(X_binary_join_groupby.shape[0]):
            if X_binary_join_groupby.iloc[row][col_name]:
                one_index_list.append(f"'{X_binary_join_groupby.index[row]}'")
            else:
                zero_index_list.append(f"'{X_binary_join_groupby.index[row]}'")

        binaryed_encoder_cols.append(col_name)
        one_items_str_list.append(f"({','.join(one_index_list)})")
        zero_items_str_list.append(f"({','.join(zero_index_list)})")

        in_str = ""
        if(len(one_index_list) < len(zero_index_list)):
            in_str += f"({','.join(one_index_list)}) THEN 1 ELSE 0 "
        else:
            in_str += f"({','.join(zero_index_list)}) THEN 0 ELSE 1 "

        end_str = f'END AS "{col_name}"'
        binary_preprocess_sql_list.append(begin_str + in_str + end_str)
        
print(',\n'.join(binary_preprocess_sql_list))
# respond_table = pd.DataFrame({'one_str': one_items_str_list,
#                               'zero_str': zero_items_str_list}, index=binaryed_encoder_cols)

# respond_table.to_csv('/root/volume/MASQ/notebooks_zjh/prespond_sql_table.csv', index_label='col_name')
    
