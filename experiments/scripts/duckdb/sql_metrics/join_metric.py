import duckdb
import os
import subprocess
import time
import csv
import numpy as np

# 检查 DuckDB 是否安装并可用
duckdb_executable = "/root/volume/duckdb/build/release/duckdb"
if not os.path.isfile(duckdb_executable):
    print("DuckDB 未安装或不可用，请安装 DuckDB 并确保它在 PATH 中。", flush=True)
    exit(1)

# DuckDB 数据库文件路径
db_file = "/root/volume/duckdb/mydb"

# CSV文件名
csv_file = f"/home/postgres/SKL2SQL/experiments/scripts/duckdb/sql_metrics/join_metric.csv"

# 创建并写入CSV文件头部
with open(csv_file, 'a', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['rows', 'columns', 'duration'])

# Connect to DuckDB database
conn = duckdb.connect(db_file)
# Create left table
conn.execute("DROP TABLE IF EXISTS left_table;")
conn.execute("CREATE TABLE left_table (id INTEGER PRIMARY KEY, data VARCHAR)")
conn.execute(f"INSERT INTO left_table SELECT range, 'left_data' FROM range(100)")
conn.close()
rows=[1,3,4,7,8,10,20,30,50,60,70,100,150,200,400,700,1000]
columnss=[1,2,3,5,7,9,10,12,14,16,18,20]
for rows in np.array(rows) * 100:
    for columns in columnss:
        rows =  rows
        
        # Connect to DuckDB database
        conn = duckdb.connect(db_file)

        # Create join table
        conn.execute("DROP TABLE IF EXISTS join_table;")
        # populate join table 
        conn.execute(f"CREATE TABLE join_table AS SELECT range as id FROM range({rows})")
        for i in range(columns):
            conn.execute(f"ALTER TABLE join_table ADD COLUMN col{i+1} VARCHAR")
            conn.execute(f"UPDATE join_table SET col{i+1} = md5(random()::VARCHAR)")

        # Close connection
        conn.close()
        
        # Perform JOIN operation and analyze time
        # DuckDB does not have an EXPLAIN statement that returns the execution time, so we will use a timer
        # 构建完整的SQL命令
        sql_command = f"SET threads=1;\nEXPLAIN ANALYZE SELECT * FROM left_table JOIN join_table ON left_table.id = join_table.id;"
        
        try:
            # 执行SQL文件并获取执行时间
            process = subprocess.Popen([duckdb_executable, db_file, "--batch"],
                                        stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            stdout, stderr = process.communicate(input=sql_command.encode(), timeout=600)
            output = stdout.decode()
        
            # 提取执行时间
            try:
                execution_time = float(output.split("Total Time: ")[1].split("s")[0])
                print(f'rows:{rows}, columns:{columns}, time:{execution_time}', flush=True)
            except (IndexError, ValueError):
                print(stderr, flush=True)
                print(f"Failed to parse execution time from output: {output}", flush=True)
                continue
        except subprocess.TimeoutExpired:
                print(f"Error occurred while running row:{rows}, col:{columns}, (Timeout)", flush=True)
                break
        except Exception as e:
            print(f"Error occurred while running row:{rows}, col:{columns} ({e})", flush=True)
            break
        time.sleep(1)
        
        # 写入CSV文件
        with open(csv_file, 'a', newline='') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow([rows, columns, execution_time])