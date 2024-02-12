sqlline = """
SELECT
  CASE
    WHEN class_0 >= class_1
    AND class_0 >= class_2
    AND class_0 >= class_3 THEN 1
    WHEN class_1 >= class_0
    AND class_1 >= class_2
    AND class_1 >= class_3 THEN 2
    WHEN class_2 >= class_0
    AND class_2 >= class_1
    AND class_2 >= class_3 THEN 3
    WHEN class_3 >= class_0
    AND class_3 >= class_1
    AND class_3 >= class_2 THEN 4
  END AS Score
FROM
  (
    SELECT
      (
        CASE
          WHEN tree_0 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 1 THEN 1
          ELSE 0
        END
      ) AS class_0,
      (
        CASE
          WHEN tree_0 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 2 THEN 1
          ELSE 0
        END
      ) AS class_1,
      (
        CASE
          WHEN tree_0 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 3 THEN 1
          ELSE 0
        END
      ) AS class_2,
      (
        CASE
          WHEN tree_0 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 4 THEN 1
          ELSE 0
        END
      ) AS class_3
    FROM
      (
        SELECT
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Source_2" <= 0.5 THEN CASE
                WHEN "Description" <= 8.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.756160736083984 THEN CASE
                    WHEN "Zipcode" <= 146.0 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN "Start_Time" <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 63.5 THEN CASE
                  WHEN "Weather_Condition" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24268.5 THEN 1.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.7136021256446838 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.644287109375 THEN CASE
                    WHEN "Description" <= 10.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 583.0 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24225.5 THEN CASE
                    WHEN "Timezone_1" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Weather_Condition" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 4.337239742279053 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24229.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 5.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Weather_Condition" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24243.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24237.5 THEN CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source_0" <= 0.5 THEN CASE
                  WHEN "Temperature(F)" <= 3.5622074604034424 THEN CASE
                    WHEN "Temperature(F)" <= 2.9816997051239014 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 4.406582832336426 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 33.5 THEN CASE
                  WHEN "Start_Time" <= 24268.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.2856463193893433 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 11.5 THEN 0.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24230.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.5511335134506226 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 135.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 1.744162380695343 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 14.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 16.5 THEN CASE
                    WHEN "Pressure(in)" <= 29.704387664794922 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Zipcode" <= 33.5 THEN CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 9.5 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Source_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 15.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Description" <= 6.5 THEN CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24248.5 THEN CASE
                    WHEN "Source_1" <= 0.5 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 31.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 0.5 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Source_1" <= 0.5 THEN CASE
                    WHEN "Temperature(F)" <= 1.8497092723846436 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.854637145996094 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24237.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 453.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_2" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 3.6833845376968384 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 1.4773870706558228 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 12.5 THEN 3.0
                    ELSE 3.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 36.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Weather_Condition" <= 0.5 THEN CASE
                  WHEN "Airport_Code_5" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Description" <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 1.7995744347572327 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 0.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.9085614681243896 THEN CASE
                    WHEN "Temperature(F)" <= 4.037168502807617 THEN 0.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              CASE
                WHEN "Source" = 'Source1' THEN 1
                ELSE 0
              END AS "Source_0",
              CASE
                WHEN "Source" = 'Source2' THEN 1
                ELSE 0
              END AS "Source_1",
              CASE
                WHEN "Source" = 'Source3' THEN 1
                ELSE 0
              END AS "Source_2",
              CASE
                WHEN "Timezone" = 'US/Central' THEN 1
                ELSE 0
              END AS "Timezone_0",
              CASE
                WHEN "Timezone" = 'US/Eastern' THEN 1
                ELSE 0
              END AS "Timezone_1",
              CASE
                WHEN "Timezone" = 'US/Mountain' THEN 1
                ELSE 0
              END AS "Timezone_2",
              CASE
                WHEN "Timezone" = 'US/Pacific' THEN 1
                ELSE 0
              END AS "Timezone_3",
              CASE
                WHEN "Country" = 'US' THEN 1
                ELSE 0
              END AS "Country_0",
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Visibility(mi)",
              "Airport_Code_0",
              "Airport_Code_1",
              "Airport_Code_2",
              "Airport_Code_3",
              "Airport_Code_4",
              "Airport_Code_5",
              "Airport_Code_6",
              "Airport_Code_7",
              "Airport_Code_8",
              "Airport_Code_9",
              "Airport_Code_10",
              "Zipcode",
              "Description",
              "Start_Time",
              "Weather_Condition"
            FROM
              (
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
                  usa_accident_zipcode_map{}."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  "Country",
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  time_months("Start_Time") AS "Start_Time",
                  bad_count(COALESCE("Weather_Condition", 'Fair')) AS "Weather_Condition"
                 FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                  LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
              ) AS data 
          ) AS data
      ) AS F
  ) AS F"""

sql_count_pull='''
SELECT
  CASE
    WHEN class_0 >= class_1
    AND class_0 >= class_2
    AND class_0 >= class_3 THEN 1
    WHEN class_1 >= class_0
    AND class_1 >= class_2
    AND class_1 >= class_3 THEN 2
    WHEN class_2 >= class_0
    AND class_2 >= class_1
    AND class_2 >= class_3 THEN 3
    WHEN class_3 >= class_0
    AND class_3 >= class_1
    AND class_3 >= class_2 THEN 4
  END AS Score
FROM
  (
    SELECT
      (
        CASE
          WHEN tree_0 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 1 THEN 1
          ELSE 0
        END
      ) AS class_0,
      (
        CASE
          WHEN tree_0 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 2 THEN 1
          ELSE 0
        END
      ) AS class_1,
      (
        CASE
          WHEN tree_0 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 3 THEN 1
          ELSE 0
        END
      ) AS class_2,
      (
        CASE
          WHEN tree_0 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 4 THEN 1
          ELSE 0
        END
      ) AS class_3
    FROM
      (
        SELECT
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Source_2" <= 0.5 THEN CASE
                WHEN "Description" <= 8.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.756160736083984 THEN CASE
                    WHEN "Zipcode" <= 146.0 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN "Start_Time" <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 63.5 THEN CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24268.5 THEN 1.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.7136021256446838 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.644287109375 THEN CASE
                    WHEN "Description" <= 10.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 583.0 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24225.5 THEN CASE
                    WHEN "Timezone_1" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 4.337239742279053 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24229.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 5.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24243.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24237.5 THEN CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source_0" <= 0.5 THEN CASE
                  WHEN "Temperature(F)" <= 3.5622074604034424 THEN CASE
                    WHEN "Temperature(F)" <= 2.9816997051239014 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 4.406582832336426 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 33.5 THEN CASE
                  WHEN "Start_Time" <= 24268.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.2856463193893433 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 11.5 THEN 0.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24230.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.5511335134506226 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 135.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 1.744162380695343 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 14.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 16.5 THEN CASE
                    WHEN "Pressure(in)" <= 29.704387664794922 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Zipcode" <= 33.5 THEN CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 9.5 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Source_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 15.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Description" <= 6.5 THEN CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24248.5 THEN CASE
                    WHEN "Source_1" <= 0.5 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 31.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 0.5 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Source_1" <= 0.5 THEN CASE
                    WHEN "Temperature(F)" <= 1.8497092723846436 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.854637145996094 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24237.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 453.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_2" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 3.6833845376968384 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 1.4773870706558228 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 12.5 THEN 3.0
                    ELSE 3.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 36.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                  WHEN "Airport_Code_5" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Description" <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 1.7995744347572327 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 0.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.9085614681243896 THEN CASE
                    WHEN "Temperature(F)" <= 4.037168502807617 THEN 0.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              CASE
                WHEN "Source" = 'Source1' THEN 1
                ELSE 0
              END AS "Source_0",
              CASE
                WHEN "Source" = 'Source2' THEN 1
                ELSE 0
              END AS "Source_1",
              CASE
                WHEN "Source" = 'Source3' THEN 1
                ELSE 0
              END AS "Source_2",
              CASE
                WHEN "Timezone" = 'US/Central' THEN 1
                ELSE 0
              END AS "Timezone_0",
              CASE
                WHEN "Timezone" = 'US/Eastern' THEN 1
                ELSE 0
              END AS "Timezone_1",
              CASE
                WHEN "Timezone" = 'US/Mountain' THEN 1
                ELSE 0
              END AS "Timezone_2",
              CASE
                WHEN "Timezone" = 'US/Pacific' THEN 1
                ELSE 0
              END AS "Timezone_3",
              CASE
                WHEN "Country" = 'US' THEN 1
                ELSE 0
              END AS "Country_0",
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Visibility(mi)",
              "Airport_Code_0",
              "Airport_Code_1",
              "Airport_Code_2",
              "Airport_Code_3",
              "Airport_Code_4",
              "Airport_Code_5",
              "Airport_Code_6",
              "Airport_Code_7",
              "Airport_Code_8",
              "Airport_Code_9",
              "Airport_Code_10",
              "Zipcode",
              "Description",
              "Start_Time",
              "Weather_Condition"
            FROM
              (
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
                  usa_accident_zipcode_map{}."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  "Country",
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  time_months("Start_Time") AS "Start_Time",
                  "Weather_Condition"
                 FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                  LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
              ) AS data
          ) AS data
      ) AS F
  ) AS F'''


#  FROM
#                    ((usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode") LEFT JOIN 
#                   Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code)
#               ) AS data


sql_time_pull = """
-- create temp table rf_deep5 as
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN class_0 >= class_1
    AND class_0 >= class_2
    AND class_0 >= class_3 THEN 1
    WHEN class_1 >= class_0
    AND class_1 >= class_2
    AND class_1 >= class_3 THEN 2
    WHEN class_2 >= class_0
    AND class_2 >= class_1
    AND class_2 >= class_3 THEN 3
    WHEN class_3 >= class_0
    AND class_3 >= class_1
    AND class_3 >= class_2 THEN 4
  END AS Score
FROM
  (
    SELECT
      (
        CASE
          WHEN tree_0 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 1 THEN 1
          ELSE 0
        END
      ) AS class_0,
      (
        CASE
          WHEN tree_0 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 2 THEN 1
          ELSE 0
        END
      ) AS class_1,
      (
        CASE
          WHEN tree_0 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 3 THEN 1
          ELSE 0
        END
      ) AS class_2,
      (
        CASE
          WHEN tree_0 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 4 THEN 1
          ELSE 0
        END
      ) AS class_3
    FROM
      (
        SELECT
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Source_2" <= 0.5 THEN CASE
                WHEN "Description" <= 8.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.756160736083984 THEN CASE
                    WHEN "Zipcode" <= 146.0 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 63.5 THEN CASE
                  WHEN "Weather_Condition" <= 0.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.7136021256446838 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.644287109375 THEN CASE
                    WHEN "Description" <= 10.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 583.0 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24225.5 THEN CASE
                    WHEN "Timezone_1" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Weather_Condition" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 4.337239742279053 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24229.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 5.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24243.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24237.5 THEN CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source_0" <= 0.5 THEN CASE
                  WHEN "Temperature(F)" <= 3.5622074604034424 THEN CASE
                    WHEN "Temperature(F)" <= 2.9816997051239014 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 4.406582832336426 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 33.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.2856463193893433 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 11.5 THEN 0.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24230.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.5511335134506226 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 135.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 1.744162380695343 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 14.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 16.5 THEN CASE
                    WHEN "Pressure(in)" <= 29.704387664794922 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Zipcode" <= 33.5 THEN CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 9.5 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Source_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 15.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Description" <= 6.5 THEN CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                    WHEN "Source_1" <= 0.5 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 31.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 0.5 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Source_1" <= 0.5 THEN CASE
                    WHEN "Temperature(F)" <= 1.8497092723846436 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.854637145996094 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24237.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 453.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_2" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 3.6833845376968384 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 1.4773870706558228 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 12.5 THEN 3.0
                    ELSE 3.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 36.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                WHEN "Weather_Condition" <= 0.5 THEN CASE
                  WHEN "Airport_Code_5" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Description" <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 1.7995744347572327 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 0.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.9085614681243896 THEN CASE
                    WHEN "Temperature(F)" <= 4.037168502807617 THEN 0.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              CASE
                WHEN "Source" = 'Source1' THEN 1
                ELSE 0
              END AS "Source_0",
              CASE
                WHEN "Source" = 'Source2' THEN 1
                ELSE 0
              END AS "Source_1",
              CASE
                WHEN "Source" = 'Source3' THEN 1
                ELSE 0
              END AS "Source_2",
              CASE
                WHEN "Timezone" = 'US/Central' THEN 1
                ELSE 0
              END AS "Timezone_0",
              CASE
                WHEN "Timezone" = 'US/Eastern' THEN 1
                ELSE 0
              END AS "Timezone_1",
              CASE
                WHEN "Timezone" = 'US/Mountain' THEN 1
                ELSE 0
              END AS "Timezone_2",
              CASE
                WHEN "Timezone" = 'US/Pacific' THEN 1
                ELSE 0
              END AS "Timezone_3",
              CASE
                WHEN "Country" = 'US' THEN 1
                ELSE 0
              END AS "Country_0",
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Visibility(mi)",
              "Airport_Code_0",
              "Airport_Code_1",
              "Airport_Code_2",
              "Airport_Code_3",
              "Airport_Code_4",
              "Airport_Code_5",
              "Airport_Code_6",
              "Airport_Code_7",
              "Airport_Code_8",
              "Airport_Code_9",
              "Airport_Code_10",
              "Zipcode",
              "Description",
              "Start_Time",
              "Weather_Condition"
            FROM
              (
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
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  "Start_Time",
                  bad_count(COALESCE("Weather_Condition", 'Fair')) AS "Weather_Condition"
                FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                  LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode" LEFT JOIN 
                  Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code
              ) AS data 
          ) AS data
      ) AS F
  ) AS F;"""

#  FROM( select * from usa_accident limit 1 offset {}) as usa_accident
#                   LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode" LEFT JOIN 
#                   Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code
#               ) AS data 


sql_split_pull= """
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN class_0 >= class_1
    AND class_0 >= class_2
    AND class_0 >= class_3 THEN 1
    WHEN class_1 >= class_0
    AND class_1 >= class_2
    AND class_1 >= class_3 THEN 2
    WHEN class_2 >= class_0
    AND class_2 >= class_1
    AND class_2 >= class_3 THEN 3
    WHEN class_3 >= class_0
    AND class_3 >= class_1
    AND class_3 >= class_2 THEN 4
  END AS Score
FROM
  (
    SELECT
      (
        CASE
          WHEN tree_0 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 1 THEN 1
          ELSE 0
        END
      ) AS class_0,
      (
        CASE
          WHEN tree_0 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 2 THEN 1
          ELSE 0
        END
      ) AS class_1,
      (
        CASE
          WHEN tree_0 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 3 THEN 1
          ELSE 0
        END
      ) AS class_2,
      (
        CASE
          WHEN tree_0 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 4 THEN 1
          ELSE 0
        END
      ) AS class_3
    FROM
      (
        SELECT
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Source_2" <= 0.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 8.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.756160736083984 THEN CASE
                    WHEN "Zipcode" <= 146.0 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 15.5 THEN CASE
                    WHEN "Start_Time" <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 63.5 THEN CASE
                  WHEN "Weather_Condition" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24268.5 THEN 1.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.7136021256446838 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.644287109375 THEN CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 10.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 583.0 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 11.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24225.5 THEN CASE
                    WHEN "Timezone_1" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 11.5 THEN CASE
                  WHEN "Weather_Condition" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 4.337239742279053 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 9.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24229.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 5.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24243.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24237.5 THEN CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source_0" <= 0.5 THEN CASE
                  WHEN "Temperature(F)" <= 3.5622074604034424 THEN CASE
                    WHEN "Temperature(F)" <= 2.9816997051239014 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 4.406582832336426 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 33.5 THEN CASE
                  WHEN "Start_Time" <= 24268.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.2856463193893433 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 11.5 THEN 0.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24230.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.5511335134506226 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 135.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 1.744162380695343 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 14.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 16.5 THEN CASE
                    WHEN "Pressure(in)" <= 29.704387664794922 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Zipcode" <= 33.5 THEN CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 9.5 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 11.5 THEN CASE
                    WHEN "Source_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 15.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 11.5 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 6.5 THEN CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24248.5 THEN CASE
                    WHEN "Source_1" <= 0.5 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 31.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 0.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 11.5 THEN CASE
                  WHEN "Source_1" <= 0.5 THEN CASE
                    WHEN "Temperature(F)" <= 1.8497092723846436 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.854637145996094 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24237.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 453.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_2" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 3.6833845376968384 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 9.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 1.4773870706558228 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 12.5 THEN 3.0
                    ELSE 3.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 36.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Weather_Condition" <= 0.5 THEN CASE
                  WHEN "Airport_Code_5" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 1.7995744347572327 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 0.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.9085614681243896 THEN CASE
                    WHEN "Temperature(F)" <= 4.037168502807617 THEN 0.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              CASE
                WHEN "Source" = 'Source1' THEN 1
                ELSE 0
              END AS "Source_0",
              CASE
                WHEN "Source" = 'Source2' THEN 1
                ELSE 0
              END AS "Source_1",
              CASE
                WHEN "Source" = 'Source3' THEN 1
                ELSE 0
              END AS "Source_2",
              CASE
                WHEN "Timezone" = 'US/Central' THEN 1
                ELSE 0
              END AS "Timezone_0",
              CASE
                WHEN "Timezone" = 'US/Eastern' THEN 1
                ELSE 0
              END AS "Timezone_1",
              CASE
                WHEN "Timezone" = 'US/Mountain' THEN 1
                ELSE 0
              END AS "Timezone_2",
              CASE
                WHEN "Timezone" = 'US/Pacific' THEN 1
                ELSE 0
              END AS "Timezone_3",
              CASE
                WHEN "Country" = 'US' THEN 1
                ELSE 0
              END AS "Country_0",
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Visibility(mi)",
              "Airport_Code_0",
              "Airport_Code_1",
              "Airport_Code_2",
              "Airport_Code_3",
              "Airport_Code_4",
              "Airport_Code_5",
              "Airport_Code_6",
              "Airport_Code_7",
              "Airport_Code_8",
              "Airport_Code_9",
              "Airport_Code_10",
              "Zipcode",
              "Description",
              "Start_Time",
              "Weather_Condition"
            FROM
              (
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
                  "Description",
                  time_months("Start_Time") AS "Start_Time",
                  bad_count(COALESCE("Weather_Condition", 'Fair')) AS "Weather_Condition"
               FROM( select * from usa_accident limit 1 offset {}) as usa_accident
                  LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode" LEFT JOIN 
                  Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code
              ) AS data 
          ) AS data
      ) AS F
  ) AS F;
"""



cte_sql = """
explain analyze
WITH cte_usa_accident_zipcode_map AS (SELECT * from usa_accident_zipcode_map,Airport_Code)
select * from cte_usa_accident_zipcode_map;
"""

temp_sql = """
CREATE TEMP TABLE usa_accident_zipcode_map_temp AS SELECT * from usa_accident_zipcode_map;
CREATE TEMP TABLE Airport_Code_temp AS SELECT * from Airport_Code;
"""

dt_sql = """
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN "Description" <= 11.5 THEN CASE
        WHEN "Zipcode" <= 49.5 THEN CASE
          WHEN "Start_Time" <= 24268.5 THEN CASE
            WHEN "Zipcode" <= 14.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 9.5 THEN 1
            ELSE 1
          END
        END
        ELSE CASE
          WHEN "Description" <= 8.5 THEN CASE
            WHEN "Start_Time" <= 24268.5 THEN 2
            ELSE 1
          END
          ELSE CASE
            WHEN "Start_Time" <= 24231.5 THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Zipcode" <= 11.5 THEN CASE
          WHEN "Description" <= 15.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 3.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN "Description" <= 13.5 THEN 3
            ELSE 3
          END
          ELSE CASE
            WHEN "Zipcode" <= 500.5 THEN 2
            ELSE 3
          END
        END
      END
    END
    ELSE CASE
      WHEN "Start_Time" <= 24248.5 THEN CASE
        WHEN "Description" <= 9.5 THEN CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN "Start_Time" <= 24242.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 7.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 55.5 THEN CASE
            WHEN "Zipcode" <= 4.5 THEN 4
            ELSE 4
          END
          ELSE CASE
            WHEN "Description" <= 12.5 THEN 2
            ELSE 4
          END
        END
      END
      ELSE CASE
        WHEN "Description" <= 35.5 THEN CASE
          WHEN "Airport_Code_0" <= 0.5 THEN CASE
            WHEN "Airport_Code_1" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 10.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 90.5 THEN CASE
            WHEN "Timezone_3" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 495.5 THEN 2
            ELSE 2
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Zipcode",
      "Description",
      "Start_Time",
    FROM
      (
         SELECT
                   airport_code_0 AS "Airport_Code_0",
                   airport_code_1 AS "Airport_Code_1",
                  usa_accident_zipcode_map."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  time_months("Start_Time") AS "Start_Time"
                FROM
                   ((usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode")
      ) AS data
  ) AS data ;"""



dt_time_pull = """
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN "Description" <= 11.5 THEN CASE
        WHEN "Zipcode" <= 49.5 THEN CASE
          WHEN time_months("Start_Time") <= 24268.5 THEN CASE
            WHEN "Zipcode" <= 14.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 9.5 THEN 1
            ELSE 1
          END
        END
        ELSE CASE
          WHEN "Description" <= 8.5 THEN CASE
            WHEN time_months("Start_Time") <= 24268.5 THEN 2
            ELSE 1
          END
          ELSE CASE
            WHEN time_months("Start_Time") <= 24231.5 THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Zipcode" <= 11.5 THEN CASE
          WHEN "Description" <= 15.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 3.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN "Description" <= 13.5 THEN 3
            ELSE 3
          END
          ELSE CASE
            WHEN "Zipcode" <= 500.5 THEN 2
            ELSE 3
          END
        END
      END
    END
    ELSE CASE
      WHEN time_months("Start_Time") <= 24248.5 THEN CASE
        WHEN "Description" <= 9.5 THEN CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN time_months("Start_Time") <= 24242.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 7.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 55.5 THEN CASE
            WHEN "Zipcode" <= 4.5 THEN 4
            ELSE 4
          END
          ELSE CASE
            WHEN "Description" <= 12.5 THEN 2
            ELSE 4
          END
        END
      END
      ELSE CASE
        WHEN "Description" <= 35.5 THEN CASE
          WHEN "Airport_Code_0" <= 0.5 THEN CASE
            WHEN "Airport_Code_1" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 10.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 90.5 THEN CASE
            WHEN "Timezone_3" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 495.5 THEN 2
            ELSE 2
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      "Airport_Code_0",
      "Airport_Code_1",
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Zipcode",
      "Description",
      "Start_Time"
    FROM
      (
         SELECT
                  airport_code_0 AS "Airport_Code_0",
                  airport_code_1 AS "Airport_Code_1",
                  usa_accident_zipcode_map{}."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  "Start_Time"
                FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                 LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
      ) AS data
  ) AS data ;"""


dt_split_pull = """
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 11.5 THEN CASE
        WHEN "Zipcode" <= 49.5 THEN CASE
          WHEN "Start_Time" <= 24268.5 THEN CASE
            WHEN "Zipcode" <= 14.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 9.5 THEN 1
            ELSE 1
          END
        END
        ELSE CASE
          WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 8.5 THEN CASE
            WHEN "Start_Time" <= 24268.5 THEN 2
            ELSE 1
          END
          ELSE CASE
            WHEN "Start_Time" <= 24231.5 THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Zipcode" <= 11.5 THEN CASE
          WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 15.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 3.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 13.5 THEN 3
            ELSE 3
          END
          ELSE CASE
            WHEN "Zipcode" <= 500.5 THEN 2
            ELSE 3
          END
        END
      END
    END
    ELSE CASE
      WHEN "Start_Time" <= 24248.5 THEN CASE
        WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 9.5 THEN CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN "Start_Time" <= 24242.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 7.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 55.5 THEN CASE
            WHEN "Zipcode" <= 4.5 THEN 4
            ELSE 4
          END
          ELSE CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 12.5 THEN 2
            ELSE 4
          END
        END
      END
      ELSE CASE
        WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 35.5 THEN CASE
          WHEN "Airport_Code_0" <= 0.5 THEN CASE
            WHEN "Airport_Code_1" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 10.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 90.5 THEN CASE
            WHEN "Timezone_3" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 495.5 THEN 2
            ELSE 2
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      "Airport_Code_0",
      "Airport_Code_1",
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Zipcode",
      "Description",
      "Start_Time"
    FROM
      (
         SELECT
                  airport_code_0 AS "Airport_Code_0",
                  airport_code_1 AS "Airport_Code_1",
                  usa_accident_zipcode_map{}."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  "Description",
                  time_months("Start_Time") AS "Start_Time"
                FROM( select * from usa_accident_shf where index_id >= {}  and index_id < {}  ) as usa_accident
                 LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
      ) AS data
  ) AS data ;"""


dt5_split_pull = """
EXPLAIN ANALYZE
SELECT
  count(*)
FROM
  (
    SELECT
      "Airport_Code_0",
      "Airport_Code_1",
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Zipcode",
      "Description",
      "Start_Time"
    FROM
      (
         SELECT
                  airport_code_0 AS "Airport_Code_0",
                  airport_code_1 AS "Airport_Code_1",
                  usa_accident_zipcode_map{}."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  "Description",
                  time_months("Start_Time") AS "Start_Time"
                FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                 LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
      ) AS data
  ) AS data ;"""


dt8_split_pull = """
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN "Zipcode" <= 31.5 THEN CASE
        WHEN "Start_Time" <= 24268.5 THEN CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                WHEN "Zipcode" <= 3.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 5.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN "Start_Time" <= 24267.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 3.5 THEN CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.584187507629395 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24245.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_1" <= 0.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_9" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.754470825195312 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 1.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.812905311584473 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 10.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                WHEN "Humidity(%)" <= 3.6833845376968384 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 1
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 2.898758292198181 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 1
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Wind_Chill(F)" <= 3.269425630569458 THEN CASE
                WHEN "Zipcode" <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.046643257141113 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.06832981109619 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.984853744506836 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.40388774871826 THEN 3
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_2" <= 0.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.684353828430176 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.0731195211410522 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.934770584106445 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.702601671218872 THEN 2
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 29.36882972717285 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 3.351113796234131 THEN 1
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 13.5 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
          WHEN "Start_Time" <= 24228.5 THEN CASE
            WHEN "Zipcode" <= 516.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24211.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 143.5 THEN CASE
                  WHEN "Zipcode" <= 46.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_7" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 533.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 566.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_4" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_10" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Timezone_3" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Zipcode" <= 144.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.804553985595703 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.942348599433899 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                  WHEN "Zipcode" <= 50.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 500.5 THEN CASE
                WHEN "Start_Time" <= 24268.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24237.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24268.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN CASE
            WHEN "Start_Time" <= 24268.5 THEN CASE
              WHEN "Zipcode" <= 432.5 THEN CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 63.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24224.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                WHEN "Pressure(in)" <= 29.634270668029785 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 404.0 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Weather_Condition" <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.29107129573822 THEN 1
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24230.5 THEN CASE
              WHEN "Zipcode" <= 503.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 125.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 497.0 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Airport_Code_5" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 516.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.29107129573822 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
    END
    ELSE CASE
      WHEN "Start_Time" <= 24248.5 THEN CASE
        WHEN "Timezone_3" <= 0.5 THEN CASE
          WHEN "Zipcode" <= 2.5 THEN CASE
            WHEN "Start_Time" <= 24237.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24207.5 THEN 4
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 4.2245142459869385 THEN CASE
                  WHEN "Start_Time" <= 24219.5 THEN 4
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.8936021625995636 THEN CASE
                WHEN "Pressure(in)" <= 25.77285099029541 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24242.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24242.5 THEN CASE
              WHEN "Zipcode" <= 84.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 12.5 THEN 4
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 24.81626033782959 THEN CASE
                  WHEN "Zipcode" <= 145.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.850011795759201 THEN CASE
                WHEN "Pressure(in)" <= 25.83795928955078 THEN CASE
                  WHEN "Pressure(in)" <= 25.1968936920166 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 23.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.95313835144043 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Start_Time" <= 24235.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN CASE
              WHEN "Start_Time" <= 24223.5 THEN CASE
                WHEN "Humidity(%)" <= 2.855167865753174 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.135103225708008 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24227.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2474809885025024 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                  WHEN "Zipcode" <= 123.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24219.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24222.5 THEN CASE
                  WHEN "Zipcode" <= 149.0 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 2.694084405899048 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24243.5 THEN CASE
              WHEN "Start_Time" <= 24242.5 THEN CASE
                WHEN "Start_Time" <= 24236.5 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 2.1386468410491943 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.175169944763184 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.064987182617188 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                WHEN "Pressure(in)" <= 30.014904022216797 THEN CASE
                  WHEN "Pressure(in)" <= 29.504054069519043 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.564154624938965 THEN CASE
                  WHEN "Pressure(in)" <= 27.230273246765137 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.014904022216797 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "Airport_Code_0" <= 0.5 THEN CASE
          WHEN "Airport_Code_1" <= 0.5 THEN CASE
            WHEN "Timezone_1" <= 0.5 THEN CASE
              WHEN "Pressure(in)" <= 25.176859855651855 THEN CASE
                WHEN "Zipcode" <= 43.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.686043739318848 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 21.04999828338623 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24249.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Pressure(in)" <= 29.79453754425049 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24277.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 47.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Zipcode" <= 28.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.477359771728516 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.05330467224121 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.764487266540527 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 203.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 23.128454208374023 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                WHEN "Start_Time" <= 24278.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.734437942504883 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 1.715137004852295 THEN 2
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.328763008117676 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 25.667675971984863 THEN CASE
                  WHEN "Humidity(%)" <= 0.4141083210706711 THEN 4
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24249.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_8" <= 0.5 THEN CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24277.5 THEN CASE
                WHEN "Zipcode" <= 23.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.385519981384277 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 25.006576538085938 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                  WHEN "Humidity(%)" <= 1.9833608269691467 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_8" <= 0.5 THEN 4
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                WHEN "Zipcode" <= 32.5 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Source" = 'Source2' THEN 1
        ELSE 0
      END AS "Source_1",
      CASE
        WHEN "Source" = 'Source3' THEN 1
        ELSE 0
      END AS "Source_2",
      CASE
        WHEN "Timezone" = 'US/Central' THEN 1
        ELSE 0
      END AS "Timezone_0",
      CASE
        WHEN "Timezone" = 'US/Eastern' THEN 1
        ELSE 0
      END AS "Timezone_1",
      CASE
        WHEN "Timezone" = 'US/Mountain' THEN 1
        ELSE 0
      END AS "Timezone_2",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Temperature(F)",
      "Wind_Chill(F)",
      "Humidity(%)",
      "Pressure(in)",
      "Airport_Code_0",
      "Airport_Code_1",
      "Airport_Code_2",
      "Airport_Code_3",
      "Airport_Code_4",
      "Airport_Code_5",
      "Airport_Code_6",
      "Airport_Code_7",
      "Airport_Code_8",
      "Airport_Code_9",
      "Airport_Code_10",
      "Zipcode",
      "Description",
      "Start_Time",
      "Weather_Condition"
    FROM
      (
        SELECT
          ("Temperature(F)" -0.0) / (18.948923924075153) AS "Temperature(F)",
          ("Wind_Chill(F)" -0.0) / (20.33996354611891) AS "Wind_Chill(F)",
          ("Humidity(%)" -0.0) / (22.940857900228604) AS "Humidity(%)",
          ("Pressure(in)" -0.0) / (0.9983373681781709) AS "Pressure(in)",
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
          usa_accident_zipcode_map{}."Count" AS "Zipcode",
          "Source",
          "Timezone",
          "Description",
          time_months("Start_Time") AS "Start_Time",
          bad_count(COALESCE("Weather_Condition", 'Fair')) AS "Weather_Condition"
        FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                 LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
      ) AS data
  ) AS data ;"""



dt8_time_pull = """
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN "Zipcode" <= 31.5 THEN CASE
        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Description" <= 1.5 THEN CASE
                WHEN "Zipcode" <= 3.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 5.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24267.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 3.5 THEN CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.584187507629395 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24245.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_1" <= 0.5 THEN CASE
                WHEN "Description" <= 1.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_9" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.754470825195312 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 1.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.812905311584473 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 10.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Description" <= 1.5 THEN CASE
                WHEN "Humidity(%)" <= 3.6833845376968384 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 1
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 2.898758292198181 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 1
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Wind_Chill(F)" <= 3.269425630569458 THEN CASE
                WHEN "Zipcode" <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.046643257141113 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.06832981109619 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.984853744506836 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.40388774871826 THEN 3
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_2" <= 0.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.684353828430176 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.0731195211410522 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.934770584106445 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.702601671218872 THEN 2
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 29.36882972717285 THEN CASE
                  WHEN "Description" <= 2.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 3.351113796234131 THEN 1
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 13.5 THEN CASE
                  WHEN "Description" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "Description" <= 1.5 THEN CASE
          WHEN time_months("Start_Time") <= 24228.5 THEN CASE
            WHEN "Zipcode" <= 516.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24211.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 143.5 THEN CASE
                  WHEN "Zipcode" <= 46.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Description" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_7" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 533.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 566.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_4" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_10" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Timezone_3" <= 0.5 THEN CASE
              WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                WHEN "Zipcode" <= 144.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.804553985595703 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.942348599433899 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                  WHEN "Zipcode" <= 50.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 500.5 THEN CASE
                WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN time_months("Start_Time") <= 24237.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24268.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Description" <= 3.5 THEN CASE
            WHEN time_months("Start_Time") <= 24268.5 THEN CASE
              WHEN "Zipcode" <= 432.5 THEN CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 63.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24224.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                WHEN "Pressure(in)" <= 29.634270668029785 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 404.0 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Weather_Condition" <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.29107129573822 THEN 1
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN time_months("Start_Time") <= 24230.5 THEN CASE
              WHEN "Zipcode" <= 503.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 125.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 497.0 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                WHEN "Airport_Code_5" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 516.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.29107129573822 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
    END
    ELSE CASE
      WHEN time_months("Start_Time") <= 24248.5 THEN CASE
        WHEN "Timezone_3" <= 0.5 THEN CASE
          WHEN "Zipcode" <= 2.5 THEN CASE
            WHEN time_months("Start_Time") <= 24237.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24207.5 THEN 4
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 4.2245142459869385 THEN CASE
                  WHEN time_months("Start_Time") <= 24219.5 THEN 4
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.8936021625995636 THEN CASE
                WHEN "Pressure(in)" <= 25.77285099029541 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN time_months("Start_Time") <= 24242.5 THEN CASE
              WHEN "Zipcode" <= 84.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 12.5 THEN 4
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 24.81626033782959 THEN CASE
                  WHEN "Zipcode" <= 145.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.850011795759201 THEN CASE
                WHEN "Pressure(in)" <= 25.83795928955078 THEN CASE
                  WHEN "Pressure(in)" <= 25.1968936920166 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 23.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.95313835144043 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN time_months("Start_Time") <= 24235.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN CASE
              WHEN time_months("Start_Time") <= 24223.5 THEN CASE
                WHEN "Humidity(%)" <= 2.855167865753174 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.135103225708008 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 2.5 THEN CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24227.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2474809885025024 THEN CASE
                WHEN "Description" <= 1.5 THEN CASE
                  WHEN "Zipcode" <= 123.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24219.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN time_months("Start_Time") <= 24222.5 THEN CASE
                  WHEN "Zipcode" <= 149.0 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 2.694084405899048 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN time_months("Start_Time") <= 24243.5 THEN CASE
              WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                WHEN time_months("Start_Time") <= 24236.5 THEN CASE
                  WHEN "Description" <= 2.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 2.1386468410491943 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.175169944763184 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.064987182617188 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Description" <= 2.5 THEN CASE
                WHEN "Pressure(in)" <= 30.014904022216797 THEN CASE
                  WHEN "Pressure(in)" <= 29.504054069519043 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.564154624938965 THEN CASE
                  WHEN "Pressure(in)" <= 27.230273246765137 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.014904022216797 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "Airport_Code_0" <= 0.5 THEN CASE
          WHEN "Airport_Code_1" <= 0.5 THEN CASE
            WHEN "Timezone_1" <= 0.5 THEN CASE
              WHEN "Pressure(in)" <= 25.176859855651855 THEN CASE
                WHEN "Zipcode" <= 43.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.686043739318848 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 21.04999828338623 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24249.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Pressure(in)" <= 29.79453754425049 THEN CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24277.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 47.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Zipcode" <= 28.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.477359771728516 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Description" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.05330467224121 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.764487266540527 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 203.5 THEN CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Description" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 23.128454208374023 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Description" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN "Description" <= 3.5 THEN CASE
              WHEN "Description" <= 0.5 THEN CASE
                WHEN time_months("Start_Time") <= 24278.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.734437942504883 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 1.715137004852295 THEN 2
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.328763008117676 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 25.667675971984863 THEN CASE
                  WHEN "Humidity(%)" <= 0.4141083210706711 THEN 4
                  ELSE 2
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24249.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_8" <= 0.5 THEN CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Description" <= 0.5 THEN CASE
              WHEN time_months("Start_Time") <= 24277.5 THEN CASE
                WHEN "Zipcode" <= 23.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.385519981384277 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 25.006576538085938 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                  WHEN "Humidity(%)" <= 1.9833608269691467 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_8" <= 0.5 THEN 4
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Description" <= 2.5 THEN CASE
                WHEN "Zipcode" <= 32.5 THEN CASE
                  WHEN "Description" <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 3.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Source" = 'Source2' THEN 1
        ELSE 0
      END AS "Source_1",
      CASE
        WHEN "Source" = 'Source3' THEN 1
        ELSE 0
      END AS "Source_2",
      CASE
        WHEN "Timezone" = 'US/Central' THEN 1
        ELSE 0
      END AS "Timezone_0",
      CASE
        WHEN "Timezone" = 'US/Eastern' THEN 1
        ELSE 0
      END AS "Timezone_1",
      CASE
        WHEN "Timezone" = 'US/Mountain' THEN 1
        ELSE 0
      END AS "Timezone_2",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Temperature(F)",
      "Wind_Chill(F)",
      "Humidity(%)",
      "Pressure(in)",
      "Airport_Code_0",
      "Airport_Code_1",
      "Airport_Code_2",
      "Airport_Code_3",
      "Airport_Code_4",
      "Airport_Code_5",
      "Airport_Code_6",
      "Airport_Code_7",
      "Airport_Code_8",
      "Airport_Code_9",
      "Airport_Code_10",
      "Zipcode",
      "Description",
      "Start_Time",
      "Weather_Condition"
    FROM
      (
        SELECT
          ("Temperature(F)" -0.0) / (18.948923924075153) AS "Temperature(F)",
          ("Wind_Chill(F)" -0.0) / (20.33996354611891) AS "Wind_Chill(F)",
          ("Humidity(%)" -0.0) / (22.940857900228604) AS "Humidity(%)",
          ("Pressure(in)" -0.0) / (0.9983373681781709) AS "Pressure(in)",
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
          usa_accident_zipcode_map{}."Count" AS "Zipcode",
          "Source",
          "Timezone",
          split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
          "Start_Time",
          bad_count(COALESCE("Weather_Condition", 'Fair')) AS "Weather_Condition"
        FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                 LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
      ) AS data
  ) AS data ;"""



dt8_count_pull = """
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN "Zipcode" <= 31.5 THEN CASE
        WHEN "Start_Time" <= 24268.5 THEN CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Description" <= 1.5 THEN CASE
                WHEN "Zipcode" <= 3.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 5.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN "Start_Time" <= 24267.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 3.5 THEN CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.584187507629395 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24245.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_1" <= 0.5 THEN CASE
                WHEN "Description" <= 1.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_9" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.754470825195312 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 1.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.812905311584473 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 10.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Description" <= 1.5 THEN CASE
                WHEN "Humidity(%)" <= 3.6833845376968384 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 1
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 2.898758292198181 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 1
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Wind_Chill(F)" <= 3.269425630569458 THEN CASE
                WHEN "Zipcode" <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.046643257141113 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.06832981109619 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.984853744506836 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.40388774871826 THEN 3
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_2" <= 0.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.684353828430176 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.0731195211410522 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.934770584106445 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.702601671218872 THEN 2
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 29.36882972717285 THEN CASE
                  WHEN "Description" <= 2.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 3.351113796234131 THEN 1
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 13.5 THEN CASE
                  WHEN "Description" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "Description" <= 1.5 THEN CASE
          WHEN "Start_Time" <= 24228.5 THEN CASE
            WHEN "Zipcode" <= 516.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24211.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 143.5 THEN CASE
                  WHEN "Zipcode" <= 46.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Description" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_7" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 533.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 566.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_4" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_10" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Timezone_3" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Zipcode" <= 144.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.804553985595703 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.942348599433899 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                  WHEN "Zipcode" <= 50.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 500.5 THEN CASE
                WHEN "Start_Time" <= 24268.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24237.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24268.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Description" <= 3.5 THEN CASE
            WHEN "Start_Time" <= 24268.5 THEN CASE
              WHEN "Zipcode" <= 432.5 THEN CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 63.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24224.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                WHEN "Pressure(in)" <= 29.634270668029785 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 404.0 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.29107129573822 THEN 1
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24230.5 THEN CASE
              WHEN "Zipcode" <= 503.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 125.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 497.0 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Airport_Code_5" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 516.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.29107129573822 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
    END
    ELSE CASE
      WHEN "Start_Time" <= 24248.5 THEN CASE
        WHEN "Timezone_3" <= 0.5 THEN CASE
          WHEN "Zipcode" <= 2.5 THEN CASE
            WHEN "Start_Time" <= 24237.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24207.5 THEN 4
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 4.2245142459869385 THEN CASE
                  WHEN "Start_Time" <= 24219.5 THEN 4
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.8936021625995636 THEN CASE
                WHEN "Pressure(in)" <= 25.77285099029541 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24242.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24242.5 THEN CASE
              WHEN "Zipcode" <= 84.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 12.5 THEN 4
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 24.81626033782959 THEN CASE
                  WHEN "Zipcode" <= 145.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.850011795759201 THEN CASE
                WHEN "Pressure(in)" <= 25.83795928955078 THEN CASE
                  WHEN "Pressure(in)" <= 25.1968936920166 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 23.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.95313835144043 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Start_Time" <= 24235.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN CASE
              WHEN "Start_Time" <= 24223.5 THEN CASE
                WHEN "Humidity(%)" <= 2.855167865753174 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.135103225708008 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 2.5 THEN CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24227.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2474809885025024 THEN CASE
                WHEN "Description" <= 1.5 THEN CASE
                  WHEN "Zipcode" <= 123.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24219.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24222.5 THEN CASE
                  WHEN "Zipcode" <= 149.0 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 2.694084405899048 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24243.5 THEN CASE
              WHEN "Start_Time" <= 24242.5 THEN CASE
                WHEN "Start_Time" <= 24236.5 THEN CASE
                  WHEN "Description" <= 2.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 2.1386468410491943 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.175169944763184 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.064987182617188 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Description" <= 2.5 THEN CASE
                WHEN "Pressure(in)" <= 30.014904022216797 THEN CASE
                  WHEN "Pressure(in)" <= 29.504054069519043 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.564154624938965 THEN CASE
                  WHEN "Pressure(in)" <= 27.230273246765137 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.014904022216797 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "Airport_Code_0" <= 0.5 THEN CASE
          WHEN "Airport_Code_1" <= 0.5 THEN CASE
            WHEN "Timezone_1" <= 0.5 THEN CASE
              WHEN "Pressure(in)" <= 25.176859855651855 THEN CASE
                WHEN "Zipcode" <= 43.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.686043739318848 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 21.04999828338623 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24249.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Pressure(in)" <= 29.79453754425049 THEN CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24277.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 47.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Zipcode" <= 28.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.477359771728516 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Description" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.05330467224121 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.764487266540527 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 203.5 THEN CASE
                WHEN "Description" <= 0.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Description" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 23.128454208374023 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Description" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN "Description" <= 3.5 THEN CASE
              WHEN "Description" <= 0.5 THEN CASE
                WHEN "Start_Time" <= 24278.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.734437942504883 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 1.715137004852295 THEN 2
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.328763008117676 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 25.667675971984863 THEN CASE
                  WHEN "Humidity(%)" <= 0.4141083210706711 THEN 4
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24249.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_8" <= 0.5 THEN CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Description" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24277.5 THEN CASE
                WHEN "Zipcode" <= 23.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.385519981384277 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 25.006576538085938 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                  WHEN "Humidity(%)" <= 1.9833608269691467 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_8" <= 0.5 THEN 4
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Description" <= 2.5 THEN CASE
                WHEN "Zipcode" <= 32.5 THEN CASE
                  WHEN "Description" <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Description" <= 3.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Source" = 'Source2' THEN 1
        ELSE 0
      END AS "Source_1",
      CASE
        WHEN "Source" = 'Source3' THEN 1
        ELSE 0
      END AS "Source_2",
      CASE
        WHEN "Timezone" = 'US/Central' THEN 1
        ELSE 0
      END AS "Timezone_0",
      CASE
        WHEN "Timezone" = 'US/Eastern' THEN 1
        ELSE 0
      END AS "Timezone_1",
      CASE
        WHEN "Timezone" = 'US/Mountain' THEN 1
        ELSE 0
      END AS "Timezone_2",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Temperature(F)",
      "Wind_Chill(F)",
      "Humidity(%)",
      "Pressure(in)",
      "Airport_Code_0",
      "Airport_Code_1",
      "Airport_Code_2",
      "Airport_Code_3",
      "Airport_Code_4",
      "Airport_Code_5",
      "Airport_Code_6",
      "Airport_Code_7",
      "Airport_Code_8",
      "Airport_Code_9",
      "Airport_Code_10",
      "Zipcode",
      "Description",
      "Start_Time",
      "Weather_Condition"
    FROM
      (
        SELECT
          ("Temperature(F)" -0.0) / (18.948923924075153) AS "Temperature(F)",
          ("Wind_Chill(F)" -0.0) / (20.33996354611891) AS "Wind_Chill(F)",
          ("Humidity(%)" -0.0) / (22.940857900228604) AS "Humidity(%)",
          ("Pressure(in)" -0.0) / (0.9983373681781709) AS "Pressure(in)",
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
          usa_accident_zipcode_map{}."Count" AS "Zipcode",
          "Source",
          "Timezone",
          split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
          time_months("Start_Time") AS "Start_Time",
          "Weather_Condition"
        FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                 LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
      ) AS data
  ) AS data ;"""


explore_sql = """
select split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) as value,count(*) from usa_accident group by value ;
"""

# create temp table shf_join as
# select ID,usa_accident.Airport_Code,usa_accident.Zipcode,Weather_Condition,Start_Time,Timezone,Source,Description,"Pressure(in)","Humidity(%)",
# "Wind_Chill(F)","Temperature(F)",usa_accident_zipcode_map.Count,airport_code_0,airport_code_1,airport_code_2,airport_code_3,airport_code_4,airport_code_5,airport_code_6,airport_code_7,airport_code_8,airport_code_9,airport_code_10 from usa_accident_shf  as usa_accident
#                  LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode" LEFT JOIN 
#                   Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code;

# select * from org_join
# except
# select * from shf_join;

# create temp table org as
# select ID,Airport_Code,Zipcode,Weather_Condition,Start_Time,Timezone,Source,Description,"Pressure(in)","Humidity(%)","Wind_Chill(F)","Temperature(F)" from usa_accident where index_id >= 0  and index_id < 5409880;
# create temp table shf as
# select ID,Airport_Code,Zipcode,Weather_Condition,Start_Time,Timezone,Source,Description,"Pressure(in)","Humidity(%)","Wind_Chill(F)","Temperature(F)" from usa_accident_shf where index_id >= 0  and index_id < 5409880;
# select * from org
# except
# select * from shf;

# ALTER TABLE org_join
# DROP COLUMN index_id;

# create temp table t1 as
# select * from shf except select * from org order by Start_Time;
# create temp table t2 as
# select * from org except select * from shf order by Start_Time;
# select * from t1
# except
# select * from t2;

select index_id,ID,Airport_Code,Zipcode,Weather_Condition,Start_Time,Timezone,Source,Description,"Pressure(in)","Humidity(%)","Wind_Chill(F)","Temperature(F)" from usa_accident where index_id >= 2379990  and index_id < 2380020;

dt8_split_pull_otherbest = """
SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN "Zipcode" <= 31.5 THEN CASE
        WHEN "Start_Time" <= 24268.5 THEN CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                WHEN "Zipcode" <= 3.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 5.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN "Start_Time" <= 24267.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 3.5 THEN CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.584187507629395 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24245.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_1" <= 0.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_9" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.754470825195312 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 1.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.812905311584473 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 10.5 THEN CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                WHEN "Humidity(%)" <= 3.6833845376968384 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 1
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 2.898758292198181 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 1
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Wind_Chill(F)" <= 3.269425630569458 THEN CASE
                WHEN "Zipcode" <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.046643257141113 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.06832981109619 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 5.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.984853744506836 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.40388774871826 THEN 3
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Airport_Code_0" <= 0.5 THEN CASE
              WHEN "Airport_Code_2" <= 0.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.684353828430176 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.0731195211410522 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.934770584106445 THEN 2
                  ELSE 1
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.702601671218872 THEN 2
                  ELSE 1
                END
              END
            END
            ELSE CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 29.36882972717285 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 3.351113796234131 THEN 1
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 13.5 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
          WHEN "Start_Time" <= 24228.5 THEN CASE
            WHEN "Zipcode" <= 516.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24211.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 143.5 THEN CASE
                  WHEN "Zipcode" <= 46.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_7" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 533.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 566.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Airport_Code_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_4" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_10" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Timezone_3" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Zipcode" <= 144.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.804553985595703 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 2.942348599433899 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                  WHEN "Zipcode" <= 50.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 500.5 THEN CASE
                WHEN "Start_Time" <= 24268.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24237.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24268.5 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN CASE
            WHEN "Start_Time" <= 24268.5 THEN CASE
              WHEN "Zipcode" <= 432.5 THEN CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 63.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24224.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2038906812667847 THEN CASE
                WHEN "Pressure(in)" <= 29.634270668029785 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 404.0 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 1
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Humidity(%)" <= 3.29107129573822 THEN 1
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24230.5 THEN CASE
              WHEN "Zipcode" <= 503.5 THEN CASE
                WHEN "Airport_Code_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 125.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 497.0 THEN 3
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Airport_Code_5" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Zipcode" <= 516.5 THEN 2
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "Humidity(%)" <= 3.29107129573822 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 3
                  ELSE 3
                END
              END
            END
          END
        END
      END
    END
    ELSE CASE
      WHEN "Start_Time" <= 24248.5 THEN CASE
        WHEN "Timezone_3" <= 0.5 THEN CASE
          WHEN "Zipcode" <= 2.5 THEN CASE
            WHEN "Start_Time" <= 24237.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24207.5 THEN 4
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 4.2245142459869385 THEN CASE
                  WHEN "Start_Time" <= 24219.5 THEN 4
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.8936021625995636 THEN CASE
                WHEN "Pressure(in)" <= 25.77285099029541 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24242.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24242.5 THEN CASE
              WHEN "Zipcode" <= 84.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 12.5 THEN 4
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 24.81626033782959 THEN CASE
                  WHEN "Zipcode" <= 145.5 THEN 2
                  ELSE 3
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 0.850011795759201 THEN CASE
                WHEN "Pressure(in)" <= 25.83795928955078 THEN CASE
                  WHEN "Pressure(in)" <= 25.1968936920166 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 0.5 THEN 2
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 23.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 28.95313835144043 THEN 2
                  ELSE 3
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Start_Time" <= 24235.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN CASE
              WHEN "Start_Time" <= 24223.5 THEN CASE
                WHEN "Humidity(%)" <= 2.855167865753174 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.135103225708008 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                  WHEN "Zipcode" <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24227.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 3.2474809885025024 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN CASE
                  WHEN "Zipcode" <= 123.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24219.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24222.5 THEN CASE
                  WHEN "Zipcode" <= 149.0 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 2.694084405899048 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Start_Time" <= 24243.5 THEN CASE
              WHEN "Start_Time" <= 24242.5 THEN CASE
                WHEN "Start_Time" <= 24236.5 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 2.1386468410491943 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.175169944763184 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.064987182617188 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                WHEN "Pressure(in)" <= 30.014904022216797 THEN CASE
                  WHEN "Pressure(in)" <= 29.504054069519043 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.564154624938965 THEN CASE
                  WHEN "Pressure(in)" <= 27.230273246765137 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 30.014904022216797 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "Airport_Code_0" <= 0.5 THEN CASE
          WHEN "Airport_Code_1" <= 0.5 THEN CASE
            WHEN "Timezone_1" <= 0.5 THEN CASE
              WHEN "Pressure(in)" <= 25.176859855651855 THEN CASE
                WHEN "Zipcode" <= 43.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.686043739318848 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 21.04999828338623 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_2" <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24249.5 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Pressure(in)" <= 29.79453754425049 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24277.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 47.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Zipcode" <= 3.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN "Zipcode" <= 28.5 THEN CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 25.477359771728516 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.05330467224121 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.764487266540527 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 203.5 THEN CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 23.128454208374023 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 11.5 THEN CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
                WHEN "Start_Time" <= 24278.5 THEN CASE
                  WHEN "Pressure(in)" <= 29.734437942504883 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 1.715137004852295 THEN 2
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.328763008117676 THEN 2
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 25.667675971984863 THEN CASE
                  WHEN "Humidity(%)" <= 0.4141083210706711 THEN 4
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24249.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Airport_Code_8" <= 0.5 THEN CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
          ELSE CASE
            WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24277.5 THEN CASE
                WHEN "Zipcode" <= 23.5 THEN CASE
                  WHEN "Pressure(in)" <= 30.385519981384277 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 25.006576538085938 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                  WHEN "Humidity(%)" <= 1.9833608269691467 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Airport_Code_8" <= 0.5 THEN 4
                  ELSE 2
                END
              END
            END
            ELSE CASE
              WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 2.5 THEN CASE
                WHEN "Zipcode" <= 32.5 THEN CASE
                  WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 1.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN 2
                  ELSE 2
                END
              END
              ELSE CASE
                WHEN split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) <= 3.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN 2
                  ELSE 2
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN 2
                  ELSE 2
                END
              END
            END
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Source" = 'Source2' THEN 1
        ELSE 0
      END AS "Source_1",
      CASE
        WHEN "Source" = 'Source3' THEN 1
        ELSE 0
      END AS "Source_2",
      CASE
        WHEN "Timezone" = 'US/Central' THEN 1
        ELSE 0
      END AS "Timezone_0",
      CASE
        WHEN "Timezone" = 'US/Eastern' THEN 1
        ELSE 0
      END AS "Timezone_1",
      CASE
        WHEN "Timezone" = 'US/Mountain' THEN 1
        ELSE 0
      END AS "Timezone_2",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Temperature(F)",
      "Wind_Chill(F)",
      "Humidity(%)",
      "Pressure(in)",
      "Airport_Code_0",
      "Airport_Code_1",
      "Airport_Code_2",
      "Airport_Code_3",
      "Airport_Code_4",
      "Airport_Code_5",
      "Airport_Code_6",
      "Airport_Code_7",
      "Airport_Code_8",
      "Airport_Code_9",
      "Airport_Code_10",
      "Zipcode",
      "Description",
      "Start_Time",
      "Weather_Condition"
    FROM
      (
        SELECT
          ("Temperature(F)" -0.0) / (18.948923924075153) AS "Temperature(F)",
          ("Wind_Chill(F)" -0.0) / (20.33996354611891) AS "Wind_Chill(F)",
          ("Humidity(%)" -0.0) / (22.940857900228604) AS "Humidity(%)",
          ("Pressure(in)" -0.0) / (0.9983373681781709) AS "Pressure(in)",
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
          usa_accident_zipcode_map{}."Count" AS "Zipcode",
          "Source",
          "Timezone",
          "Description",
          time_months("Start_Time") AS "Start_Time",
          "Weather_Condition"
        FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                 LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
      ) AS data
  ) AS data"""


dt8_split_nopull_otherbest = """
SELECT
  CASE
    WHEN class_0 >= class_1
    AND class_0 >= class_2
    AND class_0 >= class_3 THEN 1
    WHEN class_1 >= class_0
    AND class_1 >= class_2
    AND class_1 >= class_3 THEN 2
    WHEN class_2 >= class_0
    AND class_2 >= class_1
    AND class_2 >= class_3 THEN 3
    WHEN class_3 >= class_0
    AND class_3 >= class_1
    AND class_3 >= class_2 THEN 4
  END AS Score
FROM
  (
    SELECT
      (
        CASE
          WHEN tree_0 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 1 THEN 1
          ELSE 0
        END
      ) AS class_0,
      (
        CASE
          WHEN tree_0 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 2 THEN 1
          ELSE 0
        END
      ) AS class_1,
      (
        CASE
          WHEN tree_0 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 3 THEN 1
          ELSE 0
        END
      ) AS class_2,
      (
        CASE
          WHEN tree_0 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_1 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_2 = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN tree_3 = 4 THEN 1
          ELSE 0
        END
      ) AS class_3
    FROM
      (
        SELECT
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Source_2" <= 0.5 THEN CASE
                WHEN "Description" <= 8.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.756160736083984 THEN CASE
                    WHEN "Zipcode" <= 146.0 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN "Start_Time" <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 63.5 THEN CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24268.5 THEN 1.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.7136021256446838 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 29.644287109375 THEN CASE
                    WHEN "Description" <= 10.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 583.0 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24225.5 THEN CASE
                    WHEN "Timezone_1" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 4.337239742279053 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24229.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 5.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24243.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24237.5 THEN CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source_0" <= 0.5 THEN CASE
                  WHEN "Temperature(F)" <= 3.5622074604034424 THEN CASE
                    WHEN "Temperature(F)" <= 2.9816997051239014 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 4.406582832336426 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 33.5 THEN CASE
                  WHEN "Start_Time" <= 24268.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.2856463193893433 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 11.5 THEN 0.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24230.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 1.5511335134506226 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 135.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 1.744162380695343 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 14.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 16.5 THEN CASE
                    WHEN "Pressure(in)" <= 29.704387664794922 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Zipcode" <= 33.5 THEN CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 9.5 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Source_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 15.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Description" <= 6.5 THEN CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24248.5 THEN CASE
                    WHEN "Source_1" <= 0.5 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 31.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 0.5 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Source_1" <= 0.5 THEN CASE
                    WHEN "Temperature(F)" <= 1.8497092723846436 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.854637145996094 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24237.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 453.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_2" <= 0.5 THEN CASE
                    WHEN "Humidity(%)" <= 3.6833845376968384 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 1.4773870706558228 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 12.5 THEN 3.0
                    ELSE 3.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 36.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                  WHEN "Airport_Code_5" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 33.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Description" <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 1.7995744347572327 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 0.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.9085614681243896 THEN CASE
                    WHEN "Temperature(F)" <= 4.037168502807617 THEN 0.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              CASE
                WHEN "Source" = 'Source1' THEN 1
                ELSE 0
              END AS "Source_0",
              CASE
                WHEN "Source" = 'Source2' THEN 1
                ELSE 0
              END AS "Source_1",
              CASE
                WHEN "Source" = 'Source3' THEN 1
                ELSE 0
              END AS "Source_2",
              CASE
                WHEN "Timezone" = 'US/Central' THEN 1
                ELSE 0
              END AS "Timezone_0",
              CASE
                WHEN "Timezone" = 'US/Eastern' THEN 1
                ELSE 0
              END AS "Timezone_1",
              CASE
                WHEN "Timezone" = 'US/Mountain' THEN 1
                ELSE 0
              END AS "Timezone_2",
              CASE
                WHEN "Timezone" = 'US/Pacific' THEN 1
                ELSE 0
              END AS "Timezone_3",
              CASE
                WHEN "Country" = 'US' THEN 1
                ELSE 0
              END AS "Country_0",
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Visibility(mi)",
              "Airport_Code_0",
              "Airport_Code_1",
              "Airport_Code_2",
              "Airport_Code_3",
              "Airport_Code_4",
              "Airport_Code_5",
              "Airport_Code_6",
              "Airport_Code_7",
              "Airport_Code_8",
              "Airport_Code_9",
              "Airport_Code_10",
              "Zipcode",
              "Description",
              "Start_Time",
              "Weather_Condition"
            FROM
              (
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
                  usa_accident_zipcode_map{}."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  "Country",
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  time_months("Start_Time") AS "Start_Time",
                  "Weather_Condition"
                 FROM( select * from usa_accident where index_id >= {}  and index_id < {}  ) as usa_accident
                  LEFT JOIN usa_accident_zipcode_map{} on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map{}."Zipcode" LEFT JOIN 
                  Airport_Code{} on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code{}.Airport_Code
              ) AS data 
          ) AS data
      ) AS F
  ) AS F"""