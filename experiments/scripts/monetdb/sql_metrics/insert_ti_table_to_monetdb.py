import pymonetdb

conn = pymonetdb.connect(username='monetdb', password='monetdb', database='craftsman')

# 创建一个游标对象
cur = conn.cursor()

# 定义创建表的SQL语句
create_table_sql = """
CREATE TABLE ti (
    i Float
);
"""

# 定义插入数据的SQL语句
insert_data_sql = """
INSERT INTO ti (i) VALUES (0);
"""

# 执行创建表的SQL语句
cur.execute(create_table_sql)

# 执行插入数据的SQL语句
cur.execute(insert_data_sql)

conn.commit()

# DuckDB默认是自动提交的，不需要手动调用commit()

# 关闭游标和连接
cur.close()
conn.close()
