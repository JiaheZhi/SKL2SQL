
class DBMSUtils(object):
    available_dbms = ['postgresql', 'duckdb', 'monetdb']

    @staticmethod
    def check_dbms(name: str):
        assert isinstance(name, str), "Wrong data type for param 'name'."
        assert name in DBMSUtils.available_dbms, f"No dbms {name} found. Use one of {DBMSUtils.available_dbms}."

        return name

    @staticmethod
    def get_delimited_col(dbms: str, col: str):
        dbms = DBMSUtils.check_dbms(dbms)
        assert isinstance(col, str), "Wrong data type for param 'col'."
        
        if dbms == 'postgresql':
            return f'"{col}"'
        
        if dbms == 'duckdb':
            return f'"{col}"'
        
        if dbms == 'monetdb':
            return f'"{col}"'
