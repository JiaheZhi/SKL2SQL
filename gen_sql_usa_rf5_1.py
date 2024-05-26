from craftsman.transformer_manager import TransformerManager
from craftsman.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_rf_deep5_1.joblib'
    dataset_name = 'usa_accident' 
    
    frequency_encoder_cols = ['Weather_Condition', 'Zipcode']
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
        },
        'Weather_Condition': {
            # 'impuataion_value': 'Fair',
            'impuataion_value': 768077,
            'is_push':False
        },
        'Zipcode': {
            # 'impuataion_value': '91761',
            'impuataion_value': 3336,
            'is_push':False
        }
    }

    preprocessors['FrequencyEncoder'] = {
        'attrs': {
            'Weather_Condition': {
                # 'is_push':True,
                # 'is_merge':True
            },
            'Zipcode': {
                # 'is_push':True,
                # 'is_merge':True
            },
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv',
        'method': 'join',
        # 'method': 'normal',
        'dbms': 'duckdb'
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

    pre_sql = "set threads= 4; EXPLAIN ANALYZE "

    queries, query = manager.generate_query(model_file, dataset_name, features, dbms, pre_sql
                                            , optimizations, preprocessors)
    
    with open('/root/volume/SKL2SQL/generated_sql/usa_accident_rf_deep5_join_1.sql', 'w') as sql_file:
        sql_file.write(query)
