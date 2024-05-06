import datetime
import psycopg2

# 数据库连接参数
db_name = "postgres"
db_user = "postgres"

# 起始日期 (yyyy-mm-dd)
start_date = datetime.date(2000, 1, 1)
# 生成日期的数量
num_dates = 1000

# 生成日期列表
date_list = [start_date + datetime.timedelta(days=i) for i in range(num_dates)]

# 连接到 PostgreSQL 数据库
conn = psycopg2.connect(dbname=db_name, user=db_user)
cur = conn.cursor()

# 创建表的 SQL 语句
drop_sql = "DROP TABLE IF EXISTS in_measure;"
create_sql = "CREATE TABLE in_measure(in_date VARCHAR);"

# 执行创建表的 SQL 语句
cur.execute(drop_sql)
cur.execute(create_sql)

# 准备插入数据的 SQL 语句
insert_sql = "INSERT INTO in_measure (in_date) VALUES (%s);"

# 插入数据
for date in date_list:
    cur.execute(insert_sql, (date.strftime('%Y-%m-%d'),))

# 复制并插入数据的 SQL 语句
copy_data_sql = "INSERT INTO in_measure (in_date) SELECT in_date FROM in_measure;"

# 如果您知道要复制的次数，可以设置一个循环来控制复制次数
num_copies = 12
for _ in range(num_copies):
    cur.execute(copy_data_sql)

# 提交事务
conn.commit()

# 关闭数据库连接
cur.close()
conn.close()
