EXPLAIN ANALYZE
SELECT

                  (COALESCE("Temperature(F)", 77.0) -0.0) / (18.948923924075153) AS "Temperature(F)",
                  (COALESCE("Wind_Chill(F)", 73.0) -0.0) / (20.33996354611891) AS "Wind_Chill(F)",
                  (COALESCE("Humidity(%)", 93.0) -0.0) / (22.940857900228604) AS "Humidity(%)",
                  (COALESCE("Pressure(in)", 29.96) -0.0) / (0.9983373681781709) AS "Pressure(in)",
                  (COALESCE("Visibility(mi)", 10.0) -0.0) / (2.6625480852767667) AS "Visibility(mi)",
                   airport_code_0 AS "Airport_Code_0",
                   airport_code_1 AS "Airport_Code_1",
                   airport_code_2 AS "Airport_Code_2",
                   airport_code_3 AS "Airport_Code_3",
                   airport_code_4 AS "Airport_Code_4",
                   airport_code_5 AS "Airport_Code_5",
                   airport_code_6 AS "Airport_Code_6",
                   airport_code_7 AS "Airport_Code_7",
                   airport_code_8 AS "Airport_Code_8",
                   airport_code_9 AS "Airport_Code_9",
                   airport_code_10 AS "Airport_Code_10",
                  usa_accident_zipcode_map."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  "Country",
                  "Start_Time"
                FROM( select * from usa_accident where index_id >= 10000  and index_id < 20000  ) as usa_accident
                  LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode" LEFT JOIN 
                  Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code;