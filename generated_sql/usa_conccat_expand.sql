set
  max_parallel_workers = 1;


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
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_0" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_0" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Traffic_Signal" <= 0.5 THEN CASE
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_0" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_0" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_1" <= 0.5 THEN 1.0
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
            WHEN "Station" <= 0.5 THEN CASE
              WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_0" <= 0.5 THEN CASE
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
                WHEN "Stop" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_0" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_1" <= 0.5 THEN 1.0
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
              WHEN "Pressure(in)_0" <= 0.5 THEN CASE
                WHEN "Stop" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_1" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
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
          END AS tree_2,
          CASE
            WHEN "Pressure(in)_1" <= 0.5 THEN CASE
              WHEN "Pressure(in)_0" <= 0.5 THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
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
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
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
              WHEN "Traffic_Signal" <= 0.5 THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
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
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Pressure(in)_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)_2" <= 0.5 THEN CASE
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
          END AS tree_3
        FROM
          (
            SELECT
              CASE
                WHEN "Pressure(in)" >= 30.06
                and "Pressure(in)" <= 52.76
                OR "Pressure(in)" >= 0.0
                and "Pressure(in)" <= 29.24 THEN 1
                ELSE 0
              END AS "Pressure(in)_0",
              CASE
                WHEN "Pressure(in)" >= 29.75
                and "Pressure(in)" <= 29.94
                OR "Pressure(in)" >= 29.94
                and "Pressure(in)" <= 30.06 THEN 1
                ELSE 0
              END AS "Pressure(in)_1",
              CASE
                WHEN "Pressure(in)" >= 29.75
                and "Pressure(in)" <= 29.94
                OR "Pressure(in)" >= 30.06
                and "Pressure(in)" <= 52.76 THEN 0
                ELSE 1
              END AS "Pressure(in)_2",
              "Station",
              "Stop",
              "Traffic_Signal"
            FROM
              usa_accident
          ) AS data
      ) AS F
  ) AS F