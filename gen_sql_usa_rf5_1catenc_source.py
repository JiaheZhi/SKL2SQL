from craftsman.transformer_manager import TransformerManager
from craftsman.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/SKL2SQL/trained_model/usa_rf_dp5_1catenc_source_dev.joblib'
    dataset_name = 'usa_accident' 
    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')

    optimizations = {
        'StandardScaler': {
            'push_attris': [],
            'merge_attris': ['Pressure(in)'],
            'other_attris': []
        },
        'OneHotEncoder':{
            'push_attris': [],
            'merge_attris': [],
            'other_attris': ['Timezone']
        },
    }

    pre_sql = "set max_parallel_workers = 1; EXPLAIN ANALYZE "

    queries, query = manager.generate_query(model_file, dataset_name, dbms, pre_sql
                                            , optimizations, auto_gen=False, 
                                            test_data_path='/root/volume/SKL2SQL/dataset/US_Accidents_March23_test_noshf.csv')
    
    with open('/root/volume/SKL2SQL/generated_sql/usa_accident_rf_deep5_1catenc_source_join.sql', 'w') as sql_file:
        sql_file.write(query)
