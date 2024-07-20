import argparse

# 创建一个解析器对象
parser = argparse.ArgumentParser(description='in metric sql 的生成')

# 添加参数
parser.add_argument('--lines', help='行数', type=int, dest='end_value')
parser.add_argument('--width', help='宽度', type=int, dest='in_width')

# 执行解析命令行
args = parser.parse_args()

# 定义起始和结束值
start_value = 1
end_value = int(args.end_value)
in_width = int(args.in_width)

# 定义CASE语句
case_statement = "SELECT CASE"

# 生成WHEN子句
for i in range(start_value, end_value + 1):  
    when_values = ','.join([f"\'{i+j}\'" for j in range(in_width)])  # 生成IN子句中的值
    case_statement += f" WHEN i IN ({when_values}) THEN {i}"

# 添加ELSE子句
case_statement += " ELSE NULL END FROM ti_str;"

sql_file_path = "/home/postgres/SKL2SQL/experiments/scripts/monetdb/sql_metrics/in_metric.sql"
# 将SQL语句写入文件
with open(sql_file_path, "w") as file:
    file.write(case_statement)