import time
import pathlib
from craftsman.transformer_manager import TransformerManager

if __name__ == "__main__":
    manager = TransformerManager()

    pipeline_file = pathlib.Path(__file__).parent / "./credit_card_lr.joblib"
    table_name = "credit_card"
    dbms = 'duckdb'
    pre_sql = "EXPLAIN ANALYZE "

    for group in ('org', 'pos', 'uncertain', 'prune', ):
    # for group in ('prune', ):
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

        # import os
        # current_file_path = os.path.abspath(__file__)
        # parent_directory = os.path.dirname(current_file_path)
        # generated_file_path = os.path.join(parent_directory, f"q1_lr_{group}.sql")
        # with open(generated_file_path, "w") as sql_file:
        #     sql_file.write(query)