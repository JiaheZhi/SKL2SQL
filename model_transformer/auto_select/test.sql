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


select
  case
    when if
    INSERT INTO
      tiny (n)
    VALUES
      (1);


CREATE TABLE
  IF NOT EXISTS tiny (n int);


EXPLAIN
SELECT
  CASE
    WHEN n <= 1 THEN 0
    ELSE CASE
      WHEN n = 2 THEN 1
      ELSE CASE
        WHEN n = 3 THEN 1
        ELSE CASE
          WHEN n = 4 THEN 1 ELSE 0
        END
      END
    END
  END
from
  tiny;

EXPLAIN analyze SELECT CASE WHEN n <= 1 THEN 0 ELSE  CASE WHEN n = 2 THEN 1 ELSE CASE WHEN n = 3 THEN 1 ELSE CASE WHEN n = 4 THEN 1 ELSE CASE WHEN n = 5 THEN 1 ELSE CASE WHEN n = 6 THEN 1 ELSE CASE WHEN n = 7 THEN 1 ELSE CASE WHEN n = 8 THEN 1 ELSE CASE WHEN n = 9 THEN 1 ELSE CASE WHEN n = 10 THEN 1 ELSE CASE WHEN n = 11 THEN 1 ELSE CASE WHEN n = 12 THEN 1 ELSE CASE WHEN n = 13 THEN 1 ELSE CASE WHEN n = 14 THEN 1 ELSE CASE WHEN n = 15 THEN 1 ELSE CASE WHEN n = 16 THEN 1 ELSE CASE WHEN n = 17 THEN 1 ELSE CASE WHEN n = 18 THEN 1 ELSE CASE WHEN n = 19 THEN 1 ELSE CASE WHEN n = 20 THEN 1 ELSE CASE WHEN n = 21 THEN 1 ELSE CASE WHEN n = 22 THEN 1 ELSE CASE WHEN n = 23 THEN 1 ELSE CASE WHEN n = 24 THEN 1 ELSE CASE WHEN n = 25 THEN 1 ELSE CASE WHEN n = 26 THEN 1 ELSE CASE WHEN n = 27 THEN 1 ELSE CASE WHEN n = 28 THEN 1 ELSE CASE WHEN n = 29 THEN 1 ELSE CASE WHEN n = 30 THEN 1 ELSE CASE WHEN n = 31 THEN 1 ELSE CASE WHEN n = 32 THEN 1 ELSE CASE WHEN n = 33 THEN 1 ELSE CASE WHEN n = 34 THEN 1 ELSE CASE WHEN n = 35 THEN 1 ELSE CASE WHEN n = 36 THEN 1 ELSE CASE WHEN n = 37 THEN 1 ELSE CASE WHEN n = 38 THEN 1 ELSE CASE WHEN n = 39 THEN 1 ELSE CASE WHEN n = 40 THEN 1 ELSE CASE WHEN n = 41 THEN 1 ELSE CASE WHEN n = 42 THEN 1 ELSE CASE WHEN n = 43 THEN 1 ELSE CASE WHEN n = 44 THEN 1 ELSE CASE WHEN n = 45 THEN 1 ELSE CASE WHEN n = 46 THEN 1 ELSE CASE WHEN n = 47 THEN 1 ELSE CASE WHEN n = 48 THEN 1 ELSE CASE WHEN n = 49 THEN 1 ELSE CASE WHEN n = 50 THEN 1 ELSE CASE WHEN n = 51 THEN 1 ELSE CASE WHEN n = 52 THEN 1 ELSE CASE WHEN n = 53 THEN 1 ELSE CASE WHEN n = 54 THEN 1 ELSE CASE WHEN n = 55 THEN 1 ELSE CASE WHEN n = 56 THEN 1 ELSE CASE WHEN n = 57 THEN 1 ELSE CASE WHEN n = 58 THEN 1 ELSE CASE WHEN n = 59 THEN 1 ELSE CASE WHEN n = 60 THEN 1 ELSE CASE WHEN n = 61 THEN 1 ELSE CASE WHEN n = 62 THEN 1 ELSE CASE WHEN n = 63 THEN 1 ELSE CASE WHEN n = 64 THEN 1 ELSE CASE WHEN n = 65 THEN 1 ELSE CASE WHEN n = 66 THEN 1 ELSE CASE WHEN n = 67 THEN 1 ELSE CASE WHEN n = 68 THEN 1 ELSE CASE WHEN n = 69 THEN 1 ELSE CASE WHEN n = 70 THEN 1 ELSE CASE WHEN n = 71 THEN 1 ELSE CASE WHEN n = 72 THEN 1 ELSE CASE WHEN n = 73 THEN 1 ELSE CASE WHEN n = 74 THEN 1 ELSE CASE WHEN n = 75 THEN 1 ELSE CASE WHEN n = 76 THEN 1 ELSE CASE WHEN n = 77 THEN 1 ELSE CASE WHEN n = 78 THEN 1 ELSE CASE WHEN n = 79 THEN 1 ELSE CASE WHEN n = 80 THEN 1 ELSE CASE WHEN n = 81 THEN 1 ELSE CASE WHEN n = 82 THEN 1 ELSE CASE WHEN n = 83 THEN 1 ELSE CASE WHEN n = 84 THEN 1 ELSE CASE WHEN n = 85 THEN 1 ELSE CASE WHEN n = 86 THEN 1 ELSE CASE WHEN n = 87 THEN 1 ELSE CASE WHEN n = 88 THEN 1 ELSE CASE WHEN n = 89 THEN 1 ELSE CASE WHEN n = 90 THEN 1 ELSE CASE WHEN n = 91 THEN 1 ELSE CASE WHEN n = 92 THEN 1 ELSE CASE WHEN n = 93 THEN 1 ELSE CASE WHEN n = 94 THEN 1 ELSE CASE WHEN n = 95 THEN 1 ELSE CASE WHEN n = 96 THEN 1 ELSE CASE WHEN n = 97 THEN 1 ELSE CASE WHEN n = 98 THEN 1 ELSE CASE WHEN n = 99 THEN 1 ELSE CASE WHEN n = 100 THEN 1 ELSE 0 END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END END from tiny;
EXPLAIN analyze SELECT CASE WHEN n <= 1 THEN 0 ELSE  CASE WHEN n = 2 THEN 1 ELSE CASE WHEN n = 3 THEN 1 ELSE CASE WHEN n = 4 THEN 1 ELSE CASE WHEN n = 5 THEN 1 ELSE CASE WHEN n = 6 THEN 1 ELSE CASE WHEN n = 7 THEN 1 ELSE CASE WHEN n = 8 THEN 1 ELSE CASE WHEN n = 9 THEN 1 ELSE CASE WHEN n = 10 THEN 1 ELSE 0 END END END END END END END END END END from tiny;