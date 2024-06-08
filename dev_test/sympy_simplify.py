from sympy import symbols, sympify, simplify, Eq

# duration = symbols('duration')
# inequality_str = "(duration-0.0)/(11.799829447919999) < 2"
# expr = sympify(inequality_str)
# simplified_expr = simplify(expr)

# print(simplified_expr.__class__)

# print(type(expr))

# import numpy 
# a = numpy.arange(10) 
# expr = sin(x)
# f = lambdify(x, expr, "numpy") 

# # 定义符号
# symbols_list = symbols("y x mean std")
# y, x, mean, std = symbols_list
# expression = Eq(y, (x - mean) / std)

# # 将表达式转换为字符串
# expression_str = str(expression.rhs)

# # 输出字符串形式的表达式
# print(expression_str)

# 定义符号变量
x, y = symbols('x y')

# 定义等式
eq1 = Eq(y, x + 3)
eq2 = Eq(y, 2*x)

f = eq1.rhs.subs({x: eq2.rhs})
eq3 = Eq(eq1.lhs, f)
print(eq3)