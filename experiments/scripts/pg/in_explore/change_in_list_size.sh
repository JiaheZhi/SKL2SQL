#!/bin/bash

out_file="/root/volume/SKL2SQL/experiments/results/pg/in_explore/result_of_change_in_list_size_pg.txt"
# 检查文件是否存在
if [ -e "$out_file" ]; then
    # 文件存在，清空内容
    > "$out_file"
    echo "文件已存在，已清空内容。"
else
    # 文件不存在，创建文件
    touch "$out_file"
    echo "文件不存在，已创建。"
fi

# 输出重定向到文件
exec > "$out_file"

# 起始日期 (yyyy-mm-dd)
start_date="2000-01-01"
# 生成日期的数量
num_dates=10000
# 计算起始日期的Unix时间戳
timestamp=$(date -d "$start_date" +%s)
# 初始化日期数组
declare -a date_list

# 生成日期
for (( i=0; i<num_dates; i++ ))
do
  # 将Unix时间戳转换为日期字符串
  date_str=$(date -d "@$timestamp" +%Y-%m-%d)
  # 将日期添加到数组中
  date_list+=("$date_str")
  # 时间戳增加一天
  timestamp=$((timestamp + 86400)) # 一天86400秒
done

# 定义一个函数来生成SQL IN子句的日期子集
generate_sql_in_clause() {
  local subset_size=$1
  local subset=()
  for (( i=0; i<subset_size; i++ ))
  do
    # 从日期列表中取出一个日期
    local date=${date_list[i]}
    # 将日期添加到子集中
    subset+=("$date")
  done
  # 生成SQL IN子句
  local sql_in_clause=$(printf "'%s', " "${subset[@]}")
  # 去除末尾的逗号和空格
  sql_in_clause=${sql_in_clause%, }
  echo "$sql_in_clause"
}

# 使用函数生成子集并用于SQL查询
for (( i=1; i<=num_dates; i++ ))
do
  # 生成SQL IN子句
  sql_in_clause=$(generate_sql_in_clause $i)
  # 构建SQL查询
  sql_query="EXPLAIN ANALYZE SELECT in_date IN ($sql_in_clause) From in_measure limit 1000;"
  # 执行查询
  execution_time=$(psql -U postgres -d postgres -c "$sql_query" | grep "Execution Time" | awk '{print $3}')
  # 输出查询时间
  echo "size $i : $execution_time"
done