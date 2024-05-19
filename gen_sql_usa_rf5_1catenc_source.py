from model_transformer.transformer_manager import TransformerManager
from model_transformer.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/SKL2SQL/trained_model/usa_rf_dp5_1catenc_source.joblib'
    dataset_name = 'usa_accident' 
    
    frequency_encoder_cols = ['Source']
    onehot_encoder_cols = ['Timezone']
    standscaler_cols = ['Pressure(in)']
    other_cols = ['Station', 'Stop', 'Traffic_Signal']
    features = frequency_encoder_cols + onehot_encoder_cols + standscaler_cols + other_cols

    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    preprocessors = {}
    preprocessors['Imputation'] = {
        'Timezone': {
            'impuataion_value': 'US/Eastern',
            'is_push':False
        },
        'Pressure(in)': {
            'impuataion_value': 29.96,
            'is_push':False
        }
    }

    preprocessors['FrequencyEncoder'] = {
        'attrs': {
            'Source': {
                # 'is_push':True,
                # 'is_merge':True
            }
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv',
        'method': 'join',
        # 'method': 'normal',
        'dbms': 'pg'
    }

    optimizations = {
        'StandardScaler': {
            'push_attris': [],
            'merge_attris': ['Pressure(in)'],
            'other_attris': []
        },
        'OneHotEncoder':{
            'push_attris': [],
            'merge_attris': ['Timezone'],
            'other_attris': []
        },
    }

    pre_sql = "set max_parallel_workers = 1; EXPLAIN ANALYZE "

    queries, query = manager.generate_query(model_file, dataset_name, features, dbms, pre_sql
                                            , optimizations, preprocessors, auto_gen=False, 
                                            test_data_path='/root/volume/SKL2SQL/dataset/US_Accidents_March23_test_noshf.csv',
                                            encoders_path='/root/volume/SKL2SQL/trained_model/category_encoders_usa_rf5_1catenc_source.joiblib')
    
    with open('/root/volume/SKL2SQL/generated_sql/usa_accident_rf_deep5_1catenc_source_join.sql', 'w') as sql_file:
        sql_file.write(query)
