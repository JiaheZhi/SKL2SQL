import pymonetdb
import os
import subprocess
import time
import csv
import numpy as np

# CSV文件名
csv_file = f"/home/postgres/SKL2SQL/experiments/scripts/monetdb/sql_metrics/join_metric1.csv"

# 创建并写入CSV文件头部
with open(csv_file, 'a', newline='') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['rows', 'columns', 'duration'])

# Connect to DuckDB database
conn = pymonetdb.connect(database='craftsman', username='monetdb', password='monetdb')
# Create left table
conn.execute("DROP TABLE IF EXISTS left_table;")
conn.execute("CREATE TABLE left_table (id INTEGER PRIMARY KEY, data VARCHAR(256));")
# conn.execute("INSERT INTO left_table SELECT generate_series(1, 100), 'left_data';")
# 使用Python生成序列并插入数据
for i in range(1, 101):
    conn.execute(f"INSERT INTO left_table (id, data) VALUES ({i}, 'left_data');")
conn.commit()
conn.close()
rows=[1,3,4,7,8,10,20,30,50,60,70,100,150,200,400,700,1000]
columnss=[1,2,3,5,7,9,10,12,14,16,18,20]
for rows in np.array(rows) * 100:
    for columns in columnss:
        rows =  rows
        
        # Connect to DuckDB database
        conn = pymonetdb.connect(database='craftsman', username='monetdb', password='monetdb')
        cur = conn.cursor()
        # 创建并填充连接表
        cur.execute("DROP TABLE IF EXISTS join_table;")
        cur.execute("CREATE TABLE join_table (id INTEGER PRIMARY KEY);")
        conn.commit()

        # 使用Python生成序列并插入数据
        for i in range(1, rows + 1):
            cur.execute(f"INSERT INTO join_table (id) VALUES ({i});")
        conn.commit()
            
        for i in range(columns):
            cur.execute(f"ALTER TABLE join_table ADD COLUMN col{i+1} VARCHAR(256);")
            cur.execute(f"UPDATE join_table SET col{i+1} = {i+1};")
            conn.commit()

        # Close connection
        conn.close()
        
        # Perform JOIN operation and analyze time
        # DuckDB does not have an EXPLAIN statement that returns the execution time, so we will use a timer
        # 构建完整的SQL命令
        sql_command = f"SELECT * FROM left_table JOIN join_table ON left_table.id = join_table.id;"
        
        try:
            # 执行SQL文件并获取执行时间
            process = subprocess.Popen(['mclient', '-d', "craftsman", '-t', 'clock'],
                                           stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            stdout, stderr = process.communicate(input=sql_command.encode(), timeout=600)
            output = stderr.decode()

        
            # 提取执行时间
            try:
                execution_time = float(output.split('clk: ')[1].split(' ')[0])
                if output.split('clk: ')[1].split(' ')[1] == 'sec\n':
                    execution_time *= 1000
                print(output)
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