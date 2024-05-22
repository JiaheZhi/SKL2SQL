EXPLAIN ANALYZE VERBOSE
        SELECT
          CASE
            WHEN "Station" <= 0.5 THEN CASE
              WHEN "Traffic_Signal" <= 0.5 THEN CASE
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Source" <= 509959.0 THEN CASE
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
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Source" <= 509959.0 THEN CASE
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
              WHEN "Source" <= 1144798.5 THEN CASE
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
          END AS tree_0
        FROM
          (
            SELECT
              CASE
                WHEN "Source" = 'Source1' THEN 1298600
                WHEN "Source" = 'Source2' THEN 990997
                WHEN "Source" = 'Source3' THEN 28921
                ELSE 0
              END AS "Source",
              "Timezone",
              "Pressure(in)",
              "Station",
              "Stop",
              "Traffic_Signal"
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
          ) AS data;



EXPLAIN ANALYZE VERBOSE
SELECT
              CASE
                WHEN "Source_1st" < 100000 THEN 0
                WHEN "Source_1st" < 1298600 THEN 1
                ELSE 3
              END AS "Source_2nd"
            FROM
              (
                SELECT
                  CASE
                WHEN "Source" = 'Source1' THEN 1298600
                WHEN "Source" = 'Source2' THEN 990997
                WHEN "Source" = 'Source3' THEN 28921
                ELSE 0
              END AS "Source_1st"
                FROM
                  usa_accident
              ) AS data;