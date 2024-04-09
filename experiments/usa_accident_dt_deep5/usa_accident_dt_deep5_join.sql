-- pg
set
  max_parallel_workers = 1;

-- duckdb
-- set
--   threads = 4;


EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Weather_Condition" <= 243999.0 THEN CASE
      WHEN "Traffic_Signal" <= 0.5 THEN CASE
        WHEN "Pressure(in)" <= 59.291277587276056 THEN CASE
          WHEN "Timezone" <> 'US/Pacific' THEN CASE
            WHEN "Pressure(in)" <= 58.36127733814157 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Weather_Condition" <= 226073.0 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Stop" <= 0.5 THEN CASE
            WHEN "Weather_Condition" <= 34182.0 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Timezone" <> 'US/Pacific' THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Timezone" <> 'US/Eastern' THEN CASE
          WHEN "Pressure(in)" <= 58.301277659906305 THEN CASE
            WHEN "Timezone" <> 'US/Mountain' THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Station" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Station" <= 0.5 THEN CASE
            WHEN "Pressure(in)" <= 59.27127705980516 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Weather_Condition" <= 82.5 THEN 4
            ELSE 2
          END
        END
      END
    END
    ELSE CASE
      WHEN "Timezone" <> 'US/Pacific' THEN CASE
        WHEN "Traffic_Signal" <= 0.5 THEN CASE
          WHEN "Weather_Condition" <= 562510.5 THEN CASE
            WHEN "Weather_Condition" <= 275457.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Pressure(in)" <= 59.511277676923626 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone" <> 'US/Mountain' THEN CASE
            WHEN "Timezone" <> 'US/Eastern' THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Pressure(in)" <= 55.43127765888541 THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Weather_Condition" <= 562510.5 THEN CASE
          WHEN "Weather_Condition" <= 275457.5 THEN CASE
            WHEN "Pressure(in)" <= 58.191277139038164 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Pressure(in)" <= 59.3712768408935 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Pressure(in)" <= 57.56127718525742 THEN CASE
            WHEN "Pressure(in)" <= 55.2712772474731 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Traffic_Signal" <= 0.5 THEN 2
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
      COALESCE("Weather_Condition", 768077) AS "Weather_Condition",
      "Station",
      "Stop",
      "Traffic_Signal"
    FROM
      (
        SELECT
          Weather_Condition_count."count" AS "Weather_Condition",
          "Timezone",
          "Pressure(in)",
          "Station",
          "Stop",
          "Traffic_Signal"
        FROM
            usa_accident
            left join Weather_Condition_count on usa_accident."Weather_Condition" = Weather_Condition_count."Weather_Condition"
      ) AS data
  ) AS data
