import matplotlib.pyplot as plt
import pandas as pd

# CSV文件路径
csv_file_path = '/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/equal_metric.csv'

# 使用pandas读取CSV文件
df = pd.read_csv(csv_file_path)

# 假设CSV文件中有'length'和'total_cost'列
widths = df['length']
total_costs = df['total_cost']

# 绘制折线图
plt.plot(widths, total_costs, marker='.')

# 设置图表标题和轴标签
plt.title('Total Cost vs length')
plt.xlabel('Length')
plt.ylabel('Total Cost')

# 显示图例
plt.legend(['Total Cost'])

# 设置图像保存路径
output_image_path = '/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/queal_total_cost_vs_length.png'

# 保存图像
plt.savefig(output_image_path, format='png')

# 清除当前图表，避免重复显示
plt.clf()
