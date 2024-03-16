from collections import Counter
from model_transformer.utility.loader import load_dataset
import duckdb

# created temp tables
temp_tables = []

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
                    col_type = train_data[attr].dtype.name
                    # insert the count map to the corresponding database as a temproal table
                    join_table_name = attr + '_count'
                    cols = {attr:'VARCHAR'}
                    cols['count'] = df_type2db_type(col_type, dbms)
                    data = [(k, v) for k,v in count.items()]
                    insert_db(dbms, join_table_name, cols, data)
                    # change the table name with the join sql statements and update the features list
                    table_sql = f'({table_sql} left join {join_table_name} on {table_name}.{attr}={join_table_name}.{attr})'

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
        conn.close()



def df_type2db_type(df_dtype, db):
    db_type = ''

    if db == 'duckdb':
        if df_dtype == 'object':
            db_type = 'VARCHAR'

        if 'int' in df_dtype:
            db_dtype = 'INT'
        
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


