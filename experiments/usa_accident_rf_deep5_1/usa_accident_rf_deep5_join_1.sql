set
  threads = 4;


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
            WHEN "Traffic_Signal" <= 0.5 THEN CASE
              WHEN "Weather_Condition" <= 243999.0 THEN CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Weather_Condition" <= 49910.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.311277162658236 THEN CASE
                    WHEN "Zipcode" <= 155.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 38.5 THEN CASE
                  WHEN "Pressure(in)" <= 59.25127748442297 THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition" <= 562510.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Zipcode" <= 99.5 THEN CASE
                WHEN "Pressure(in)" <= 58.92127782599596 THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Pressure(in)" <= 58.28127713243541 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 1.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Zipcode" <= 62.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 58.941277401378144 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Eastern' THEN CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.83127754765955 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.94127711643898 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Station" <= 0.5 THEN CASE
              WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
                WHEN "Zipcode" <= 20.5 THEN CASE
                  WHEN "Zipcode" <= 5.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 562510.5 THEN CASE
                    WHEN "Zipcode" <= 148.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 135.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone" <> 'US/Pacific' THEN CASE
                WHEN "Timezone" <> 'US/Eastern' THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.051277922246285 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 58.191277139038164 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition" <= 84.5 THEN 3.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 657.0 THEN CASE
                  WHEN "Zipcode" <= 277.0 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 280.0 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 1355.0 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.34127747782023 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
              WHEN "Timezone" <> 'US/Pacific' THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Weather_Condition" <= 243999.0 THEN CASE
                    WHEN "Pressure(in)" <= 59.14127696355483 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Zipcode" <= 57.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition" <= 562510.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.291277587276056 THEN CASE
                  WHEN "Zipcode" <= 155.5 THEN CASE
                    WHEN "Pressure(in)" <= 59.081277285319565 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 146.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 394.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Station" <= 0.5 THEN CASE
                WHEN "Weather_Condition" <= 243999.0 THEN CASE
                  WHEN "Weather_Condition" <= 34182.0 THEN CASE
                    WHEN "Zipcode" <= 24.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 562510.5 THEN CASE
                    WHEN "Zipcode" <= 57.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 57.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 260.5 THEN CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.811277020188655 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 657.0 THEN CASE
                    WHEN "Zipcode" <= 586.0 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition" <= 243999.0 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Zipcode" <= 37.5 THEN CASE
              WHEN "Zipcode" <= 9.5 THEN CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Zipcode" <= 4.5 THEN CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 243999.0 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Central' THEN CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Weather_Condition" <= 243999.0 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 58.74127783920146 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 58.441277543847725 THEN CASE
                    WHEN "Weather_Condition" <= 4980.0 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Traffic_Signal" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 59.3712768408935 THEN CASE
                  WHEN "Weather_Condition" <= 562510.5 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Pressure(in)" <= 59.581277142849984 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Weather_Condition" <= 562510.5 THEN CASE
                  WHEN "Pressure(in)" <= 59.25127748442297 THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 279.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 58.291276920126506 THEN CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.031277394775394 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              COALESCE("Timezone", 'US/Eastern') AS "Timezone",
              COALESCE("Pressure(in)", 29.96) AS "Pressure(in)",
              COALESCE("Weather_Condition", 768077) AS "Weather_Condition",
              COALESCE("Zipcode", 3336) AS "Zipcode",
              "Station",
              "Stop",
              "Traffic_Signal"
            FROM
              (
                SELECT
                  Weather_Condition_count."count" AS "Weather_Condition",
                  Zipcode_count."count" AS "Zipcode",
                  "Timezone",
                  "Pressure(in)",
                  "Station",
                  "Stop",
                  "Traffic_Signal"
                FROM
                  (
                    (
                      usa_accident
                      left join Weather_Condition_count on usa_accident.Weather_Condition = Weather_Condition_count.Weather_Condition
                    )
                    left join Zipcode_count on usa_accident.Zipcode = Zipcode_count.Zipcode
                  )
              ) AS data
          ) AS data
      ) AS F
  ) AS F;


-- DROP TABLE
--   Weather_Condition_count;


-- DROP TABLE
--   Zipcode_count;