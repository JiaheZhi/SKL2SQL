import sys
sys.path.append("/root/volume/SKL2SQL/")
from craftsman.transformer_manager import TransformerManager
from craftsman.utility.dbms_utils import DBMSUtils
import pandas as pd


if __name__ == '__main__':
    manager = TransformerManager()

    pipeline_file = '/root/volume/SKL2SQL/trained_model/usa_conccat_expand.joblib'
    table_name = 'usa_accident'
    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    pre_sql = "set max_parallel_workers = 1; EXPLAIN ANALYZE "
    train_data_path = '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
    train_data = pd.read_csv(train_data_path, nrows=100)

    query = manager.generate_query(pipeline_file, table_name, dbms, train_data, pre_sql)
    
    with open('temp_save/usa_conccat_expand.sql', 'w') as sql_file:
        sql_file.write(query)
