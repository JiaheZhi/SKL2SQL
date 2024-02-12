set threads = 4;
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
            WHEN "Source" <> 'Source2' THEN CASE
              WHEN "Source" <> 'Source3' THEN CASE
                WHEN "Description" <= 8.5 THEN CASE
                  WHEN "Pressure(in)" <= 54.26127774472117 THEN CASE
                    WHEN "Zipcode" <= 146.0 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN "Start_Time" <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
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
                    WHEN "Visibility(mi)" <= 11.01115491795193 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.14127696355483 THEN CASE
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
              WHEN "Humidity(%)" <= 158.96917687208594 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24225.5 THEN CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 2.0
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
                    WHEN "Humidity(%)" <= 164.9691766063441 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
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
            WHEN "Source" <> 'Source2' THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24243.5 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
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
                WHEN "Source" <> 'Source1' THEN CASE
                  WHEN "Temperature(F)" <= 129.4937053129179 THEN CASE
                    WHEN "Temperature(F)" <= 118.49370802079024 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 145.49370999903866 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
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
              WHEN "Timezone" <> 'US/Central' THEN CASE
                WHEN "Zipcode" <= 33.5 THEN CASE
                  WHEN "Start_Time" <= 24268.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 88.22384726213501 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 11.5 THEN 0.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24230.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 93.62384711130282 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 135.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 95.04370740698997 THEN CASE
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
                    WHEN "Pressure(in)" <= 59.2012775938788 THEN 1.0
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
                  WHEN "Source" <> 'Source1' THEN CASE
                    WHEN "Wind_Chill(F)" <= 135.57384593956021 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Source" <> 'Source1' THEN 1.0
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
                    WHEN "Source" <> 'Source3' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24248.5 THEN CASE
                    WHEN "Source" <> 'Source2' THEN 3.0
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
              WHEN "Timezone" <> 'US/Pacific' THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Source" <> 'Source2' THEN CASE
                    WHEN "Temperature(F)" <= 97.04370742803313 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.221277169260986 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 135.57384593956021 THEN CASE
                    WHEN "Wind_Chill(F)" <= 134.5738459674921 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Source" <> 'Source3' THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.351277265511314 THEN CASE
                  WHEN "Source" <> 'Source1' THEN CASE
                    WHEN "Start_Time" <= 24237.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 453.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" <> 'Source3' THEN CASE
                    WHEN "Humidity(%)" <= 149.96917727069862 THEN 1.0
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
            WHEN "Source" <> 'Source2' THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Wind_Chill(F)" <= 137.57384588369644 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 92.12384715320066 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" <> 'Source1' THEN CASE
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
                WHEN "Pressure(in)" <= 59.241277696731885 THEN CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
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
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
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
                    WHEN "Description" <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 96.09370620388546 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Eastern' THEN CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 0.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 141.5738457719689 THEN CASE
                    WHEN "Temperature(F)" <= 138.49370597233403 THEN 0.0
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
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Visibility(mi)",
              len(string_split(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.'), ' ')) AS "Description",
              date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) AS "Start_Time",
              list_aggregate(list_transform(['rain', 'snow', 'fog', 'wind', 'thunder', 'storm', 'drizzle', 'sand', 'whirlwind'], x->(contains(lower(COALESCE("Weather_Condition", 'Fair')),x)::BIGINT)),'sum') AS "Weather_Condition"
            FROM
              ((usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode") LEFT JOIN 
              Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code)
          ) AS data
      ) AS F
  ) AS F;