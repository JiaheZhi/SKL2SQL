# coding = utf-8
# -*- coding:utf-8 -*-
import duckdb
import time

t = 48
duckdb.sql(f"PRAGMA threads={t}")
duckdb.sql("PRAGMA enable_profiling='json';")

duckdb.read_csv('creditcard.csv')

duckdb.sql("""
select count(*) from 'creditcard.csv';
""").show()

duckdb.sql("""
create table creditcard (
"Time" FLOAT,
"V1" FLOAT,
"V2" FLOAT,
V3 FLOAT,
V4 FLOAT,
V5 FLOAT,
V6 FLOAT,
V7 FLOAT,
"V8" FLOAT,
"V9" FLOAT,
"V10" FLOAT,
"V11" FLOAT,
"V12" FLOAT,
"V13" FLOAT,
"V14" FLOAT,
"V15" FLOAT,
"V16" FLOAT,
"V17" FLOAT,
"V18" FLOAT,
"V19" FLOAT,
"V20" FLOAT,
"V21" FLOAT,
"V22" FLOAT,
"V23" FLOAT,
"V24" FLOAT,
"V25" FLOAT,
"V26" FLOAT,
"V27" FLOAT,
"V28" FLOAT,
Amount FLOAT,
Class INT
);
""")

# duckdb.sql("desc creditcard;").show()

# sf=1: 3.8s
# sf=10: 55s

sf = 1
for i in range(sf):
    duckdb.sql("COPY creditcard FROM 'creditcard.csv';")

duckdb.sql("select count(*) from creditcard;").show()

with open('./model_0_24/no/rf_model.sql', 'r') as f:
    s = f.read()


    start = time.time()    
    plan = duckdb.sql(f"""
    {s}
    """).fetchall()
    end = time.time()
    print(end - start)


    with open(f'./model_0_24/no/rf_model_plan_sf{sf}.json', 'w') as f1:
        f1.write(plan[0][1])
    # print(plan[0][1])
