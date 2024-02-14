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
                  WHEN "Pressure(in)" <= 24.756160736083984 THEN CASE
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
                    WHEN "Humidity(%)" <= 4.337239742279053 THEN 1.0
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
                  WHEN "Source" <> 'Source1' THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
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
                    WHEN "Source" <> 'Source3' THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.854637145996094 THEN CASE
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
            WHEN "Source" <> 'Source2' THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 1.4773870706558228 THEN 1.0
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
                WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
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
                    WHEN "Temperature(F)" <= 1.7995744347572327 THEN 2.0
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
                WHEN "Visibility(mi)" <= 10 THEN 1
                WHEN "Visibility(mi)" <= 20 THEN 2
                WHEN "Visibility(mi)" <= 30 THEN 3
                ELSE 4
              END AS "Visibility(mi)",
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
              "Source",
              "Timezone",
              "Country",
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Description",
              "Start_Time",
              "Weather_Condition"
            FROM
              (
                SELECT
                  split_line("Description") AS "Description",
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
                  "Source",
                  "Timezone",
                  "Country",
                  "Temperature(F)",
                  "Wind_Chill(F)",
                  "Humidity(%)",
                  "Pressure(in)",
                  "Visibility(mi)"
                FROM
                  (
                    SELECT
                      COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                      COALESCE(
                        "Description",
                        'A crash has occurred causing no to minimum delays. Use caution.'
                      ) AS "Description",
                      COALESCE("Weather_Condition", 'Fair') AS "Weather_Condition",
                      COALESCE("Airport_Code", 'KCQT') AS "Airport_Code",
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
                      "Source",
                      "Country",
                      "Temperature(F)",
                      "Wind_Chill(F)",
                      "Humidity(%)",
                      "Pressure(in)",
                      "Visibility(mi)",
                      "Start_Time"
                    FROM
                      (
                        usa_accident
                        LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761') = usa_accident_zipcode_map."Zipcode"
                      )
                  ) AS data
              ) AS data
          ) AS data
      ) AS F
  ) AS F