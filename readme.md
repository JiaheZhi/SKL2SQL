# Craftsman: Machine Learning Inference Pipeline Execution Using Pure SQL Based on Operator Fusion

## Project Introduction
Craftsman is a tool for ... (a brief description of the project's functionality and purpose).



## Quaik Start

### Generate SQL
Please refer to `./tutorial.ipynb` for usage examples.

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


## Code Structure
- `craftsman/base/` directory contains the definitions of the main data structures.
- `craftsman/cost_model/` directory contains data structures related to the cost model.
- `craftsman/model/` directory contains the definitions of supported machine learning models.
- `craftsman/preprocess/` directory contains the definitions of supported preprocessing operators.
- `craftsman/rule_based_optimize/` directory contains the logic for operator fusion.
- `craftsman/utility/` directory contains utility functions and the definition of preprocessing operators wrapped by craftsman.
- `craftsman/transformer_manager.py` file contains the entry function `TransformerManager.generate_query()`, which includes the SQL assembly logic.

## Datasets Links

| Dataset | Link |
|:---:|:---:|
| Credit Card | https://www.kaggle.com/datasets/mlg-ulb/creditcardfraud |
| Hospital | https://github.com/Microsoft/r-server-hospital-length-of-stay |
| Price | https://www.kaggle.com/datasets/avikasliwal/used-cars-price-prediction |
| Cat | https://www.kaggle.com/c/cat-in-the-dat/data |
| Criteo | https://ailab.criteo.com/ressources/ |