import sys
sys.path.append("/root/volume/SKL2SQL/")
from craftsman.transformer_manager import TransformerManager
from craftsman.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    pipeline_file = '/root/volume/SKL2SQL/trained_model/usa_rf_dp5_1catenc_source_dev.joblib'
    table_name = 'usa_accident'
    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    pre_sql = "set max_parallel_workers = 1; EXPLAIN ANALYZE "

    query = manager.generate_query(pipeline_file, table_name, dbms, pre_sql)
    
    with open('/home/postgres/SKL2SQL/generated_sqls/usa_accident_rf_deep5_dev.sql', 'w') as sql_file:
        sql_file.write(query)
