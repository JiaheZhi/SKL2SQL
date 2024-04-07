from collections import Counter
from model_transformer.utility.loader import load_dataset
from category_encoders import TargetEncoder, LeaveOneOutEncoder
import duckdb
import psycopg2
from psycopg2 import OperationalError

# created temp tables
temp_tables = []
# join transforme col map
join_trans_col_map = {}

def join_transformer(table_name, features, optimizations, preprocessors):
    table_sql = table_name
    for preprocessor in preprocessors:
        #------------------------------join the frequency encoder -------------------------------------------#
        if preprocessor == 'FrequencyEncoder':
            if preprocessors[preprocessor]['method'] == 'join':
                attrs = preprocessors[preprocessor]['attrs']
                train_data_path = preprocessors[preprocessor]['train_data_path']
                dbms = preprocessors[preprocessor]['dbms']
                train_data = load_dataset(train_data_path)
                for attr in attrs:
                    # generate the count map
                    data_list = train_data[attr]
                    count = Counter(data_list)
                    # insert the count map to the corresponding database as a temproal table
                    join_table_name = attr + '_count'
                    cols = {attr:'VARCHAR'}
                    cols['count'] = df_type2db_type('int', dbms)
                    data = [(k, v) for k,v in count.items()]
                    insert_db(dbms, join_table_name, cols, data)
                    # change the table name with the join sql statements and update the features list
                    table_sql = f'({table_sql} left join {join_table_name} on {table_name}.{attr}={join_table_name}.{attr})'
                    # add the join column transform
                    add_join_trans_col(attr, 'count', join_table_name)
        
        #------------------------------join the target encoder -------------------------------------------#
        if preprocessor == 'TargetEncoder':
            if preprocessors[preprocessor]['method'] == 'join':
                attrs = preprocessors[preprocessor]['attrs']
                train_data_path = preprocessors[preprocessor]['train_data_path']
                dbms = preprocessors[preprocessor]['dbms']
                target = preprocessors[preprocessor]['target']
                train_data = load_dataset(train_data_path)
                te = TargetEncoder(cols=list(attrs.keys()))
                te.fit(train_data[list(attrs.keys())], train_data[target])
                for attr in attrs:
                    # extract the targetencoder info
                    attr_unique = train_data[attr].unique()
                    te_mapping = te.mapping[attr]
                    oe = te.ordinal_encoder
                    for m in oe.mapping:
                        if m['col'] == attr:
                            oe_mapping = m['mapping']
                            break
                    # insert the count map to the corresponding database as a temproal table
                    join_table_name = attr + '_count'
                    cols = {attr:'VARCHAR'}
                    cols['enc_value'] = df_type2db_type(str(te_mapping.dtype), dbms)
                    data = [(k, te_mapping[oe_mapping[k]]) for k in attr_unique]
                    insert_db(dbms, join_table_name, cols, data)
                    # change the table name with the join sql statements and update the features list
                    table_sql = f'({table_sql} left join {join_table_name} on {table_name}.{attr}={join_table_name}.{attr})'
                    # add the join column transform
                    add_join_trans_col(attr, 'enc_value', join_table_name)
        
        #------------------------------join the LeaveOneOut encoder -------------------------------------------#
        if preprocessor == 'LeaveOneOutEncoder':
            if preprocessors[preprocessor]['method'] == 'join':
                attrs = preprocessors[preprocessor]['attrs']
                train_data_path = preprocessors[preprocessor]['train_data_path']
                dbms = preprocessors[preprocessor]['dbms']
                target = preprocessors[preprocessor]['target']
                train_data = load_dataset(train_data_path)
                looe = LeaveOneOutEncoder(cols=list(attrs.keys()))
                looe.fit(train_data[list(attrs.keys())], train_data[target])
                for attr in attrs:
                    # extract the targetencoder info
                    attr_unique = train_data[attr].unique()
                    looe_mapping = looe.mapping[attr]
                    # insert the count map to the corresponding database as a temproal table
                    join_table_name = attr + '_count'
                    cols = {attr:'VARCHAR'}
                    cols['enc_value'] = df_type2db_type(str(looe_mapping['sum'].dtype), dbms)
                    data = [(k, looe_mapping.at[k, 'sum']/looe_mapping.at[k, 'count']) for k in attr_unique]
                    insert_db(dbms, join_table_name, cols, data)
                    # change the table name with the join sql statements and update the features list
                    table_sql = f'({table_sql} left join {join_table_name} on {table_name}.{attr}={join_table_name}.{attr})'
                    # add the join column transform
                    add_join_trans_col(attr, 'enc_value', join_table_name)

        #------------------------------join the Onehot encoder -------------------------------------------#
        if preprocessor == 'OneHotEncoder':
            if preprocessors[preprocessor]['method'] == 'join':
                attrs = preprocessors[preprocessor]['attrs']
                train_data_path = preprocessors[preprocessor]['train_data_path']
                dbms = preprocessors[preprocessor]['dbms']
                target = preprocessors[preprocessor]['target']
                train_data = load_dataset(train_data_path)
                looe = LeaveOneOutEncoder(cols=list(attrs.keys()))
                looe.fit(train_data[list(attrs.keys())], train_data[target])
                for attr in attrs:
                    # extract the targetencoder info
                    attr_unique = train_data[attr].unique()
                    looe_mapping = looe.mapping[attr]
                    # insert the count map to the corresponding database as a temproal table
                    join_table_name = attr + '_count'
                    cols = {attr:'VARCHAR'}
                    cols['enc_value'] = df_type2db_type(str(looe_mapping['sum'].dtype), dbms)
                    data = [(k, looe_mapping.at[k, 'sum']/looe_mapping.at[k, 'count']) for k in attr_unique]
                    insert_db(dbms, join_table_name, cols, data)
                    # change the table name with the join sql statements and update the features list
                    table_sql = f'({table_sql} left join {join_table_name} on {table_name}.{attr}={join_table_name}.{attr})'
                    # add the join column transform
                    add_join_trans_col(attr, 'enc_value', join_table_name)

    return table_sql, features


def insert_db(db, table_name, cols, data):
    if db == 'duckdb':
        duckdb_file_path = '/root/volume/duckdb/mydb'
        conn = duckdb.connect(database=duckdb_file_path, read_only=False)
        # create table
        cols_sql = ','.join([f'{col} {cols[col]}' for col in cols])
        create_sql = f'DROP TABLE IF EXISTS {table_name}; CREATE TABLE {table_name} ({cols_sql});'
        conn.execute(create_sql)
        temp_tables.append(table_name)
        # insert data
        slot_sql = ','.join(['?'] * len(data[0]))
        insert_sql = f'INSERT INTO {table_name} VALUES ({slot_sql});'
        conn.executemany(insert_sql, data)
        conn.commit()
        conn.close()
    
    if db == 'pg':
        # database parameters
        dbname = 'postgres'
        user = 'postgres'
        host = 'localhost'  
        port = 5432  

        # connect to pg
        try:
            connection = psycopg2.connect(
                dbname=dbname,
                user=user,
                host=host,
                port=port
            )
            cursor = connection.cursor()
        except OperationalError as e:
            print(f"The error '{e}' occurred")

        # create table
        cols_sql = ','.join([f'{col} {cols[col]}' for col in cols])
        create_sql = f'DROP TABLE IF EXISTS {table_name}; CREATE TABLE {table_name} ({cols_sql});'
        try:
            cursor.execute(create_sql)
            connection.commit()
        except OperationalError as e:
            print(f"The error '{e}' occurred")

        # insert data
        slot_sql = ','.join(['%s'] * len(data[0]))
        insert_sql = f'INSERT INTO {table_name} VALUES ({slot_sql});'
        cursor.executemany(insert_sql, data)
        connection.commit()

        # close connect
        cursor.close()
        connection.close()



def df_type2db_type(df_dtype, db):
    db_type = ''

    if db in ('duckdb', 'pg'):
        if df_dtype == 'object':
            db_type = 'VARCHAR'

        if 'int' in df_dtype:
            db_type = 'INT'
        
        if 'float' in df_dtype:
            db_type = 'FLOAT'

    return db_type



def del_temp_join_tables(pre_sql):
    if not temp_tables:
        return pre_sql
    else:
        delete_sql = ';'
        for temp_table in temp_tables:
            delete_sql += f'DROP TABLE {temp_table};'
        
        return pre_sql + delete_sql



def add_join_trans_col(origin_col, encoder_col, table_name):
    join_trans_col_map[origin_col] = (encoder_col, table_name)



def get_join_trans_col_map():
    return join_trans_col_map
