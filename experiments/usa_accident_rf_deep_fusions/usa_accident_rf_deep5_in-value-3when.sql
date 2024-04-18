

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
                WHEN "Source" in (
                  values
('Source2'),
                    ('Source3')
                ) THEN CASE
                  WHEN "Source" in (
                    values
('Source3')
                  ) THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.581277142849984 THEN CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source" in (
                  values
('Source2'),
                    ('Source3')
                ) THEN CASE
                  WHEN "Source" in (
                    values
('Source3')
                  ) THEN CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "Pressure(in)" <= 58.291276920126506 THEN 1.0
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
              WHEN "Source" in (
                values
('Source2'),
                  ('Source3')
              ) THEN CASE
                WHEN "Timezone" <> 'US/Mountain' THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.061277709937386 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
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
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Pressure(in)" <= 58.22127745420015 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 58.21127766650906 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Source" in (
              values
('Source2'),
                ('Source3')
            ) THEN CASE
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.261277272114064 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Pressure(in)" <= 59.36127705320241 THEN CASE
                    WHEN "Source" in (
                      values
('Source3')
                    ) THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.96127764390988 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 58.34127681067068 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
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
              WHEN "Timezone" <> 'US/Pacific' THEN CASE
                WHEN "Timezone" <> 'US/Mountain' THEN CASE
                  WHEN "Pressure(in)" <= 59.76127712964448 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 58.73127709942166 THEN CASE
                    WHEN "Pressure(in)" <= 54.691277184236526 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.39127736836439 THEN CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Pressure(in)" <= 59.051277922246285 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.5612775674678 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
              WHEN "Timezone" <> 'US/Pacific' THEN CASE
                WHEN "Source" in (
                  values
('Source2'),
                    ('Source3')
                ) THEN CASE
                  WHEN "Pressure(in)" <= 54.86127738333993 THEN CASE
                    WHEN "Pressure(in)" <= 52.99127709737988 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 58.301277659906305 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source" in (
                  values
('Source2'),
                    ('Source3')
                ) THEN CASE
                  WHEN "Source" in (
                    values
('Source3')
                  ) THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
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
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Source" in (
                      values
('Source2'),
                        ('Source3')
                    ) THEN 1.0
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
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Central' THEN CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Pressure(in)" <= 60.40127687111632 THEN 1.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.52127746461473 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
              WHEN "Source" in (
                values
('Source2'),
                  ('Source3')
              ) THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 54.211277854177 THEN CASE
                    WHEN "Source" in (
                      values
('Source3')
                    ) THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 54.321277422956435 THEN CASE
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
                    WHEN "Pressure(in)" <= 59.051277922246285 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Source" in (
                values
('Source2'),
                  ('Source3')
              ) THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.85127712304173 THEN 1.0
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