-- pg
set
  max_parallel_workers = 1;

-- duckdb
-- set
--   threads = 4;


EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source" <= 1144798.5 THEN CASE
      WHEN "Traffic_Signal" <= 0.5 THEN CASE
        WHEN "Stop" <= 0.5 THEN CASE
          WHEN "Station" <= 0.5 THEN CASE
            WHEN "Pressure(in)" <= 59.401277156055485 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Timezone" <> 'US/Pacific' THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone" <> 'US/Pacific' THEN CASE
            WHEN "Source" <= 509959.0 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Source" <= 509959.0 THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Timezone" <> 'US/Pacific' THEN CASE
          WHEN "Pressure(in)" <= 59.261277272114064 THEN CASE
            WHEN "Timezone" <> 'US/Central' THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Station" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Station" <= 0.5 THEN CASE
            WHEN "Pressure(in)" <= 58.241277029582335 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Pressure(in)" <= 59.651277560865054 THEN 2
            ELSE 2
          END
        END
      END
    END
    ELSE CASE
      WHEN "Timezone" <> 'US/Pacific' THEN CASE
        WHEN "Pressure(in)" <= 59.76127712964448 THEN CASE
          WHEN "Timezone" <> 'US/Eastern' THEN CASE
            WHEN "Pressure(in)" <= 59.30127737496714 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Station" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone" <> 'US/Eastern' THEN CASE
            WHEN "Pressure(in)" <= 59.89127722589481 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Pressure(in)" <= 59.921277541056796 THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
          WHEN "Pressure(in)" <= 59.051277922246285 THEN CASE
            WHEN "Pressure(in)" <= 57.96127726169949 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Traffic_Signal" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Traffic_Signal" <= 0.5 THEN CASE
            WHEN "Pressure(in)" <= 59.511277676923626 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Station" <= 0.5 THEN 2
            ELSE 2
          END
        END
      END
    END
  END AS Score
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
      (
        SELECT
          Source_count."count" AS "Source",
          "Timezone",
          "Pressure(in)",
          "Station",
          "Stop",
          "Traffic_Signal"
        FROM
            usa_accident
            left join Source_count on usa_accident."Source" = Source_count."Source"
      ) AS data
  ) AS data
