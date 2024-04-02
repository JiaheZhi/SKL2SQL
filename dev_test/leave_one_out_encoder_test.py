import pandas as pd
from category_encoders import LeaveOneOutEncoder

data = [
    ['PhD', 28300],
    ['HighSchool', 4500],
    ['Bachelor', 7500],
    ['Master', 12500],
    ['HighSchool', 4200],
    ['Master', 15000],
    ['PhD', 25000],
    ['Bachelor', 7200]
]
df = pd.DataFrame(data, columns=['Education', 'Income'])

looe = LeaveOneOutEncoder(cols=['Education'], sigma=0.1)
looe.fit(df['Education'], df['Income'])
print(looe.transform(df['Education']))
looe_mapping = looe.mapping['Education']

uq = df['Education'].unique()
looe_sql_map = {f_name:looe_mapping.at[f_name, 'sum']/looe_mapping.at[f_name, 'count'] for f_name in uq}

print(looe_sql_map)