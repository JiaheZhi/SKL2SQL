import argparse

# 创建一个解析器对象
parser = argparse.ArgumentParser(description='smaller metric sql 的生成')

# 添加参数
parser.add_argument('--lines', help='行数', type=int, dest='end_value')

# 执行解析命令行
args = parser.parse_args()

# 定义起始和结束值
start_value = 1
end_value = args.end_value

# 定义CASE语句
case_statement = "EXPLAIN SELECT CASE"

# 生成WHEN子句
for i in range(start_value, end_value + 1):  # 每次增加3，生成三个连续的值
    when_values = f"{i}"  # 生成IN子句中的值
    case_statement += f" WHEN i >= {when_values} THEN {i}"

# 添加ELSE子句
case_statement += " ELSE NULL END FROM ti;"

sql_file_path = "/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/ge_eq_metric.sql"

# 将SQL语句写入文件
with open(sql_file_path, "w") as file:
    file.write(case_statement)

