import duckdb
import time
import pandas as pd
import sys
import jionlp as jio
from sql_template import sqlline,sql_count_pull,temp_sql,dt_sql,dt_time_pull,dt5_split_pull,dt8_split_pull,dt8_count_pull,dt8_time_pull
from sql_template import explore_sql,dt8_split_pull_otherbest,dt8_split_nopull_otherbest
con = duckdb.connect("/root/volume/duckdb/mydb")


# text = '武侯区红牌楼街道19号红星大厦9楼2号'
# s1 = time.perf_counter()
# res1 = jio.parse_location(text, town_village=True)
# s2 = time.perf_counter()
# print("cost "+str(s2-s1)+" 's \n")
# # print(res1)

# text = '四川金阳2019年易地扶贫搬迁工程'
# s3 = time.perf_counter()
# res2 = jio.parse_location(text)
# s4 = time.perf_counter()
# print("cost "+str(s4-s3)+" 's \n")
# # print(res2)

# text = '联系电话：13288568202. (021)32830431'
# s5 = time.perf_counter()
# res3 = jio.extract_phone_number(text)
# s6 = time.perf_counter()
# print("cost "+str(s6-s5)+" 's \n")

# text = '联系电话：13288568202. (021)32830431'
# s7 = time.perf_counter()
# res3 = jio.extract_phone_number(text)
# s8 = time.perf_counter()
# print("cost "+str(s8-s7)+" 's \n")

# sys.exit()

bad_call_count = 0
time_call_count = 0
split_call_count = 0

def bad_count(weather:str) -> int:
    global bad_call_count
    bad_call_count = bad_call_count + 1
    # time.sleep(0.00001)
    # temp3=''.join(reversed(weather))
    # temp = len(weather.split('s')) #无意义 占时间
    # temp2 = temp+ord(weather[0])+ord(weather[2]) #无意义 占时间
    bad_conditions = ['rain', 'snow', 'fog', 'wind', 'thunder', 'storm', 'drizzle', 'sand', 'whirlwind']
  
    weather = weather.lower()
    bad_value = 0
    for bad_cond in bad_conditions:
        if bad_cond in weather:
            bad_value += 1    
    return bad_value

def split_line(line:str) -> int:
    global split_call_count
    split_call_count = split_call_count + 1
    result = len(str(line).split(' '))%5
    text = '联系电话：13288568202. (021)32830431'
    res3 = jio.extract_phone_number(text)
    return result

def time_months(mytime:str) -> int:
    global time_call_count
    time_call_count = time_call_count + 1
    result = (int(str(mytime)[0:4])*12 + int(str(mytime)[5:7]))
    return result

con.create_function("bad_count", bad_count,side_effects = True)
con.create_function("split_line", split_line)
con.create_function("time_months", time_months)
con.execute("set threads to 8;")
con.execute("SET max_expression_depth TO 10000;")
con.sql(temp_sql)
# result = con.sql(explore_sql)
# print(result)
# sys.exit()

# sql_split_pull_coarse = ''
# sql_split_pull_coarse = sql_split_pull_coarse+ dt8_split_nopull_otherbest.format('',0,5409880,'','','','')
# pull_total_time_1 = time.perf_counter()
# con.sql(sql_split_pull_coarse)
# pull_total_time_2 = time.perf_counter()
# print("pull_coarse_total_time:  "+str(pull_total_time_2-pull_total_time_1)+" 's \n")
# print(split_call_count) #3380923 但是执行时间没提高多少（id列引起的？不是，无id的查询时间差不多）
# sys.exit()

# WITH cte_usa_accident_zipcode_map AS MATERIALIZED (SELECT * FROM usa_accident_zipcode_map)
# select * from cte_usa_accident_zipcode_map;

# cte_Airport_Code AS MATERIALIZED
# SELECT * FROM Airport_Code
# WITH cte_Airport_Code AS MATERIALIZED
# SELECT * FROM Airport_Code;


#分析各元组的最优方法
# chunk_size = 1
# result = []
# con.sql(temp_sql)
# for i in range(10000):#[ )
#   dt_split_pull_1 = dt8_split_pull.format('_temp',i*chunk_size,(i+1)*chunk_size,'_temp','_temp','_temp','_temp')
#   # dt_count_pull_1 = dt8_count_pull.format('_temp',i*chunk_size,(i+1)*chunk_size,'_temp','_temp','_temp','_temp')
#   # dt_time_pull_1 = dt_time_pull.format('_temp',i*chunk_size,(i+1)*chunk_size,'_temp','_temp','_temp','_temp')
#   # sql_count_pull_1 = sql_count_pull.format('',i*chunk_size,(i+1)*chunk_size,'','','','')
#   # sqlline_1 = sqlline.format('',i*chunk_size,(i+1)*chunk_size,'','','','')
  
#   time1 = time.perf_counter()
#   # bad_call_count = 0
#   # con.sql(sqlline_1)
#   # no_pull_udf_count = bad_call_count
#   # time2 = time.perf_counter()
#   split_call_count = 0
#   con.sql(dt_split_pull_1)
#   split_pull_count = split_call_count
#   time3 = time.perf_counter()
  
#   # no_pull_time = time2-time1
#   # pull_time = time3-time2
  
#   result.append([i,1,split_pull_count])
#   if i%100 == 0 and i != 0:
#     print("chunk"+str(i)+"done.")
#     output = [sub[2] for sub in result[i-100:i]]
#     print(output)
  
# name=['chunk_num','no_pull_calls','pull_calls']
# result = pd.DataFrame(columns = name,data = result )
# result.to_csv("dt8_fine_grained_split_shf_{}.csv".format(str(chunk_size)),index=False)
# sys.exit()


# 细粒度分析各chunk的最优方法
# chunk_size = 100000
# result = []
# for i in range(55):#[ )
#   sql_split_pull_1 = "EXPLAIN ANALYZE\n"+dt8_split_pull_otherbest.format('',i*chunk_size,(i+1)*chunk_size,'','','','')
#   sqlline_1 = "EXPLAIN ANALYZE\n"+dt8_split_nopull_otherbest.format('',i*chunk_size,(i+1)*chunk_size,'','','','')
  
#   time1 = time.perf_counter()
#   split_call_count = 0
#   con.sql(sqlline_1)
#   no_pull_udf_count = split_call_count
#   time2 = time.perf_counter()
#   split_call_count = 0
#   con.sql(sql_split_pull_1)
#   pull_udf_count = split_call_count
#   time3 = time.perf_counter()
  
#   no_pull_time = time2-time1
#   pull_time = time3-time2
  
#   #按照UDF调用次数来决定最优方法，可能不是最好的策略，因为需要考虑到向量化执行等影响因素
#   result.append([i,no_pull_udf_count,pull_udf_count,no_pull_time,pull_time,max(no_pull_time,pull_time)/min(no_pull_time,pull_time),0 if no_pull_udf_count<pull_udf_count else 1])
#   if i%20 == 0:
#     print("chunk"+str(i)+"done.")
  
# name=['chunk_num','no_pull_calls','pull_calls','no_pull_time','pull_time','speed_up','better']
# result = pd.DataFrame(columns = name,data = result )
# result.to_csv("/root/volume/SKL2SQL/generated_sql/fine_grained_dt8/chunk_size_{}.csv".format(str(chunk_size)),index=False)
# sys.exit()



result = []
# con.sql(sqlline) #recall_count:5409875 time:51.71s （UDF改的更耗时后）69.91

# print(len(better))

#粗粒度不上推
# sqlline_org = sqlline.format(0,5409880)
# no_pull_total_time_1 = time.perf_counter()
# con.sql(sqlline_org)
# no_pull_total_time_2 = time.perf_counter()
# print("no_pull_total_time:  "+str(no_pull_total_time_2-no_pull_total_time_1)+" 's \n")

# 粗粒度上推
# sql_count_pull_coarse = 'EXPLAIN ANALYZE\n'
# sql_count_pull_coarse = sql_count_pull_coarse+ sql_count_pull.format('',0,5409880,'','','','')
# pull_total_time_1 = time.perf_counter()
# con.sql(sql_count_pull_coarse)
# pull_total_time_2 = time.perf_counter()
# print("pull_coarse_total_time:  "+str(pull_total_time_2-pull_total_time_1)+" 's \n")
# print(bad_call_count) #3380923 但是执行时间没提高多少（id列引起的？不是，无id的查询时间差不多）

# sys.exit()
chunk_size = 100000
df = pd.read_csv("/root/volume/SKL2SQL/generated_sql/fine_grained_dt8/chunk_size_{}.csv".format(str(chunk_size)))

better = df['better'].to_numpy()
print("mergeing sql!\n")
# merge SQL
merge_start = time.perf_counter()
# con.sql(temp_sql)
union_sql = ''
sql_sub_str = []
sql_sub_str.append('EXPLAIN ANALYZE')
for i in range(len(better)):
  # sql_split_pull_1 = sql_count_pull.format('',i*chunk_size,(i+1)*chunk_size,'','','','')
  # sqlline_1 = sqlline.format('',i*chunk_size,(i+1)*chunk_size,'','','','')
  sql_split_pull_1 = dt8_split_pull_otherbest.format('_temp',i*chunk_size,(i+1)*chunk_size,'_temp','_temp','_temp','_temp')
  sqlline_1 = dt8_split_nopull_otherbest.format('_temp',i*chunk_size,(i+1)*chunk_size,'_temp','_temp','_temp','_temp')
  if i == 0:
    # union_sql = union_sql+sql_split_pull_1
    if better[i] == 0:
      sql_sub_str.append(sqlline_1)
    else:
      sql_sub_str.append(sql_split_pull_1)
  else:
    # union_sql = union_sql+'\nUNION ALL\n'+sql_split_pull_1
    if better[i] == 0:
      sql_sub_str.append('\nUNION ALL\n')
      sql_sub_str.append(sqlline_1)
    else:
      sql_sub_str.append('\nUNION ALL\n')
      sql_sub_str.append(sql_split_pull_1)

sql_sub_str.append(';')
combined_sql = union_sql.join(sql_sub_str)


merge_end = time.perf_counter()
print("merge sql time:  "+str(merge_end-merge_start)+" 's \n")
# file = open('/root/volume/SKL2SQL/generated_sql/merge', 'w') 
# file.write(combined_sql)
# file.close() 

# 细粒度上推
union_time_1 = time.perf_counter()
con.sql(combined_sql)
union__time_2 = time.perf_counter()
print("union_time:  "+str(union__time_2-union_time_1)+" 's \n")
print(split_call_count)
sys.exit()






# for i in range(100):
#   time_call_count = 0
#   sql_time_pull_1 = sql_time_pull.format(i)
#   con.sql(sql_time_pull_1) 
#   result.append([i,time_call_count])

# for i in range(100):
#   split_call_count = 0
#   sql_split_pull_1 = sql_split_pull.format(i)
#   con.sql(sql_split_pull_1) 
#   result.append([i,split_call_count])
  
# con.sql(sql_count_pull) #bad_recall_count:2393767 time:47.67s  55.61s
# con.sql(sql_time_pull) #time_recall_count:13705366 time:96.56s
# print(time_call_count)
# con.sql("select count(*) from rf_deep5;").show()
begin2 = time.perf_counter()
# print(str(begin2-begin1)+" 's \n")




# alter table usa_accident add column index_id int DEFAULT nextval('seq_personid');