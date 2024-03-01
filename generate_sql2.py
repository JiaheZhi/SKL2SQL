from model_transformer.transformer_manager import TransformerManager
from model_transformer.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_rf_pipeline_deep8_1.joblib'
    dataset_name = '(usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident.\"Zipcode\", \'91761\')=usa_accident_zipcode_map."Zipcode")' 
    
    binary_encoder_cols = ['Airport_Code', ]
    # binary_encoder_cols = ['Airport_Code_0', 'Airport_Code_1', 'Airport_Code_2', 'Airport_Code_3',
    #    'Airport_Code_4', 'Airport_Code_5', 'Airport_Code_6', 'Airport_Code_7',
    #    'Airport_Code_8', 'Airport_Code_9', 'Airport_Code_10']
    frequency_encoder_cols = ['Zipcode']
    onehot_encoder_cols = ['Timezone', 'Country']
    label_encoder_cols = ['Source']
    standscaler_cols = ['Temperature(F)', 'Humidity(%)', 'Pressure(in)']
    minmaxscaler_cols = ['Wind_Chill(F)']
    equal_width_cols = ['Visibility(mi)']
    udf_cols = ['Description', 'Start_Time', 'Weather_Condition']
    features = binary_encoder_cols + frequency_encoder_cols + onehot_encoder_cols + label_encoder_cols + standscaler_cols + minmaxscaler_cols + udf_cols + equal_width_cols
    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    preprocessors = {}
    preprocessors['Imputation'] = {
        'Timezone': {
            'impuataion_value':'US/Eastern',
            'is_push':False
        },
        'Description': {
            'impuataion_value':'A crash has occurred causing no to minimum delays. Use caution.',
            'is_push':False
        },
        'Weather_Condition': {
            'impuataion_value':'Fair',
            'is_push':True
        }
    }

    preprocessors['UDF'] = {
        'Description': {
            'udf_name': 'split_line',
            'is_push': False
        },
        'Start_Time': {
            'udf_name': 'time_months',
            'is_push': True
        },
        'Weather_Condition':{
            'udf_name': 'bad_count',
            'is_push': True
        }
    }

    preprocessors['BinaryEncoder'] = {
        'attrs': {
            'Airport_Code': {
                # 'is_push':True,
                # 'is_merge':True
            }
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv',
        # 'is_merge':True
    }

    preprocessors['EqualWidthDiscretization'] = {
        'Visibility(mi)':{
            'bins': [10, 20, 30],
            'labels':[1, 2, 3, 4],
            # 'is_push': True,
            'is_merge':True
        }
    }

    preprocessors['FrequencyEncoder'] = {
        'attrs': {
            'Zipcode': {
                # 'is_push':True,
                # 'is_merge':True
            }
        },
        'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
    }

    optimizations = {
        'StandardScaler': {
            'push_attris': ['Temperature(F)'],
            'merge_attris': ['Humidity(%)'],
            'other_attris': ['Pressure(in)']
        },
        'MinMaxScaler': {
            'push_attris': [],
            'merge_attris': [],
            'other_attris': ['Wind_Chill(F)']
        },
        'OneHotEncoder':{
            'push_attris': ['Timezone'],
            'merge_attris': [],
            'other_attris': ['Country']
        },
        'OrdinalEncoder':{
            'push_attris': [],
            'merge_attris': ['Source'],
            'other_attris': []
        }
    }

    queries, query = manager.generate_query(model_file, dataset_name, features, dbms
                                            , optimizations, preprocessors=preprocessors)
    with open('/root/volume/SKL2SQL/generated_sql/usa_accident_rf_deep5_dev.sql', 'w') as sql_file:
        sql_file.write(query)

    print(query)