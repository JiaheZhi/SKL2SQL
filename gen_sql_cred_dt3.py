from model_transformer.transformer_manager import TransformerManager
from model_transformer.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/ML_Dataset/creditcard/cred_dt_8.joblib'
    dataset_name = 'credit_card_big' 
    
    standscaler_cols = []
    other_cols = ['V17','V12']
    frequency_encoder_cols = ['Amount']
    kbins_cols=[]
    
    features = standscaler_cols + other_cols + frequency_encoder_cols + kbins_cols

    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    preprocessors = {}

    preprocessors['FrequencyEncoder'] = {
        'attrs': {
            'Amount': {
                # 'is_push':True,
                # 'is_merge':True
            }
        },
        'train_data_path': '/root/volume/ML_Dataset/creditcard/credit_train.csv',
        # 'method': 'join',
        'method': 'normal',
        'dbms': 'duckdb'
    }

    optimizations = {
        
    }

    pre_sql = "set threads= 4; EXPLAIN ANALYZE "

    queries, query = manager.generate_query(model_file, dataset_name, features, dbms, pre_sql
                                            , optimizations, preprocessors)
    
    with open('/root/volume/ML_Dataset/creditcard/cred_dt_8_case.sql', 'w') as sql_file:
        sql_file.write(query)
