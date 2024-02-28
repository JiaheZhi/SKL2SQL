from model_transformer.transformer_manager import TransformerManager
from model_transformer.utility.dbms_utils import DBMSUtils


if __name__ == '__main__':
    manager = TransformerManager()

    model_file = '/root/volume/SKL2SQL/trained_model/usa_accident_rf_pipeline_deep8.joblib'
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

    # preprocessors['BinaryEncoder'] = {
    #     'attrs': ['Airport_Code'],
    #     'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
    # }

    preprocessors['EqualWidthDiscretization'] = {
        'Visibility(mi)':{
            'bins': [10, 20, 30],
            'labels':[1, 2, 3, 4],
            'is_push': True
        }
    }

    # preprocessors['FrequencyEncoder'] = {
    #     'attrs': ['Timezone'],
    #     'train_data_path': '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train.csv'
    # }

    optimizations = {
        'StandardScaler': {
            'push_attris': ['Temperature(F)'],
            'merge_attris': ['Humidity(%)'],
            'other_attris': ['Pressure(in)']
        },
        'MinMaxScaler': {
            'push_attris': ['Visibility(mi)'],
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