import re
import matplotlib.pyplot as plt
import numpy as np

thread = 1

# 从文件中读取数据并解析
data = {}
type = ['in', 'in-value', 'any-value', 'any-array']
fusions = [t + '-3when' for t in type] + [t + '-100when' for t in type]
last_numbers = [50,263205,526360,789515,1052671,1315826,1578981,1842136,2105292,2368447,2631602,2894757,3157913,3421068,3684223,3947378,4210534,4473689,4736844,5000000]
with open('/root/volume/SKL2SQL/experiments/results/duckdb/usa_accident_rf_deep5_frequency_fusion_compration_thread{}_duckdb.txt'.format(thread), 'r') as file:
    for line in file:
        for fusion in fusions:
            match = re.search(r'(\w+)_' + fusion + r'_(\d+) 的执行时间为: (\d+\.\d+)', line)
            if match:
                # fusion = match.group(1)
                last_number = int(match.group(2))
                time = float(match.group(3))
                if fusion not in data:
                    data[fusion] = {}
                if last_number not in data[fusion]:
                    data[fusion][last_number] = {}
                    data[fusion][last_number]['sum'] = 0
                    data[fusion][last_number]['len'] = 0
                data[fusion][last_number]['sum'] += time
                data[fusion][last_number]['len'] += 1
                break

# 构建二维数组
array = [[data[fusion][last_number]['sum'] / data[fusion][last_number]['len'] for last_number in last_numbers] for fusion in fusions]

# 图标样式
markers = ['o', '^', 'x', '.']
# 颜色
colors = plt.cm.Paired(np.linspace(0, 1, 2))

# 绘制折线图
plt.figure(figsize=(10, 6))
for i, fusion in enumerate(fusions):
    plt.plot(last_numbers, array[i],color=colors[i // 4], marker=markers[i % 4], label=fusion)

plt.xlabel('Data amount (row)', fontsize=14)
plt.ylabel('Execution Time (s)', fontsize=14)
plt.title('Execution Time for Frequency Encoder Fison Methods in Duckdb(Thread={})'.format(thread), fontsize=16)
plt.legend(fontsize=12)
plt.grid(True)

# 设置图例中的图标大小
leg = plt.legend()
for line in leg.get_lines():
    line.set_linewidth(2)  # 设置图例中的线宽
    line.set_markersize(15)  # 设置图例中的标记大小

# 保存图像到 JPEG 文件
plt.savefig('/root/volume/SKL2SQL/experiments/results/duckdb/usa_accident_rf_deep5_fusion_compration_thread{}.png'.format(thread))
