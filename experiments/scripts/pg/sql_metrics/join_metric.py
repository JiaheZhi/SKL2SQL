import psycopg2
import re
import pandas as pd



expriment_result = []
for rows in range(10, 1000 + 10, 10):
    for columns in range(1, 20 + 1):
        
        # 连接到 PostgreSQL 数据库
        conn = psycopg2.connect(
            dbname="postgres",
            user="postgres"
        )

        # 创建左表
        cur = conn.cursor()
        cur.execute("""
            DROP TABLE IF EXISTS left_table;
            CREATE TABLE left_table (
                id SERIAL PRIMARY KEY,
                data TEXT
            );
        """)

        # 填充左表数据
        cur.execute("""
            INSERT INTO left_table (data)
            SELECT 'left_data' FROM generate_series(1, 10);
        """)

        # 创建populate_join_table函数
        cur.execute("""
            CREATE OR REPLACE FUNCTION populate_join_table(rows INT, columns INT)
            RETURNS VOID AS $$
            DECLARE
                column_list TEXT := 'id SERIAL PRIMARY KEY';
                i INT;
            BEGIN
                -- 创建临时表并插入数据
                EXECUTE format('CREATE TEMP TABLE temp_join_table (%s) ON COMMIT DROP;', column_list);
                EXECUTE format('INSERT INTO temp_join_table SELECT ROW_NUMBER() OVER () as id FROM generate_series(1, %s);', rows);

                -- 构建除id列之外的列列表
                FOR i IN 1..columns LOOP
                    column_list := column_list || ', ' || 'col' || i || ' TEXT';
                END LOOP;

                -- 添加额外的列
                FOR i IN 1..columns LOOP
                    EXECUTE format('ALTER TABLE temp_join_table ADD COLUMN col%s TEXT;', i);
                    EXECUTE format('UPDATE temp_join_table SET col%s = md5(random()::TEXT);', i);
                END LOOP;

                -- 如果join_table不存在，则创建它
                EXECUTE format('DROP TABLE IF EXISTS join_table;');
                EXECUTE format('CREATE TABLE IF NOT EXISTS join_table (%s)', column_list);

                -- 清空join_table
                EXECUTE format('TRUNCATE join_table;');

                -- 将数据从临时表插入到join_table
                EXECUTE format('INSERT INTO join_table SELECT * FROM temp_join_table;');
            END;
            $$ LANGUAGE plpgsql;
        """)
        
        # 调用函数填充JOIN表
        cur.execute(f"SELECT populate_join_table({rows}, {columns});")

        # 执行JOIN操作并分析时间
        cur.execute("EXPLAIN SELECT * FROM left_table JOIN join_table ON left_table.id = join_table.id;")

        # 获取执行计划和时间消耗
        explain_result = cur.fetchall()

        cost_str = explain_result[0][0]
        cost_match = re.search(r'cost=(\d+\.\d+)..(\d+\.\d+)', cost_str)
        cost = float(cost_match.group(2))
        expriment_result.append([rows, columns, cost])
        
        # 关闭连接
        cur.close()
        conn.close()

        # 关闭连接
        cur.close()
        conn.close()
    
    print(rows)

expriment_result = pd.DataFrame(expriment_result, columns=['rows', 'columns', 'cost'])
expriment_result.to_csv('join_metric_result1.csv',index=False)


