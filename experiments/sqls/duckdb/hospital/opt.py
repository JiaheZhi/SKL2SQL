import re

# 原始SQL查询语句
sql_query = """
    SELECT
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 1968.0 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Year" <= 2011.0 THEN CASE
                WHEN "Power" <= 105.0 THEN CASE
                  WHEN "Year" <= 2008.0 THEN 1.38
                  ELSE 2.2531
                END
                ELSE CASE
                  WHEN "Location" <> 'Bangalore' THEN 3.12549
                  ELSE 5.025
                END
              END
              ELSE CASE
                WHEN "Name" <> 'BMW 5' THEN CASE
                  WHEN "Power" <= 105.0 THEN 3.43783
                  ELSE 5.19654
                END
                ELSE CASE
                  WHEN "Location" <> 'Delhi' THEN 18.0
                  ELSE 14.06667
                END
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Power" <= 63.12 THEN 3.11331
                  ELSE 4.2722
                END
                ELSE CASE
                  WHEN "Year" <= 2016.0 THEN 5.18838
                  ELSE 6.7697
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mini Cooper' THEN CASE
                  WHEN "Name" <> 'Hyundai Creta' THEN 8.22779
                  ELSE 12.02108
                END
                ELSE CASE
                  WHEN "Location" <> 'Kochi' THEN 23.0
                  ELSE 31.55
                END
              END
            END
          END
          ELSE CASE
            WHEN "Year" <= 2017.0 THEN CASE
              WHEN "Transmission" <> 'Manual' THEN CASE
                WHEN "Year" <= 2012.0 THEN CASE
                  WHEN "Name" <> 'Audi A4' THEN 6.86261
                  ELSE 12.66667
                END
                ELSE CASE
                  WHEN "Name" <> 'Mercedes-Benz GLA' THEN 14.63397
                  ELSE 19.78875
                END
              END
              ELSE CASE
                WHEN "Year" <= 2013.0 THEN CASE
                  WHEN "Year" <= 2011.0 THEN 4.65218
                  ELSE 7.05141
                END
                ELSE CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 8.74188
                  ELSE 11.85732
                END
              END
            END
            ELSE CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Mileage" <= 17.05 THEN CASE
                  WHEN "Brand" <= 266.0 THEN 14.78158
                  ELSE 17.62182
                END
                ELSE CASE
                  WHEN "Name" <> 'Chevrolet Cruze' THEN 27.88364
                  ELSE 9.87
                END
              END
              ELSE CASE
                WHEN "Location" <> 'Delhi' THEN 56.14
                ELSE 35.0
              END
            END
          END
        END
        ELSE CASE
          WHEN "Power" <= 193.64000000000033 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Year" <= 2012.0 THEN CASE
                WHEN "Brand" <= 409.0 THEN CASE
                  WHEN "Power" <= 174.33 THEN 8.26329
                  ELSE 12.391
                END
                ELSE CASE
                  WHEN "Owner_Type" in ('First') THEN 6.2925
                  ELSE 3.73471
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Jaguar XF' THEN CASE
                  WHEN "Name" <> 'Honda Accord' THEN 16.43331
                  ELSE 6.36
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 34687.2 THEN 32.0
                  ELSE 24.0
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2016.0 THEN CASE
                WHEN "Fuel_Type" <> 'Diesel' THEN CASE
                  WHEN "Brand" <= 244.0 THEN 10.98333
                  ELSE 17.89091
                END
                ELSE CASE
                  WHEN "Seats" <= 7.0 THEN 24.42273
                  ELSE 17.99378
                END
              END
              ELSE CASE
                WHEN "Transmission" <> 'Manual' THEN CASE
                  WHEN "Seats" <= 7.0 THEN 32.98542
                  ELSE 23.22395
                END
                ELSE CASE
                  WHEN "Power" <= 174.33 THEN 17.58692
                  ELSE 33.22333
                END
              END
            END
          END
          ELSE CASE
            WHEN "Kilometers_Driven" <= 34687.2 THEN CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Brand" <= 7.0 THEN 120.0
                ELSE CASE
                  WHEN "Year" <= 2015.0 THEN 35.5
                  ELSE 51.55408
                END
              END
              ELSE CASE
                WHEN "Mileage" <= 13.1 THEN 97.07
                ELSE 160.0
              END
            END
            ELSE CASE
              WHEN "Year" <= 2013.0 THEN CASE
                WHEN "Kilometers_Driven" <= 60000.0 THEN CASE
                  WHEN "Brand" <= 119.0 THEN 45.72167
                  ELSE 23.05143
                END
                ELSE CASE
                  WHEN "Location" <> 'Hyderabad' THEN 13.76633
                  ELSE 26.17412
                END
              END
              ELSE CASE
                WHEN "Engine" <= 2835.0 THEN CASE
                  WHEN "Brand" <= 551.0 THEN 29.92587
                  ELSE 15.72857
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 78500.0 THEN 42.40898
                  ELSE 28.531
                END
              END
            END
          END
        END
      END AS tree_0,
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 1968.0 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Year" <= 2011.0 THEN CASE
                  WHEN "Power" <= 105.0 THEN 2.03673
                  ELSE 3.2849
                END
                ELSE CASE
                  WHEN "Name" <> 'BMW 5' THEN 3.83576
                  ELSE 14.3375
                END
              END
              ELSE CASE
                WHEN "Location" <> 'Mumbai' THEN 40.88
                ELSE 26.5
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Name" <> 'Maruti Dzire' THEN 3.85992
                  ELSE 6.71
                END
                ELSE CASE
                  WHEN "Year" <= 2017.0 THEN 5.44821
                  ELSE 7.29083
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mini Cooper' THEN CASE
                  WHEN "Year" <= 2016.0 THEN 7.38244
                  ELSE 10.93175
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 22894.8 THEN 30.18333
                  ELSE 23.65
                END
              END
            END
          END
          ELSE CASE
            WHEN "Transmission" <> 'Automatic' THEN CASE
              WHEN "Year" <= 2013.0 THEN CASE
                WHEN "Year" <= 2011.0 THEN CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 3.68585
                  ELSE 5.62682
                END
                ELSE CASE
                  WHEN "Brand" <= 277.5 THEN 5.83167
                  ELSE 8.41056
                END
              END
              ELSE CASE
                WHEN "Brand" <= 266.0 THEN CASE
                  WHEN "Name" <> 'Mahindra XUV500' THEN 8.01622
                  ELSE 10.50481
                END
                ELSE CASE
                  WHEN "Mileage" <= 13.1 THEN 11.73562
                  ELSE 18.60765
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2017.0 THEN CASE
                WHEN "Year" <= 2013.0 THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 8.98405
                  ELSE 18.58333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 45000.0 THEN 20.0287
                  ELSE 15.20854
                END
              END
              ELSE CASE
                WHEN "Mileage" <= 13.1 THEN CASE
                  WHEN "Year" <= 2018.0 THEN 35.0
                  ELSE 55.81
                END
                ELSE CASE
                  WHEN "Mileage" <= 16.5 THEN 16.715
                  ELSE 26.90769
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Year" <= 2015.0 THEN CASE
            WHEN "Seats" <= 5.0 THEN CASE
              WHEN "Engine" <= 2179.0 THEN CASE
                WHEN "Brand" <= 214.0 THEN CASE
                  WHEN "Year" <= 2013.0 THEN 22.0
                  ELSE 25.78333
                END
                ELSE 5.75
              END
              ELSE CASE
                WHEN "Brand" <= 114.0 THEN CASE
                  WHEN "Year" <= 2010.0 THEN 59.0
                  ELSE 49.19545
                END
                ELSE CASE
                  WHEN "Name" <> 'BMW 3' THEN 42.80857
                  ELSE 29.0
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2012.0 THEN CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Brand" <= 409.0 THEN 9.97927
                  ELSE 4.67727
                END
                ELSE CASE
                  WHEN "Year" <= 2010.0 THEN 11.21533
                  ELSE 20.8135
                END
              END
              ELSE CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Name" <> 'Mercedes-Benz M-Class' THEN 17.60305
                  ELSE 38.75
                END
                ELSE CASE
                  WHEN "Brand" <= 551.0 THEN 29.67851
                  ELSE 13.02917
                END
              END
            END
          END
          ELSE CASE
            WHEN "Power" <= 193.64000000000033 THEN CASE
              WHEN "Kilometers_Driven" <= 55000.0 THEN CASE
                WHEN "Seats" <= 7.0 THEN CASE
                  WHEN "Engine" <= 1999.0 THEN 28.7782
                  ELSE 39.57574
                END
                ELSE CASE
                  WHEN "Power" <= 174.33 THEN 21.04094
                  ELSE 28.18833
                END
              END
              ELSE CASE
                WHEN "Location" <> 'Coimbatore' THEN CASE
                  WHEN "Seats" <= 5.0 THEN 4.5
                  ELSE 19.28925
                END
                ELSE CASE
                  WHEN "Year" <= 2016.0 THEN 13.96
                  ELSE 30.35714
                END
              END
            END
            ELSE CASE
              WHEN "Engine" <= 2835.0 THEN CASE
                WHEN "Mileage" <= 14.53 THEN CASE
                  WHEN "Brand" <= 551.0 THEN 31.21769
                  ELSE 19.17333
                END
                ELSE CASE
                  WHEN "Name" <> 'Mercedes-Benz GLE' THEN 41.07714
                  ELSE 56.57667
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Ford Endeavour' THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 60.43014
                  ELSE 109.24333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 34687.2 THEN 34.21429
                  ELSE 29.465
                END
              END
            END
          END
        END
      END AS tree_1,
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 1968.0 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Year" <= 2012.0 THEN CASE
                  WHEN "Year" <= 2008.0 THEN 1.52646
                  ELSE 2.79353
                END
                ELSE CASE
                  WHEN "Power" <= 98.6 THEN 3.5484
                  ELSE 5.48814
                END
              END
              ELSE CASE
                WHEN "Owner_Type" in ('First') THEN 40.88
                ELSE CASE
                  WHEN "Year" <= 2008.0 THEN 16.11
                  ELSE 26.5
                END
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Name" <> 'Maruti Dzire' THEN 3.82033
                  ELSE 8.7025
                END
                ELSE CASE
                  WHEN "Year" <= 2016.0 THEN 5.08854
                  ELSE 6.85356
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mini Cooper' THEN CASE
                  WHEN "Year" <= 2016.0 THEN 7.20828
                  ELSE 10.56529
                END
                ELSE CASE
                  WHEN "Year" <= 2016.0 THEN 23.0
                  ELSE 31.65
                END
              END
            END
          END
          ELSE CASE
            WHEN "Year" <= 2016.0 THEN CASE
              WHEN "Transmission" <> 'Manual' THEN CASE
                WHEN "Year" <= 2013.0 THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 9.64312
                  ELSE 17.83333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 55000.0 THEN 17.64469
                  ELSE 12.23526
                END
              END
              ELSE CASE
                WHEN "Year" <= 2011.0 THEN CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 3.54277
                  ELSE 5.84474
                END
                ELSE CASE
                  WHEN "Brand" <= 277.5 THEN 7.49419
                  ELSE 10.30182
                END
              END
            END
            ELSE CASE
              WHEN "Engine" <= 2179.0 THEN CASE
                WHEN "Brand" <= 72.0 THEN CASE
                  WHEN "Location" <> 'Coimbatore' THEN 41.5
                  ELSE 56.14
                END
                ELSE CASE
                  WHEN "Transmission" <> 'Manual' THEN 24.00853
                  ELSE 10.58
                END
              END
              ELSE CASE
                WHEN "Brand" <= 98.0 THEN 35.0
                ELSE CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 11.95383
                  ELSE 16.60036
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Year" <= 2015.0 THEN CASE
            WHEN "Seats" <= 5.0 THEN CASE
              WHEN "Engine" <= 2179.0 THEN CASE
                WHEN "Fuel_Type" <> 'Diesel' THEN CASE
                  WHEN "Year" <= 2013.0 THEN 35.0
                  ELSE 27.66667
                END
                ELSE 8.75
              END
              ELSE CASE
                WHEN "Brand" <= 114.0 THEN CASE
                  WHEN "Kilometers_Driven" <= 40000.0 THEN 72.0
                  ELSE 49.165
                END
                ELSE CASE
                  WHEN "Name" <> 'BMW 6' THEN 40.35833
                  ELSE 46.5
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2012.0 THEN CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Brand" <= 409.0 THEN 10.60451
                  ELSE 4.87909
                END
                ELSE CASE
                  WHEN "Name" <> 'Land Rover' THEN 16.00931
                  ELSE 53.5
                END
              END
              ELSE CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 17.24314
                  ELSE 30.1675
                END
                ELSE CASE
                  WHEN "Engine" <= 2835.0 THEN 19.352
                  ELSE 32.27
                END
              END
            END
          END
          ELSE CASE
            WHEN "Power" <= 193.64000000000033 THEN CASE
              WHEN "Year" <= 2018.0 THEN CASE
                WHEN "Kilometers_Driven" <= 29000.0 THEN CASE
                  WHEN "Name" <> 'Mercedes-Benz M-Class' THEN 30.90036
                  ELSE 48.29
                END
                ELSE CASE
                  WHEN "Mileage" <= 15.6 THEN 20.38789
                  ELSE 26.52259
                END
              END
              ELSE CASE
                WHEN "Power" <= 174.33 THEN CASE
                  WHEN "Mileage" <= 17.9 THEN 22.86308
                  ELSE 43.25333
                END
                ELSE CASE
                  WHEN "Location" <> 'Mumbai' THEN 41.22259
                  ELSE 61.25
                END
              END
            END
            ELSE CASE
              WHEN "Kilometers_Driven" <= 29000.0 THEN CASE
                WHEN "Engine" <= 2835.0 THEN CASE
                  WHEN "Name" <> 'Mercedes-Benz GLE' THEN 40.6875
                  ELSE 56.365
                END
                ELSE CASE
                  WHEN "Name" <> 'Ford Endeavour' THEN 66.67029
                  ELSE 34.16667
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mercedes-Benz GLE' THEN CASE
                  WHEN "Brand" <= 222.0 THEN 47.72643
                  ELSE 32.50268
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 45000.0 THEN 63.09
                  ELSE 49.0
                END
              END
            END
          END
        END
      END AS tree_2
"""

# 正则表达式匹配THEN和ELSE后面的数字
pattern = r'(THEN|ELSE)\s+(\d+\.?\d*)'

# 用于存储新的SQL查询语句
new_sql_query = sql_query

# 找到所有匹配的数字
matches = re.findall(pattern, sql_query)

# 乘以0.06666666666666667
for match in matches:
    original_number = float(match[1])
    new_number = original_number * 0.3333333333333333
    # 替换原始SQL查询语句中的数字
    new_sql_query = new_sql_query.replace(str(original_number), f"{new_number:.12f}")

print(new_sql_query)

with open('/home/postgres/craftsman_experiments/new_experiments/sql/duckdb_case/hospital/opt.txt', 'w', encoding='utf-8') as file:
    # 将字符串写入文件
    file.write(new_sql_query)