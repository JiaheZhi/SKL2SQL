import matplotlib.pyplot as plt

# 打开并读取文件内容
with open('/root/volume/SKL2SQL/experiments/results/pg/in_explore/result_of_change_in_list_size_pg.txt', 'r') as file:
    lines = file.readlines()

# 解析数据
data = {}
for line in lines:
    parts = line.strip().split(':')
    if len(parts) == 2:
        key = int(parts[0].strip().split(' ')[1])
        value = float(parts[1].strip()) * 1000
        data[key] = value


# 创建折线图
plt.figure(figsize=(10, 5))
plt.plot(list(data.keys()), list(data.values()), marker='o')

# 设置标题和轴标签
plt.title("In Query time with list size", fontsize=14)
plt.xlabel("Size", fontsize=14)
plt.ylabel("Time/ms", fontsize=16)

# 显示图表
plt.grid(True)


# 保存图像到 JPEG 文件
plt.savefig('/root/volume/SKL2SQL/experiments/results/pg/in_explore/change_in_list_size.png')
