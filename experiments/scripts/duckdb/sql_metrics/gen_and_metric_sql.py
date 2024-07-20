# 定义起始和结束值
start_value = 1
end_value = 10000
or_nums = 20

# 定义CASE语句
case_statement = "EXPLAIN SELECT CASE"

# 生成WHEN子句
for i in range(start_value, end_value + 1):  # 每次增加3，生成三个连续的值
    when_values = ' and '.join([f"i={i+j}" for j in range(or_nums)])  # 生成IN子句中的值
    case_statement += f" WHEN {when_values} THEN {i}"

# 添加ELSE子句
case_statement += " ELSE NULL END FROM ti;"

sql_file_path = "/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/and_metric.sql"
# 将SQL语句写入文件
with open(sql_file_path, "w") as file:
    file.write(case_statement)

print("SQL语句已保存到文件 {}".format(sql_file_path))
