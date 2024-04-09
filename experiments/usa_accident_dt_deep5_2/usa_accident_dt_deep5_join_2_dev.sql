set
  threads = 4;


EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "Source" <= 1144798.5 THEN CASE
      WHEN "Timezone_2" <= 0.5 THEN CASE
        WHEN "Timezone_1" <= 0.5 THEN CASE
          WHEN "Timezone_0" <= 0.5 THEN CASE
            WHEN "Pressure(in)" <= 59.401277156055485 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Timezone_3" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
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
        WHEN "Timezone_3" <= 0.5 THEN CASE
          WHEN "Pressure(in)" <= 59.261277272114064 THEN CASE
            WHEN "Timezone_0" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Timezone_0" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_0" <= 0.5 THEN CASE
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
      WHEN "Timezone_3" <= 0.5 THEN CASE
        WHEN "Pressure(in)" <= 59.76127712964448 THEN CASE
          WHEN "Timezone_1" <= 0.5 THEN CASE
            WHEN "Pressure(in)" <= 59.30127737496714 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Timezone_0" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_1" <= 0.5 THEN CASE
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
            WHEN "Timezone_2" <= 0.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_2" <= 0.5 THEN CASE
            WHEN "Pressure(in)" <= 59.511277676923626 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Timezone_0" <= 0.5 THEN 2
            ELSE 2
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      COALESCE("Pressure(in)", 29.96) AS "Pressure(in)",
      "Source",
      "Timezone_0",
      "Timezone_1",
      "Timezone_2",
      "Timezone_3",
      "Station",
      "Stop",
      "Traffic_Signal"
    FROM
      (
        SELECT
          Source_count."count" AS "Source",
          "Timezone_0",
          "Timezone_1",
          "Timezone_2",
          "Timezone_3",
          "Pressure(in)",
          "Station",
          "Stop",
          "Traffic_Signal"
        FROM
          usa_accident
          left join Source_count on usa_accident.Source = Source_count.Source
          left join Timezone_one on usa_accident.Timezone = Timezone_one.Timezone
      ) AS data
  ) AS data;


-- DROP TABLE
--   Source_count;


-- DROP TABLE
--   Timezone_one;