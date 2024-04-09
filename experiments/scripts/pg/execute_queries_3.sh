#!/bin/bash

# 检查是否提供了 SQL 文件夹路径
if [ $# -eq 0 ]; then
    echo "请提供包含 SQL 文件的文件夹路径。"
    exit 1
fi

thread=1
version='2'
out_file="/root/volume/SKL2SQL/experiments/results/pg/usa_accident_dt_deep5_frequency_compration${version}_thread${thread}_pg.txt"

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
# 存储 SQL 文件夹路径
sql_folder="$1"

# item_num=("50" "263205" "526360" "789515" "1052671" "1315826" "1578981" "1842136" "2105292" "2368447" "2631602" "2894757" "3157913" "3421068" "3684223" "3947378" "4210534" "4473689" "4736844" "5000000")
item_num=("5000000")
# 改变limit的数量
for num in "${item_num[@]}"; do
    # 每个文件运行多遍
    for (( i=1; i<=5; i++ )); do
        # 循环处理每个 SQL 文件
        for sql_file in "$sql_folder"/*.sql; do
            # 提取文件名作为查询名称
            query_name=$(basename "$sql_file" .sql)

            # 执行 SQL 文件并获取执行时间
            execution_time=$(psql -U postgres -d postgres -c "$(cat $sql_file) LIMIT $num;" | grep "Execution Time" | awk '{print $3}')

            echo "查询 ${query_name}_$num 的执行时间为: $execution_time" >> "$out_file"
        done    
    done
done

