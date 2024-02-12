CREATE temp table t_table as 
                SELECT
                  (COALESCE("Temperature(F)", 77.0) -0.0) / (18.948923924075153) AS "Temperature(F)",
                  (COALESCE("Wind_Chill(F)", 73.0) -0.0) / (20.33996354611891) AS "Wind_Chill(F)",
                  (COALESCE("Humidity(%)", 93.0) -0.0) / (22.940857900228604) AS "Humidity(%)",
                  (COALESCE("Pressure(in)", 29.96) -0.0) / (0.9983373681781709) AS "Pressure(in)",
                  (COALESCE("Visibility(mi)", 10.0) -0.0) / (2.6625480852767667) AS "Visibility(mi)",
                  airport_code_0,
                    airport_code_1,
                    airport_code_2,
                    airport_code_3,
                    airport_code_4,
                    airport_code_5,
                    airport_code_6,
                    airport_code_7,
                    airport_code_8,
                    airport_code_9,
                    airport_code_10,
                  usa_accident_zipcode_map."Count" AS "Zipcode",
                --   "Source",
                  CASE
                WHEN "Source" = 'Source1' THEN 1
                ELSE 0
              END AS "Source_0",
              CASE
                WHEN "Source" = 'Source2' THEN 1
                ELSE 0
              END AS "Source_1",
              CASE
                WHEN "Source" = 'Source3' THEN 1
                ELSE 0
              END AS "Source_2",
                --   COALESCE("Timezone", 'US/Eastern') AS "Timezone",

                    CASE
                WHEN "Timezone" = 'US/Central' THEN 1
                ELSE 0
              END AS "Timezone_0",
              CASE
                WHEN "Timezone" = 'US/Eastern' or "Timezone" IS NULL THEN 1
                ELSE 0
              END AS "Timezone_1",
              CASE
                WHEN "Timezone" = 'US/Mountain' THEN 1
                ELSE 0
              END AS "Timezone_2",
              CASE
                WHEN "Timezone" = 'US/Pacific' THEN 1
                ELSE 0
              END AS "Timezone_3",

                --   "Country",
                 CASE
                WHEN "Country" = 'US' THEN 1
                ELSE 0
              END AS "Country_0",
                  split_line(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.')) AS "Description",
                  time_months("Start_Time") AS "Start_Time",
                  bad_count(COALESCE("Weather_Condition", 'Fair')) AS "Weather_Condition"
                FROM
                  ((usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode") LEFT JOIN 
                  Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code);