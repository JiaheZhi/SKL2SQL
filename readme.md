# Craftsman Tools and Experiment


## Datasets

| Dataset | Link |
|:---:|:---:|
| Credit Card | https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud |
| Hospital | https://github.com/Microsoft/r-server-hospital-length-of-stay |
| Price | https://www.kaggle.com/datasets/avikasliwal/used-cars-price-prediction |
| Cat | https://www.kaggle.com/c/cat-in-the-dat/data |
| Criteo | https://ailab.criteo.com/ressources/ |

## Workflow from Training a Pipeline to Executing a Query in database

>**step1**: train pipeline using craftsman `training_helper` tool
>
>**step2**: generating prediction query (pure SQL) using craftsman `transform_manager` tool
>
>**step3**: create table of dataset in database, and insert test data
>
>**step4**: execute query in database

## How to train pipelines
Template: `/experiments/pipelines/duckdb/car_price/dt8.py`

## How to generate Prediction Querys
Template: `/experiments/sqls/duckdb/car_price/dt8.py`

> Parameters for manager.generate_query:
- `pre_sql`: other sqls before the prediction sql
- `group`: the algorithm of the graph selection, 'enum' (i.e., Enumeration-based algorithm) / 'prune' (i.e., Greedy-based algorithm)
- `max_process_num`: the parallelism of the Enumeration-based algorithm
