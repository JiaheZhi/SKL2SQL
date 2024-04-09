import re
import matplotlib.pyplot as plt

thread = 1
version = '2'
# 从文件中读取数据并解析
data = {}
fusions = ['fusion', 'join', 'case']
last_numbers = [5000000]
with open('/root/volume/SKL2SQL/experiments/results/pg/usa_accident_rf_deep5_frequency_compration{}_thread{}_pg.txt'.format(version, thread), 'r') as file:
    for line in file:
        for fusion in fusions:
            if version == '':
                match = re.search(r'(\w+)_' + fusion + r'_(\d+) 的执行时间为: (\d+\.\d+)', line)
            elif version == '2':
                match = re.search(r'(\w+)_' + fusion +'_2'+ r'_(\d+) 的执行时间为: (\d+\.\d+)', line)
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
array = [[data[fusion][last_number]['sum'] / data[fusion][last_number]['len'] / 1000  for last_number in last_numbers] for fusion in fusions]

print('version', version,':', array)
