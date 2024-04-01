import pandas as pd
from category_encoders import TargetEncoder

# data = [
#     ['PhD', 28300],
#     ['HighSchool', 4500],
#     ['Bachelor', 7500],
#     ['Master', 12500],
#     ['HighSchool', 4200],
#     ['Master', 15000],
#     ['PhD', 25000],
#     ['Bachelor', 7200]
# ]
# df = pd.DataFrame(data, columns=['Education', 'Income'])

# te = TargetEncoder(cols=['Education'])
# te.fit(df['Education'], df['Income'])
# te_mapping = te.mapping['Education']
# oe = te.ordinal_encoder
# for m in oe.mapping:
#     if m['col'] == 'Education':
#         oe_mapping = m['mapping']
#         break

# uq = df['Education'].unique()
# te_sql_map = {f_name:te_mapping[oe_mapping[f_name]] for f_name in uq}

# print(te_sql_map)

#--------------------------------------------------------------------------------------------

data_path = '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
df = pd.read_csv(data_path, nrows=100)
target_encode_cols = ['City', 'County']
te = TargetEncoder(cols=target_encode_cols)
te.fit(df[target_encode_cols], df['Severity'])

for col in target_encode_cols:
    te_mapping = te.mapping[col]
    oe = te.ordinal_encoder
    for m in oe.mapping:
        if m['col'] == col:
            oe_mapping = m['mapping']
            break


