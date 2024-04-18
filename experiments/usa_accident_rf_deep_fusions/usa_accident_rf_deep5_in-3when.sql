

set threads=1;


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
            WHEN "Station" <= 0.5 THEN CASE
              WHEN "Traffic_Signal" <= 0.5 THEN CASE
                WHEN "Source" in ('Source3') THEN CASE
                  WHEN "Source" in ('Source3') THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.291277587276056 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Mountain' THEN CASE
                  WHEN "Pressure(in)" <= 59.351277265511314 THEN CASE
                    WHEN "Pressure(in)" <= 58.46127711922991 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" in ('Source3') THEN CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 55.49127733712068 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone" <> 'US/Eastern' THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 59.351277265511314 THEN CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 58.88127772314289 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Stop" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 58.21127766650906 THEN CASE
                    WHEN "Pressure(in)" <= 58.16127682387618 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.39127736836439 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.0212776070843 THEN CASE
                    WHEN "Pressure(in)" <= 59.0112768673045 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Source" in ('Source3') THEN CASE
              WHEN "Source" in ('Source3') THEN CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.051277922246285 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" in ('Source3') THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.3712768408935 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 60.18127773355745 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Source" in ('Source3') THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 58.92127782599596 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Central' THEN CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Pressure(in)" <= 54.751277814560495 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.09127707301066 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
              WHEN "Timezone" <> 'US/Pacific' THEN CASE
                WHEN "Source" in ('Source3') THEN CASE
                  WHEN "Pressure(in)" <= 58.40127744099465 THEN CASE
                    WHEN "Pressure(in)" <= 54.48127688228004 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.15127770333463 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.281277799584956 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" in ('Source3') THEN CASE
                    WHEN "Pressure(in)" <= 59.15127770333463 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 58.991277291922316 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Traffic_Signal" <= 0.5 THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.78127765711538 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Eastern' THEN CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Pressure(in)" <= 59.94127711643898 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.471277574070555 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
              WHEN "Source" in ('Source3') THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 58.36127733814157 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 54.71127771170742 THEN CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 57.65127717865467 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Source" in ('Source3') THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Source" in ('Source3') THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source3') THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.691277663718125 THEN CASE
                    WHEN "Pressure(in)" <= 59.43127747121747 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source" in ('Source3') THEN CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "Pressure(in)" <= 59.511277676923626 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
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
              "Source",
              "Station",
              "Stop",
              "Traffic_Signal"
            FROM
              usa_accident
          ) AS data
      ) AS F
  ) AS F