import sys
import time

sys.path.append("/root/volume/SKL2SQL/")
from craftsman.transformer_manager import TransformerManager


if __name__ == "__main__":
    manager = TransformerManager()

    pipeline_file = "/home/postgres/craftsman_experiments/new_trained_pipeline/Criteo/criteo_rf_d8n5_bnc.joblib"
    table_name = "criteo"
    dbms = 'duckdb'
    pre_sql = "EXPLAIN ANALYZE "

    for group in ('org', 'pos', 'uncertain', 'prune'):
        t1 = time.time()
        query = manager.generate_query(
            pipeline_file,
            table_name,
            dbms,
            pre_sql=pre_sql,
            group=group,
            cost_model='craftsman'
        )
        t2 = time.time()
        
        print(f'{group}, time cost: {(t2-t1):.2f}s')

        import os
        current_file_path = os.path.abspath(__file__)
        parent_directory = os.path.dirname(current_file_path)
        generated_file_path = os.path.join(parent_directory, f"q10_rfd8n5_{group}.sql")
        with open(generated_file_path, "w") as sql_file:
            sql_file.write(query)