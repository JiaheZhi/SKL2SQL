from enum import Enum

PREPROCESS_PACKAGE_PATH = 'craftsman.preprocess.'

class DataType(Enum):
    CON = 1
    CAT = 2


class CalculationType(Enum):
    ARITHMETIC = 1
    COMPARISON = 2
    MIXED = 3


class OperatorType(Enum):
    CON_A_CON = 1
    CON_C_CAT = 2
    CON_M_CON = 3
    CAT_C_CAT = 4
    EXPAND = 5
    IMPUTE = 6


class OperatorName(Enum):
    # CON_A_CON
    MINMAXSCALER = 'MinMaxScaler'
    STANDARDSCALER = 'StandardScaler'

    # CON_C_CAT
    KBINSDISCRETIZER = 'KBinsDiscretizer'

    # CON_M_CON


    # CAT_C_CAT
    COUNTENCODER = 'CountEncoder'
    LEAVEONEOUTENCODER = 'LeaveOneOutEncoder'
    ORDINALENCODER = 'OrdinalEncoder'
    TARGETENCODER = 'TargetEncoder'

    # EXPAND
    ONEHOTENCODER = 'OneHotEncoder'
    BINARYENCODER = 'BinaryEncoder'

    # IMPUTE
    SIMPLEIMPUTER = 'SimpleImputer'

    # Merged Operator
    CON_C_CAT_Merged_OP = 'con_c_cat_merged_op'


class ModelName(Enum):
    RANDOMFORESTCLASSIFIER = 'RandomForestClassifier'
    DECISIONTREECLASSIFIER = 'DecisionTreeClassifier'
