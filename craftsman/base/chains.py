import re
import importlib
from craftsman.base.operator import SQLOperator

class PrepChain(object):

    def __init__(self, feature: str, pipeline: dict) -> None:
        self.feature: str = feature
        self.prep_operators: list[SQLOperator] = []
        self.build_chain_(pipeline)


    def camel_to_snake_(self, name: str):
        s1 = re.sub('(.)([A-Z][a-z]+)', r'\1_\2', name)
        return re.sub('([a-z0-9])([A-Z])', r'\1_\2', s1).lower()


    def build_chain_(self, pipeline: dict) -> None:
        transforms = pipeline['transforms']
        for transform in transforms:
            transform_features = transform['transform_features']
            if self.feature in transform_features:
                transform_name = transform['transform_name']
                fitted_transform = transform['fitted_transform']

                module_name = self.camel_to_snake_(transform_name)
                transform_module = importlib.import_module('craftsman.preprocess.' + module_name)
                operator_class = getattr(transform_module, transform_name + 'SQLOperator')
                operator = operator_class()
                operator.init(fitted_transform)

                self.prep_operators.append(operator)
