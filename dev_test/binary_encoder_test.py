import category_encoders as ce
import pandas as pd

data_path = '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
df = pd.read_csv(data_path, nrows=100)
binary_encode_cols = ['City', 'County']

be = ce.BinaryEncoder(cols=binary_encode_cols)
be.fit(df[binary_encode_cols])

for f in binary_encode_cols:
    for m in be.ordinal_encoder.category_mapping:
        if m['col'] == f:
            order_mapping = m['mapping']
            break

    for m in be.mapping:
        if m['col'] == f:
            binary_mapping = m['mapping']
            break
    data = []
    for value, order in order_mapping.items():
        data.append((value,) + tuple(binary_mapping.loc[order]))
        
    print(list(binary_mapping.columns))
    
    

