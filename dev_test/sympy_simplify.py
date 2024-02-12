from sympy import symbols, sympify, simplify

duration = symbols('duration')
inequality_str = "(duration-0.0)/(11.799829447919999) > 2"
expr = sympify(inequality_str)
simplified_expr = simplify(expr)

print(simplified_expr)