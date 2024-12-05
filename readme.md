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

## How to generate Prediction Queries
Template: `/experiments/sqls/duckdb/car_price/dt8.py`

> Parameters for manager.generate_query:
- `pre_sql`: other sqls before the prediction sql
- `group`: the algorithm of the graph selection, 'enum' (i.e., Enumeration-based algorithm) / 'prune' (i.e., Greedy-based algorithm)
- `max_process_num`: the parallelism of the Enumeration-based algorithm


## Quaik Start

### Environment set-up
```shell
pip install -r requirements.txt
# add project root path (which contains craftsman directory) to python path
export PYTHONPATH=$(pwd)
```

### Train a pipeline
```shell
python ./experiments/pipelines/duckdb/car_price/dt8.py
```

### Generate SQL
```shell
python ./experiments/sqls/duckdb/car_price/dt8.py
```

### Prepare dataset in database
```sql
-- Example for duckdb
-- create table
CREATE TABLE car_price (
"Name" VARCHAR(25),
"Location" VARCHAR(15),
"Year" INT,
"Kilometers_Driven" INT,
"Fuel_Type" VARCHAR(10),
"Transmission" VARCHAR(10),
"Owner_Type" VARCHAR(20),
"Mileage" DOUBLE PRECISION,
"Engine" INT,
"Power" DOUBLE PRECISION,
"Seats" INT,
"Price" DOUBLE PRECISION,
"Brand" VARCHAR(25)
);
-- insert data
COPY car_price FROM '/dataset/Car_price/test.csv' DELIMITERS ',' csv header;
```

### Execute SQL in different database(duckdb, postgres, clickhouse, monetdb, tidb)
```shell
# Example for duckdb
# open duckdb client
duckdb path/to/duckdb-file
# execute sql
.read path/to/sql-file.sql
```