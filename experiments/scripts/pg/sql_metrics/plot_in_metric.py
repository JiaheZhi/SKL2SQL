import matplotlib.pyplot as plt
import pandas as pd

# CSV文件路径
csv_file_path = '/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/in_metric.csv'

# 使用pandas读取CSV文件
df = pd.read_csv(csv_file_path)

# 假设CSV文件中有'width'和'total_cost'列
widths = df['width']
total_costs = df['total_cost']

# 绘制折线图
plt.plot(widths, total_costs, marker='.', linestyle='-', color='b')

# 设置图表标题和轴标签
plt.title('Total Cost vs Width')
plt.xlabel('Width')
plt.ylabel('Total Cost')

# 显示图例
plt.legend(['Total Cost'])

# 设置图像保存路径
output_image_path = '/home/postgres/SKL2SQL/experiments/scripts/pg/sql_metrics/in_total_cost_vs_width.png'

# 保存图像
plt.savefig(output_image_path, format='png')

# 清除当前图表，避免重复显示
plt.clf()
