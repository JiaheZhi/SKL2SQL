# 定义起始值和结束值
start = 50
end = 5000000
# 生成100个采样点
num_points = 20

# 计算步长
step = (end - start) / (num_points - 1)

# 生成采样点并以双引号包裹
samples = ['{}'.format(int(start + step * i)) for i in range(num_points)]

# 打印采样点列表
print(','.join(samples))
