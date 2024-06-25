#!/bin/bash

# 参数数组
lengths=(1 10 100 1000 10000 100000 1000000) 

# Python脚本名称
python_script="/root/volume/SKL2SQL/experiments/scripts/pg/sql_metrics/gen_ge_eq_metric_sql.py"

# SQL文件执行命令，这里假设是psql
sql_executor="psql"

# 数据库连接参数，例如用户名、数据库等
db_connection_options=" -U postgres -d postgres"

# CSV文件名
csv_file="/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/ge_eq_metric.csv"
echo "length,start_cost,total_cost" > "$csv_file"

# 遍历第一个参数数组
for length in "${lengths[@]}"; do
    # 执行Python脚本，生成SQL文件
    python "$python_script" "--lines" "$length"
    
    # 获取生成的SQL文件名，假设为output.sql
    sql_file="/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/ge_eq_metric.sql"
    
    # 检查SQL文件是否存在
    if [ -f "$sql_file" ]; then
        echo "length:$length, SQL文件已成功生成: $sql_file"
    else
        echo "length:$length, SQL文件未能生成: $sql_file"
        exit 1
    fi

    # 执行SQL文件
    output=$($sql_executor $db_connection_options -f "$sql_file" | awk '/rows=/ {print $5}')

    # 处理SQL执行结果的逻辑
    temp_output=$(echo "$output" | sed 's/\.\./,/g')
    start_cost=$(echo "$temp_output" | cut -d',' -f1 | cut -c6-)
    start_cost=$(echo "$start_cost" | sed 's/^\=//')
    total_cost=$(echo "$temp_output" | cut -d',' -f2)

    echo "$length,$start_cost,$total_cost" >> "$csv_file"
done
