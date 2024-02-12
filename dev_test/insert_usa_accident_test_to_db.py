import pandas as pd
from sqlalchemy import create_engine

# load dataset
df = pd.read_csv("/root/volume/SKL2SQL/dataset/US_Accidents_March23_test.csv")

db_name = 'test-db'
db_user = 'monetdb'
db_password = 'monetdb'
db_host = 'localhost'
db_port = '50000'

engine = create_engine(f'monetdb://{db_user}:{db_password}@{db_host}:{db_port}/{db_name}')

# 将数据插入到数据库中
table_name = 'usa_accident_test'
# data_repeated = pd.concat([data] * 1000)
# data.to_csv('/root/volume/MASQ/notebooks_zjh/credit_g_origin_100w.csv', index=False)
df.to_sql(table_name, engine, if_exists='replace', index=False)

print(df.head())
print(df.columns)
print(df.dtypes)
