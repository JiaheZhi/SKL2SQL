-- pg
-- set
--   max_parallel_workers = 1;

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
      CASE
        WHEN "Weather_Condition" = 'Fair' THEN 768077
        WHEN "Weather_Condition" = 'Mostly Cloudy' THEN 305161
        WHEN "Weather_Condition" = 'Cloudy' THEN 245754
        WHEN "Weather_Condition" = 'Clear' THEN 242244
        WHEN "Weather_Condition" = 'Partly Cloudy' THEN 209902
        WHEN "Weather_Condition" = 'Overcast' THEN 114785
        WHEN "Weather_Condition" = 'Light Rain' THEN 106109
        WHEN "Weather_Condition" = 'Scattered Clouds' THEN 61211
        WHEN "Weather_Condition" = 'nan' THEN 51783
        WHEN "Weather_Condition" = 'Light Snow' THEN 38610
        WHEN "Weather_Condition" = 'Fog' THEN 29754
        WHEN "Weather_Condition" = 'Rain' THEN 25332
        WHEN "Weather_Condition" = 'Haze' THEN 22843
        WHEN "Weather_Condition" = 'Fair / Windy' THEN 10652
        WHEN "Weather_Condition" = 'Heavy Rain' THEN 9690
        WHEN "Weather_Condition" = 'Light Drizzle' THEN 6735
        WHEN "Weather_Condition" = 'Thunder in the Vicinity' THEN 5347
        WHEN "Weather_Condition" = 'Cloudy / Windy' THEN 5083
        WHEN "Weather_Condition" = 'T-Storm' THEN 5003
        WHEN "Weather_Condition" = 'Mostly Cloudy / Windy' THEN 4957
        WHEN "Weather_Condition" = 'Snow' THEN 4732
        WHEN "Weather_Condition" = 'Thunder' THEN 4174
        WHEN "Weather_Condition" = 'Light Rain with Thunder' THEN 4110
        WHEN "Weather_Condition" = 'Smoke' THEN 3817
        WHEN "Weather_Condition" = 'Wintry Mix' THEN 3492
        WHEN "Weather_Condition" = 'Partly Cloudy / Windy' THEN 3044
        WHEN "Weather_Condition" = 'Heavy T-Storm' THEN 2899
        WHEN "Weather_Condition" = 'Light Rain / Windy' THEN 2322
        WHEN "Weather_Condition" = 'Light Snow / Windy' THEN 2045
        WHEN "Weather_Condition" = 'Heavy Snow' THEN 1492
        WHEN "Weather_Condition" = 'Light Thunderstorms and Rain' THEN 1473
        WHEN "Weather_Condition" = 'Drizzle' THEN 1466
        WHEN "Weather_Condition" = 'Thunderstorm' THEN 1260
        WHEN "Weather_Condition" = 'Patches of Fog' THEN 1221
        WHEN "Weather_Condition" = 'Light Freezing Rain' THEN 1063
        WHEN "Weather_Condition" = 'Mist' THEN 1044
        WHEN "Weather_Condition" = 'N/A Precipitation' THEN 982
        WHEN "Weather_Condition" = 'Shallow Fog' THEN 929
        WHEN "Weather_Condition" = 'Rain / Windy' THEN 714
        WHEN "Weather_Condition" = 'Heavy Thunderstorms and Rain' THEN 712
        WHEN "Weather_Condition" = 'Thunderstorms and Rain' THEN 699
        WHEN "Weather_Condition" = 'Haze / Windy' THEN 497
        WHEN "Weather_Condition" = 'Heavy Rain / Windy' THEN 459
        WHEN "Weather_Condition" = 'Showers in the Vicinity' THEN 457
        WHEN "Weather_Condition" = 'Snow / Windy' THEN 387
        WHEN "Weather_Condition" = 'Light Freezing Drizzle' THEN 359
        WHEN "Weather_Condition" = 'Heavy T-Storm / Windy' THEN 332
        WHEN "Weather_Condition" = 'Light Freezing Fog' THEN 300
        WHEN "Weather_Condition" = 'Heavy Snow / Windy' THEN 285
        WHEN "Weather_Condition" = 'T-Storm / Windy' THEN 264
        WHEN "Weather_Condition" = 'Blowing Snow / Windy' THEN 263
        WHEN "Weather_Condition" = 'Blowing Snow' THEN 225
        WHEN "Weather_Condition" = 'Fog / Windy' THEN 223
        WHEN "Weather_Condition" = 'Thunder / Windy' THEN 168
        WHEN "Weather_Condition" = 'Heavy Drizzle' THEN 134
        WHEN "Weather_Condition" = 'Snow and Sleet' THEN 113
        WHEN "Weather_Condition" = 'Drizzle and Fog' THEN 105
        WHEN "Weather_Condition" = 'Wintry Mix / Windy' THEN 101
        WHEN "Weather_Condition" = 'Light Ice Pellets' THEN 78
        WHEN "Weather_Condition" = 'Light Rain Shower' THEN 77
        WHEN "Weather_Condition" = 'Light Sleet' THEN 74
        WHEN "Weather_Condition" = 'Light Snow and Sleet' THEN 71
        WHEN "Weather_Condition" = 'Blowing Dust / Windy' THEN 65
        WHEN "Weather_Condition" = 'Light Drizzle / Windy' THEN 64
        WHEN "Weather_Condition" = 'Freezing Rain' THEN 62
        WHEN "Weather_Condition" = 'Blowing Dust' THEN 58
        WHEN "Weather_Condition" = 'Light Rain Showers' THEN 55
        WHEN "Weather_Condition" = 'Widespread Dust' THEN 53
        WHEN "Weather_Condition" = 'Sleet' THEN 39
        WHEN "Weather_Condition" = 'Ice Pellets' THEN 36
        WHEN "Weather_Condition" = 'Rain Showers' THEN 33
        WHEN "Weather_Condition" = 'Smoke / Windy' THEN 27
        WHEN "Weather_Condition" = 'Small Hail' THEN 26
        WHEN "Weather_Condition" = 'Snow and Sleet / Windy' THEN 25
        WHEN "Weather_Condition" = 'Light Freezing Rain / Windy' THEN 24
        WHEN "Weather_Condition" = 'Rain Shower' THEN 18
        WHEN "Weather_Condition" = 'Light Snow and Sleet / Windy' THEN 14
        WHEN "Weather_Condition" = 'Light Snow with Thunder' THEN 13
        WHEN "Weather_Condition" = 'Squalls / Windy' THEN 13
        WHEN "Weather_Condition" = 'Hail' THEN 13
        WHEN "Weather_Condition" = 'Sand / Dust Whirlwinds' THEN 12
        WHEN "Weather_Condition" = 'Partial Fog' THEN 12
        WHEN "Weather_Condition" = 'Heavy Sleet' THEN 11
        WHEN "Weather_Condition" = 'Freezing Drizzle' THEN 10
        WHEN "Weather_Condition" = 'Funnel Cloud' THEN 9
        WHEN "Weather_Condition" = 'Light Snow Shower' THEN 8
        WHEN "Weather_Condition" = 'Squalls' THEN 8
        WHEN "Weather_Condition" = 'Snow and Thunder' THEN 7
        WHEN "Weather_Condition" = 'Freezing Rain / Windy' THEN 7
        WHEN "Weather_Condition" = 'Widespread Dust / Windy' THEN 7
        WHEN "Weather_Condition" = 'Drizzle / Windy' THEN 6
        WHEN "Weather_Condition" = 'Light Thunderstorms and Snow' THEN 6
        WHEN "Weather_Condition" = 'Thunder / Wintry Mix' THEN 6
        WHEN "Weather_Condition" = 'Volcanic Ash' THEN 6
        WHEN "Weather_Condition" = 'Light Snow Shower / Windy' THEN 5
        WHEN "Weather_Condition" = 'Mist / Windy' THEN 5
        WHEN "Weather_Condition" = 'Tornado' THEN 5
        WHEN "Weather_Condition" = 'Thunder and Hail' THEN 5
        WHEN "Weather_Condition" = 'Sand' THEN 4
        WHEN "Weather_Condition" = 'Sleet / Windy' THEN 4
        WHEN "Weather_Condition" = 'Light Rain Shower / Windy' THEN 4
        WHEN "Weather_Condition" = 'Light Haze' THEN 3
        WHEN "Weather_Condition" = 'Heavy Thunderstorms with Small Hail' THEN 2
        WHEN "Weather_Condition" = 'Light Snow Grains' THEN 2
        WHEN "Weather_Condition" = 'Heavy Snow with Thunder' THEN 2
        WHEN "Weather_Condition" = 'Thunder / Wintry Mix / Windy' THEN 2
        WHEN "Weather_Condition" = 'Snow Grains' THEN 2
        WHEN "Weather_Condition" = 'Sand / Dust Whirlwinds / Windy' THEN 2
        WHEN "Weather_Condition" = 'Heavy Freezing Rain' THEN 2
        WHEN "Weather_Condition" = 'Heavy Freezing Drizzle' THEN 2
        WHEN "Weather_Condition" = 'Heavy Rain Showers' THEN 2
        WHEN "Weather_Condition" = 'Light Snow Showers' THEN 2
        WHEN "Weather_Condition" = 'Blowing Sand' THEN 1
        WHEN "Weather_Condition" = 'Heavy Ice Pellets' THEN 1
        WHEN "Weather_Condition" = 'Light Hail' THEN 1
        WHEN "Weather_Condition" = 'Heavy Smoke' THEN 1
        WHEN "Weather_Condition" = 'Low Drifting Snow' THEN 1
        WHEN "Weather_Condition" = 'Thunder and Hail / Windy' THEN 1
        WHEN "Weather_Condition" = 'Heavy Blowing Snow' THEN 1
        WHEN "Weather_Condition" = 'Drifting Snow / Windy' THEN 1
        WHEN "Weather_Condition" = 'Light Sleet / Windy' THEN 1
        WHEN "Weather_Condition" = 'Heavy Sleet and Thunder' THEN 1
        WHEN "Weather_Condition" = 'Heavy Rain Shower' THEN 1
        WHEN "Weather_Condition" = 'Heavy Thunderstorms and Snow' THEN 1
        WHEN "Weather_Condition" = 'Light Fog' THEN 1
        WHEN "Weather_Condition" = 'Partial Fog / Windy' THEN 1
        WHEN "Weather_Condition" = 'Shallow Fog / Windy' THEN 1
        WHEN "Weather_Condition" = 'Sand / Dust Whirls Nearby' THEN 1
        -- ELSE 1
      END AS "Weather_Condition",
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
          COALESCE("Weather_Condition", 'Fair') AS "Weather_Condition",
          "Station",
          "Stop",
          "Traffic_Signal"
        FROM
          usa_accident
      ) AS data
  ) AS data;

  -- 输出的执行计划中各算子的执行时间应该是真实的时间，而不是估计的



EXPLAIN ANALYZE
SELECT
  (p2-3) as p3
FROM
  (
    SELECT  
      (p1+9)/10 as p2
    FROM
      (
        SELECT
          COALESCE("Pressure(in)", 29.96) AS p1
        FROM 
          usa_accident
      ) AS data
  ) AS data;

EXPLAIN ANALYZE
SELECT
  ((COALESCE("Pressure(in)", 29.96)+9)/10 -3) as p3
        FROM 
          usa_accident;

EXPLAIN ANALYZE
SELECT
  (COALESCE((("Pressure(in)"+9)/10)-3,  0.896)) as p3
        FROM 
          usa_accident;