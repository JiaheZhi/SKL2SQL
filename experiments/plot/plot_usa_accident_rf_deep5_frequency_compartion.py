import re
import matplotlib.pyplot as plt

# 从文件中读取数据并解析
data = {}
fusions = ['fusion', 'join', 'case']
last_numbers = [500, 5000, 50000, 500000, 5000000]
with open('/root/volume/SKL2SQL/experiments/results/usa_accident_rf_deep5_frequency_compration_thread4.txt', 'r') as file:
    for line in file:
        for fusion in fusions:
            match = re.search(r'(\w+)_' + fusion + r'_(\d+) 的执行时间为: (\d+\.\d+)s', line)
            if match:
                # fusion = match.group(1)
                last_number = int(match.group(2))
                time = float(match.group(3))
                if fusion not in data:
                    data[fusion] = {}
                data[fusion][last_number] = time
                break

# 构建二维数组
array = [[data[fusion][last_number] for last_number in last_numbers] for fusion in fusions]

# 图标样式
markers = ['o', '^', 'x']

# 绘制折线图
plt.figure(figsize=(10, 6))
for i, fusion in enumerate(fusions):
    plt.plot(last_numbers, array[i], marker=markers[i], label=fusion)

plt.xlabel('Data amount (row)')
plt.ylabel('Execution Time (s)')
plt.title('Execution Time for Different Encoder Implementation Method')
plt.legend()
plt.grid(True)

# 保存图像到 JPEG 文件
plt.savefig('/root/volume/SKL2SQL/experiments/results/usa_accident_rf_deep5_frequency_compration_thread4.png')
