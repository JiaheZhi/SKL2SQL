import subprocess
import csv
import os
import time

# 参数数组
lengths = [1, 10, 100, 1000, 10000]

username = "monetdb"
password = "monetdb"
database = "craftsman"

# DuckDB 数据库文件路径
db_file = "/root/volume/duckdb/mydb"

# 元语类别
# primitive_types = ['equal', 'ge_eq', 'ge', 'in', 'inequal', 'le_eq', 'le']
primitive_types = [ 'equal']

for primitive_type in primitive_types:

    # Python脚本名称
    python_script = f"/root/volume/SKL2SQL/experiments/scripts/monetdb/sql_metrics/gen_{primitive_type}_metric_sql.py"

    # CSV文件名
    csv_file = f"/home/postgres/SKL2SQL/experiments/scripts/monetdb/sql_metrics/{primitive_type}_metric.csv"

    # 创建并写入CSV文件头部
    with open(csv_file, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(["length", "exec_time"])
    
    if primitive_type=='in':
        lengths = range(1, 101)

    # 遍历长度数组
    for length in lengths:
        # 执行Python脚本，生成SQL文件
        if primitive_type=='in':
            subprocess.run(["python", python_script, "--lines", str(100), "--width", str(length)])
        else:
            subprocess.run(["python", python_script, "--lines", str(length)])
        
        # 获取生成的SQL文件名，假设为output.sql
        sql_file = f"/home/postgres/SKL2SQL/experiments/scripts/monetdb/sql_metrics/{primitive_type}_metric.sql"
        
        # 检查SQL文件是否存在
        if not os.path.isfile(sql_file):
            print(f"length:{length}, SQL文件未能生成: {sql_file}")
            exit(1)

        # 用于存储执行时间
        exec_times = []
        
        if primitive_type=='in':
            print(f'explore:{primitive_type}, length:100, width:{length}', flush=True)
        else:
            print(f'explore:{primitive_type}, length:{length}', flush=True)
        
        # 执行SQL文件5次
        for i in range(5):
            try:
                # 读取SQL文件内容
                with open(sql_file, 'r') as file:
                    sql_content = file.read()

                # 构建完整的SQL命令
                # sql_command = f"SET threads=1;\n{sql_content}"

                # 执行SQL文件并获取执行时间
                process = subprocess.Popen(['mclient', '-d', "craftsman", '-t', 'clock'],
                                           stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
                stdout, stderr = process.communicate(input=sql_content.encode(), timeout=600)
                output = stderr.decode()

                # 提取执行时间
                try:
                    execution_time = float(output.split('clk: ')[1].split(' ')[0])
                    if output.split('clk: ')[1].split(' ')[1] == 'sec\n':
                        execution_time *= 1000
                    exec_times.append(execution_time)
                    print(output, flush=True)
                except (IndexError, ValueError):
                    print(stderr, flush=True)
                    print(f"Failed to parse execution time from output: {output}", flush=True)
                    continue

            except subprocess.TimeoutExpired:
                print(f"Error occurred while running SQL file: {sql_file} (Timeout)", flush=True)
                break
            except Exception as e:
                print(f"Error occurred while running SQL file: {sql_file} ({e})", flush=True)
                break
            time.sleep(1)
        
        if len(exec_times) > 2:
            # 对结果数组进行排序
            sorted_results = sorted(exec_times)

            # 去掉最大和最小值
            sorted_results.pop(0)
            sorted_results.pop()

            # 计算平均值
            average = sum(sorted_results) / len(sorted_results)
        else:
            average = 0

        # 写入CSV文件
        with open(csv_file, 'a', newline='') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow([length, average])

