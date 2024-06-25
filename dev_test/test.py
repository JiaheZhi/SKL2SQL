from enum import Enum

# 定义带参数的函数
def greet(name):
    return f"Hello, {name}!"

def farewell(name):
    return f"Goodbye, {name}!"

# 定义Enum，将函数作为值
class GreetingsEnum(Enum):
    GREET = greet
    FAREWELL = farewell

# 使用Enum成员调用函数并传递参数
print(GreetingsEnum.GREET("Alice"))  # 输出: Hello, Alice!
print(GreetingsEnum.FAREWELL("Bob"))  # 输出: Goodbye, Bob!
