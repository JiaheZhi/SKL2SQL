# 定义起始和结束值
start_value = 0
end_value = 10

# 定义CASE语句
case_statement = "EXPLAIN SELECT CASE WHEN n <= 1 THEN 0 ELSE "

sub_case = ""
# 生成sub_CASE子句



# def generate_a_case_when(i):
#     if i == end_value:
#         return ' CASE WHEN n = ' + f"{i} THEN 1 ELSE 0 END "
#     elif i > end_value:
#         return ' 0 '
#     else:
#         when = ' CASE WHEN n = ' + f"{i} THEN"
#         then =  generate_a_case_when(i+1)
#         else_str = generate_a_case_when(i+2)
#     return when + then + "ELSE" + else_str + "END"

i = 2
while(i<=end_value):
    case_statement += ' CASE WHEN n = ' + f"{i} THEN 1 ELSE"
    i += 1

case_statement += " 0"

for j in range(end_value):
    case_statement += " END"


sql = case_statement
# sql = case_statement + generate_a_case_when(start_value)

sql += " from tiny;"

print(sql)

sql_file_path = "/root/volume/SKL2SQL_pqf/SKL2SQL/experiments/scripts/pg/sql_metrics/case_tree_metric.sql"
# 将SQL语句写入文件
with open(sql_file_path, "w") as file:
    file.write(sql)

print("SQL语句已保存到文件 {}".format(sql_file_path))
