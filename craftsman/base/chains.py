import re
import importlib
from craftsman.base.operator import SQLOperator
from craftsman.base.defs import PREPROCESS_PACKAGE_PATH

class PrepChain(object):

    def __init__(self, feature: str, pipeline: dict) -> None:
        self.feature: str = feature
        self.prep_operators: list[SQLOperator] = []
        self.__build_chain(pipeline)


    def __camel_to_snake(self, name: str):
        s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
        return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).lower()


    def __build_chain(self, pipeline: dict) -> None:
        transforms = pipeline['transforms']
        for transform in transforms:
            transform_features = transform['transform_features']
            if self.feature in transform_features:
                transform_name = transform['transform_name']
                fitted_transform = transform['fitted_transform']

                module_name = self.__camel_to_snake(transform_name)
                transform_module = importlib.import_module(PREPROCESS_PACKAGE_PATH + module_name)
                operator_class = getattr(transform_module, transform_name + 'SQLOperator')
                operator = operator_class(self.feature, fitted_transform)

                self.prep_operators.append(operator)
