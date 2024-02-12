SELECT
  CASE
    WHEN "Source_0" <= 0.5 THEN CASE
      WHEN "Description" <= 11.5 THEN CASE
        WHEN "Zipcode" <= 49.5 THEN CASE
          WHEN "Start_Time" <= 24268.5 THEN CASE
            WHEN "Zipcode" <= 14.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 9.5 THEN 1
            ELSE 1
          END
        END
        ELSE CASE
          WHEN "Description" <= 8.5 THEN CASE
            WHEN "Start_Time" <= 24268.5 THEN 2
            ELSE 1
          END
          ELSE CASE
            WHEN "Start_Time" <= 24231.5 THEN 2
            ELSE 2
          END
        END
      END
      ELSE CASE
        WHEN "Zipcode" <= 11.5 THEN CASE
          WHEN "Description" <= 15.5 THEN CASE
            WHEN "Zipcode" <= 5.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 3.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN "Description" <= 13.5 THEN 3
            ELSE 3
          END
          ELSE CASE
            WHEN "Zipcode" <= 500.5 THEN 2
            ELSE 3
          END
        END
      END
    END
    ELSE CASE
      WHEN "Start_Time" <= 24248.5 THEN CASE
        WHEN "Description" <= 9.5 THEN CASE
          WHEN "Timezone_3" <= 0.5 THEN CASE
            WHEN "Start_Time" <= 24242.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 7.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 55.5 THEN CASE
            WHEN "Zipcode" <= 4.5 THEN 4
            ELSE 4
          END
          ELSE CASE
            WHEN "Description" <= 12.5 THEN 2
            ELSE 4
          END
        END
      END
      ELSE CASE
        WHEN "Description" <= 35.5 THEN CASE
          WHEN "Airport_Code_0" <= 0.5 THEN CASE
            WHEN "Airport_Code_1" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Description" <= 10.5 THEN 2
            ELSE 2
          END
        END
        ELSE CASE
          WHEN "Zipcode" <= 90.5 THEN CASE
            WHEN "Timezone_3" <= 0.5 THEN 2
            ELSE 2
          END
          ELSE CASE
            WHEN "Zipcode" <= 495.5 THEN 2
            ELSE 2
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      CASE
        WHEN "Source" = 'Source1' THEN 1
        ELSE 0
      END AS "Source_0",
      CASE
        WHEN "Timezone" = 'US/Pacific' THEN 1
        ELSE 0
      END AS "Timezone_3",
      "Zipcode",
      "Description",
      "Start_Time",
    FROM
      (
         SELECT
                  airport_code_0 AS "Airport_Code_0",
                  airport_code_1 AS "Airport_Code_1",
                  usa_accident_zipcode_map."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  time_months("Start_Time") AS "Start_Time"
                FROM
                   ((usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode") LEFT JOIN 
                  Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code)
      ) AS data
  ) AS data