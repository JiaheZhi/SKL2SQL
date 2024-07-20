import duckdb

# 连接到DuckDB数据库
# DuckDB不需要用户名和密码，直接连接即可
conn = duckdb.connect('/root/volume/duckdb/mydb')

# 创建一个游标对象
cur = conn.cursor()

# 定义创建表的SQL语句
create_table_sql = """
CREATE TABLE ti_big (
    i INTEGER
);
"""

# 定义插入数据的SQL语句
insert_data_sql = """
INSERT INTO ti_big (i) VALUES (100001.0);
"""

# 执行创建表的SQL语句
cur.execute(create_table_sql)

# 执行插入数据的SQL语句
cur.execute(insert_data_sql)

# DuckDB默认是自动提交的，不需要手动调用commit()

# 关闭游标和连接
cur.close()
conn.close()
