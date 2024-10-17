# Craftsman

## How to train pipelines
Template: /experiments/pipelines/duckdb/car_price/dt8.py

## How to generate Prediction SQLs
Template: /experiments/sqls/duckdb/car_price/dt8.py

Parameters for manager.generate_query:
- pre_sql: other sqls before the prediction sql
- group: the algorithm of the graph selection, 'enum' / 'prune'
- max_process_num: the parallelism of the 'enum' algorithm
