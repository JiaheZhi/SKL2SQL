from craftsman.transformer_manager import TransformerManager
from craftsman.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/SKL2SQL/trained_model/usa_rf_dp5_4catenc_timezone.joblib'
    dataset_name = 'usa_accident' 
    test_data_path = '/root/volume/SKL2SQL/dataset/US_Accidents_March23_test_noshf.csv'
    encoders_path = '/root/volume/SKL2SQL/trained_model/category_encoders_usa_rf5_4catenc_timezone.joblib'
    pre_sql = "set max_parallel_workers = 1; EXPLAIN ANALYZE "
    saved_sql_path = '/root/volume/SKL2SQL/generated_sql/usa_accident_rf_deep5_4catenc_timezone_fusion.sql'
    
    
    frequency_encoder_cols = ['Timezone']
    onehot_encoder_cols = ['Source']
    standscaler_cols = ['Pressure(in)']
    target_encoder_cols = ['Wind_Direction']
    leaveoneout_encoder_cols = ['State']
    binary_encoder_cols = ['County']
    other_cols = ['Station', 'Stop', 'Traffic_Signal']
    features = frequency_encoder_cols + onehot_encoder_cols + standscaler_cols + target_encoder_cols + leaveoneout_encoder_cols + binary_encoder_cols + other_cols

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
        'Wind_Direction': {
            'impuataion_value': 'CALM',
            'is_push':False
        }
    }

    preprocessors['FrequencyEncoder'] = {
        'attrs': {
            'Timezone': {
                # 'is_push':True,
                'is_merge':True
            }
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv',
        # 'method': 'join',
        'method': 'normal',
        'dbms': 'duckdb'
    }

    preprocessors['TargetEncoder'] = {
        'attrs': {
            'Wind_Direction': {
                # 'is_push':True,
                # 'is_merge':True
            }
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv',
        'target': 'Severity',
        # 'method': 'join',
        'method': 'normal',
        'dbms': 'duckdb'
    }

    preprocessors['LeaveOneOutEncoder'] = {
        'attrs': {
            'State': {
                # 'is_push':True,
                # 'is_merge':True
            }
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv',
        'target': 'Severity',
        # 'method': 'join',
        'method': 'normal',
        'dbms': 'duckdb'
    }

    preprocessors['BinaryEncoder'] = {
        'attrs': {
            'County': {
                # 'is_push':True,
                'is_merge':True
            }
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv',
        # 'method': 'join',
        'method': 'normal',
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

    

    queries, query = manager.generate_query(model_file, dataset_name, features, dbms, pre_sql
                                            , optimizations, preprocessors, auto_gen=True, 
                                            test_data_path=test_data_path,
                                            encoders_path=encoders_path)
    
    with open(saved_sql_path, 'w') as sql_file:
        sql_file.write(query)
