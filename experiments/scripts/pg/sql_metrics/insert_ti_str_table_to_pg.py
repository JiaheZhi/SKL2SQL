import psycopg2

# 连接到PostgreSQL数据库
# 请替换以下参数为你的数据库信息
conn = psycopg2.connect(
    dbname="postgres",
    user="postgres",
)

# 创建一个游标对象
cur = conn.cursor()

# 定义创建表的SQL语句
create_table_sql = """
CREATE TABLE IF NOT EXISTS ti_str (
    i VARCHAR
);
"""

# 定义插入数据的SQL语句
insert_data_sql = """
INSERT INTO ti_str (i) VALUES ('0');
"""

# 执行创建表的SQL语句
cur.execute(create_table_sql)

# 执行插入数据的SQL语句
cur.execute(insert_data_sql)

# 提交事务
conn.commit()

# 关闭游标和连接
cur.close()
conn.close()
