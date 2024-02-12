from model_transformer.transformer_manager import TransformerManager
from model_transformer.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_rf_pipeline_deep5.joblib'
    dataset_name = '(usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident.\"Zipcode\", \'91761\')=usa_accident_zipcode_map."Zipcode")' 
    
    features = ['Airport_Code_0', 'Airport_Code_1', 'Airport_Code_2', 'Airport_Code_3',
       'Airport_Code_4', 'Airport_Code_5', 'Airport_Code_6', 'Airport_Code_7',
       'Airport_Code_8', 'Airport_Code_9', 'Airport_Code_10', 'Zipcode',
       'Source', 'Timezone', 'Country', 'Temperature(F)', 'Wind_Chill(F)',
       'Humidity(%)', 'Pressure(in)', 'Visibility(mi)', 'Description',
       'Start_Time', 'Weather_Condition']
    # features = ['Airport_Code', 'Zipcode','Source', 'Timezone', 'Country', 
    #             'Temperature(F)', 'Wind_Chill(F)','Humidity(%)', 'Pressure(in)', 
    #             'Visibility(mi)', 'Description','Start_Time', 'Weather_Condition']
    dbms = DBMSUtils.get_dbms_from_str_connection('postgresql://postgres:@localhost/postgres')
    one_hot_optimization = False
    scaler_optimization = True
    preprocessors = {}
    preprocessors['Imputation'] = {
        'Timezone': 'US/Eastern',
        'Description': 'A crash has occurred causing no to minimum delays. Use caution.',
        'Weather_Condition': 'Fair',
        'Airport_Code': 'KCQT'
    }

    preprocessors['UDF'] = {
        'Description': {
            'udf_name': 'split_line',
            'is_merge': False
        },
        'Start_Time': {
            'udf_name': 'time_months',
            'is_merge': True
        },
        'Weather_Condition':{
            'udf_name': 'bad_count',
            'is_merge': True
        }
    }

    # preprocessors['BinaryEncoder'] = {
    #     'attrs': ['Airport_Code'],
    #     'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
    # }

    preprocessors['EqualWidthDiscretization'] = {
        'Visibility(mi)':{
            'bins': [10, 20, 30],
            'labels':[1, 2, 3, 4],
            'is_merge': True
        }
    }

    queries, query = manager.generate_query(model_file, dataset_name, features, dbms, one_hot_optimization, scaler_optimization
                                            , preprocessors=preprocessors)
    with open('/root/volume/SKL2SQL/generated_sql/usa_accident_rf_deep5_dev.sql', 'w') as sql_file:
        sql_file.write(query)

    print(query)