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
            WHEN "Stop" <= 0.5 THEN CASE
              WHEN "Source" <= 1144798.5 THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Weather_Condition_6" <= 0.5 THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" <= 509959.0 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 1.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Weather_Condition_3" <= 0.5 THEN CASE
                  WHEN "Weather_Condition_4" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_5" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 3.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Pressure(in)" <= 1.5 THEN CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 0.5 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Weather_Condition_3" <= 0.5 THEN CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "Weather_Condition_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_4" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" <= 509959.0 THEN CASE
                    WHEN "Weather_Condition_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Pressure(in)" <= 1.5 THEN CASE
              WHEN "Source" <= 1144798.5 THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_4" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Weather_Condition_3" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_4" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_4" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Weather_Condition_6" <= 0.5 THEN CASE
                    WHEN "Timezone_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "Pressure(in)" <= 3.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 3.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Traffic_Signal" <= 0.5 THEN CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Weather_Condition_6" <= 0.5 THEN CASE
                  WHEN "Weather_Condition_3" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_5" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_4" <= 0.5 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Weather_Condition_6" <= 0.5 THEN CASE
                  WHEN "Weather_Condition_5" <= 0.5 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_5" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_4" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Pressure(in)" <= 0.5 THEN CASE
                WHEN "Timezone_2" <= 0.5 THEN CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "Weather_Condition_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "Weather_Condition_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_0" <= 0.5 THEN CASE
                  WHEN "Weather_Condition_3" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_4" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_3" <= 0.5 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Traffic_Signal" <= 0.5 THEN CASE
              WHEN "Weather_Condition_3" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 2.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_4" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_5" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_4" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_2" <= 0.5 THEN CASE
                WHEN "Weather_Condition_6" <= 0.5 THEN CASE
                  WHEN "Pressure(in)" <= 1.5 THEN CASE
                    WHEN "Pressure(in)" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 3.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_4" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Weather_Condition_1" <= 0.5 THEN CASE
                  WHEN "Weather_Condition_6" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_5" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition_6" <= 0.5 THEN CASE
                    WHEN "Weather_Condition_5" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Weather_Condition_4" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              "Source",
              "Timezone",
              "Pressure(in)",
              "Station",
              "Stop",
              "Traffic_Signal",
              CASE
                WHEN "Weather_Condition_0" >= 0.0
                AND "Weather_Condition_0" <= 0.5 THEN 1
                WHEN "Weather_Condition_0" >= 0.5
                AND "Weather_Condition_0" <= 1.0 THEN 2
              END AS "Weather_Condition_0",
              CASE
                WHEN "Weather_Condition_1" >= 0.0
                AND "Weather_Condition_1" <= 0.5 THEN 1
                WHEN "Weather_Condition_1" >= 0.5
                AND "Weather_Condition_1" <= 1.0 THEN 2
              END AS "Weather_Condition_1",
              CASE
                WHEN "Weather_Condition_2" >= 0.0
                AND "Weather_Condition_2" <= 0.5 THEN 1
                WHEN "Weather_Condition_2" >= 0.5
                AND "Weather_Condition_2" <= 1.0 THEN 2
              END AS "Weather_Condition_2",
              CASE
                WHEN "Weather_Condition_3" >= 0.0
                AND "Weather_Condition_3" <= 0.5 THEN 1
                WHEN "Weather_Condition_3" >= 0.5
                AND "Weather_Condition_3" <= 1.0 THEN 2
              END AS "Weather_Condition_3",
              CASE
                WHEN "Weather_Condition_4" >= 0.0
                AND "Weather_Condition_4" <= 0.5 THEN 1
                WHEN "Weather_Condition_4" >= 0.5
                AND "Weather_Condition_4" <= 1.0 THEN 2
              END AS "Weather_Condition_4",
              CASE
                WHEN "Weather_Condition_5" >= 0.0
                AND "Weather_Condition_5" <= 0.5 THEN 1
                WHEN "Weather_Condition_5" >= 0.5
                AND "Weather_Condition_5" <= 1.0 THEN 2
              END AS "Weather_Condition_5",
              CASE
                WHEN "Weather_Condition_6" >= 0.0
                AND "Weather_Condition_6" <= 0.5 THEN 1
                WHEN "Weather_Condition_6" >= 0.5
                AND "Weather_Condition_6" <= 1.0 THEN 2
              END AS "Weather_Condition_6"
            FROM
              (
                SELECT
                  CASE
                    WHEN "Source" = 'Source1' THEN 1298600
                    WHEN "Source" = 'Source2' THEN 990997
                    WHEN "Source" = 'Source3' THEN 28921
                  END AS "Source",
                  CASE
                    WHEN "Timezone" = 'US/Central' THEN 1
                    ELSE 0
                  END AS "Timezone_0",
                  CASE
                    WHEN "Timezone" = 'US/Eastern' THEN 1
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
                  CASE
                    WHEN "Pressure(in)" >= -2.1316282072803006e-14
                    AND "Pressure(in)" <= 29.23999999999998 THEN 1
                    WHEN "Pressure(in)" >= 29.23999999999998
                    AND "Pressure(in)" <= 29.749999999999982 THEN 2
                    WHEN "Pressure(in)" >= 29.749999999999982
                    AND "Pressure(in)" <= 29.939999999999984 THEN 3
                    WHEN "Pressure(in)" >= 29.939999999999984
                    AND "Pressure(in)" <= 30.069999999999983 THEN 4
                    WHEN "Pressure(in)" >= 30.069999999999983
                    AND "Pressure(in)" <= 38.43999999999998 THEN 5
                  END AS "Pressure(in)",
                  "Station",
                  "Stop",
                  "Traffic_Signal",
                  CASE
                    WHEN "Weather_Condition" in (
                      'Snow and Sleet / Windy',
                      'Drizzle and Fog',
                      'Light Snow with Thunder',
                      'Ice Pellets',
                      'Freezing Rain',
                      'Blowing Sand',
                      'Small Hail',
                      'Sleet',
                      'Light Sleet',
                      'Rain Shower',
                      'Blowing Dust / Windy',
                      'Light Snow Shower',
                      'Light Rain Showers',
                      'Heavy Ice Pellets',
                      'Light Rain Shower',
                      'Drizzle / Windy',
                      'Snow and Sleet',
                      'Light Haze',
                      'Light Freezing Rain / Windy',
                      'Sand',
                      'Squalls / Windy',
                      'Light Snow and Sleet / Windy',
                      'Smoke / Windy',
                      'Snow and Thunder',
                      'Partial Fog',
                      'Heavy Sleet',
                      'Hail',
                      'Rain Showers',
                      'Mist / Windy',
                      'Light Thunderstorms and Snow',
                      'Freezing Rain / Windy',
                      'Heavy Thunderstorms with Small Hail',
                      'Thunder / Wintry Mix',
                      'Light Hail',
                      'Heavy Smoke',
                      'Low Drifting Snow',
                      'Volcanic Ash',
                      'Tornado',
                      'Light Snow Grains',
                      'Heavy Snow with Thunder',
                      'Thunder and Hail / Windy',
                      'Funnel Cloud',
                      'Thunder / Wintry Mix / Windy',
                      'Heavy Blowing Snow',
                      'Drifting Snow / Windy',
                      'Snow Grains',
                      'Light Sleet / Windy',
                      'Sleet / Windy',
                      'Widespread Dust / Windy',
                      'Squalls',
                      'Light Rain Shower / Windy',
                      'Thunder and Hail',
                      'Sand / Dust Whirlwinds / Windy',
                      'Heavy Sleet and Thunder',
                      'Heavy Rain Shower',
                      'Heavy Freezing Rain',
                      'Heavy Thunderstorms and Snow',
                      'Light Fog',
                      'Heavy Freezing Drizzle',
                      'Partial Fog / Windy',
                      'Heavy Rain Showers',
                      'Shallow Fog / Windy',
                      'Light Snow Showers',
                      'Sand / Dust Whirls Nearby'
                    ) THEN 1
                    ELSE 0
                  END AS "Weather_Condition_0",
                  CASE
                    WHEN "Weather_Condition" in (
                      'Light Freezing Rain',
                      'Thunderstorms and Rain',
                      'Mist',
                      'Heavy Snow / Windy',
                      'T-Storm',
                      'Light Rain / Windy',
                      'Rain / Windy',
                      'Snow / Windy',
                      'Light Drizzle',
                      'Heavy Snow',
                      'Thunderstorm',
                      'Drizzle',
                      'Heavy Rain / Windy',
                      'Blowing Dust',
                      'Shallow Fog',
                      'Showers in the Vicinity',
                      'Fog / Windy',
                      'Light Drizzle / Windy',
                      'Haze / Windy',
                      'Freezing Drizzle',
                      'Heavy T-Storm / Windy',
                      'Blowing Snow',
                      'Wintry Mix / Windy',
                      'Sand / Dust Whirlwinds',
                      'Light Freezing Fog',
                      'Widespread Dust',
                      'Heavy Drizzle',
                      'Light Snow and Sleet',
                      'Light Snow Shower / Windy',
                      'Light Ice Pellets',
                      'T-Storm / Windy',
                      'Thunder / Windy',
                      'Thunder / Wintry Mix',
                      'Light Hail',
                      'Heavy Smoke',
                      'Low Drifting Snow',
                      'Volcanic Ash',
                      'Tornado',
                      'Light Snow Grains',
                      'Heavy Snow with Thunder',
                      'Thunder and Hail / Windy',
                      'Funnel Cloud',
                      'Thunder / Wintry Mix / Windy',
                      'Heavy Blowing Snow',
                      'Drifting Snow / Windy',
                      'Snow Grains',
                      'Light Sleet / Windy',
                      'Sleet / Windy',
                      'Widespread Dust / Windy',
                      'Squalls',
                      'Light Rain Shower / Windy',
                      'Thunder and Hail',
                      'Sand / Dust Whirlwinds / Windy',
                      'Heavy Sleet and Thunder',
                      'Heavy Rain Shower',
                      'Heavy Freezing Rain',
                      'Heavy Thunderstorms and Snow',
                      'Light Fog',
                      'Heavy Freezing Drizzle',
                      'Partial Fog / Windy',
                      'Heavy Rain Showers',
                      'Shallow Fog / Windy',
                      'Light Snow Showers',
                      'Sand / Dust Whirls Nearby'
                    ) THEN 1
                    ELSE 0
                  END AS "Weather_Condition_1",
                  CASE
                    WHEN "Weather_Condition" in (
                      'Snow',
                      'Smoke',
                      'N/A Precipitation',
                      'Mostly Cloudy / Windy',
                      'Partly Cloudy / Windy',
                      'Haze',
                      'Light Thunderstorms and Rain',
                      'Rain',
                      'Light Freezing Drizzle',
                      'Light Rain with Thunder',
                      'Patches of Fog',
                      'Wintry Mix',
                      'Thunder in the Vicinity',
                      'Blowing Snow / Windy',
                      'Heavy Thunderstorms and Rain',
                      'Light Snow / Windy',
                      'Fog / Windy',
                      'Light Drizzle / Windy',
                      'Haze / Windy',
                      'Freezing Drizzle',
                      'Heavy T-Storm / Windy',
                      'Blowing Snow',
                      'Wintry Mix / Windy',
                      'Sand / Dust Whirlwinds',
                      'Light Freezing Fog',
                      'Widespread Dust',
                      'Heavy Drizzle',
                      'Light Snow and Sleet',
                      'Light Snow Shower / Windy',
                      'Light Ice Pellets',
                      'T-Storm / Windy',
                      'Thunder / Windy',
                      'Snow and Sleet',
                      'Light Haze',
                      'Light Freezing Rain / Windy',
                      'Sand',
                      'Squalls / Windy',
                      'Light Snow and Sleet / Windy',
                      'Smoke / Windy',
                      'Snow and Thunder',
                      'Partial Fog',
                      'Heavy Sleet',
                      'Hail',
                      'Rain Showers',
                      'Mist / Windy',
                      'Light Thunderstorms and Snow',
                      'Freezing Rain / Windy',
                      'Heavy Thunderstorms with Small Hail',
                      'Widespread Dust / Windy',
                      'Squalls',
                      'Light Rain Shower / Windy',
                      'Thunder and Hail',
                      'Sand / Dust Whirlwinds / Windy',
                      'Heavy Sleet and Thunder',
                      'Heavy Rain Shower',
                      'Heavy Freezing Rain',
                      'Heavy Thunderstorms and Snow',
                      'Light Fog',
                      'Heavy Freezing Drizzle',
                      'Partial Fog / Windy',
                      'Heavy Rain Showers',
                      'Shallow Fog / Windy',
                      'Light Snow Showers',
                      'Sand / Dust Whirls Nearby'
                    ) THEN 1
                    ELSE 0
                  END AS "Weather_Condition_2",
                  CASE
                    WHEN "Weather_Condition" in (
                      'Mostly Cloudy',
                      'Partly Cloudy',
                      'Overcast',
                      'Light Snow',
                      'Light Rain',
                      'Heavy T-Storm',
                      'Thunder',
                      'Cloudy / Windy',
                      'Light Freezing Drizzle',
                      'Light Rain with Thunder',
                      'Patches of Fog',
                      'Wintry Mix',
                      'Thunder in the Vicinity',
                      'Blowing Snow / Windy',
                      'Heavy Thunderstorms and Rain',
                      'Light Snow / Windy',
                      'Light Drizzle',
                      'Heavy Snow',
                      'Thunderstorm',
                      'Drizzle',
                      'Heavy Rain / Windy',
                      'Blowing Dust',
                      'Shallow Fog',
                      'Showers in the Vicinity',
                      'Light Freezing Fog',
                      'Widespread Dust',
                      'Heavy Drizzle',
                      'Light Snow and Sleet',
                      'Light Snow Shower / Windy',
                      'Light Ice Pellets',
                      'T-Storm / Windy',
                      'Thunder / Windy',
                      'Light Sleet',
                      'Rain Shower',
                      'Blowing Dust / Windy',
                      'Light Snow Shower',
                      'Light Rain Showers',
                      'Heavy Ice Pellets',
                      'Light Rain Shower',
                      'Drizzle / Windy',
                      'Partial Fog',
                      'Heavy Sleet',
                      'Hail',
                      'Rain Showers',
                      'Mist / Windy',
                      'Light Thunderstorms and Snow',
                      'Freezing Rain / Windy',
                      'Heavy Thunderstorms with Small Hail',
                      'Thunder and Hail / Windy',
                      'Funnel Cloud',
                      'Thunder / Wintry Mix / Windy',
                      'Heavy Blowing Snow',
                      'Drifting Snow / Windy',
                      'Snow Grains',
                      'Light Sleet / Windy',
                      'Sleet / Windy',
                      'Heavy Thunderstorms and Snow',
                      'Light Fog',
                      'Heavy Freezing Drizzle',
                      'Partial Fog / Windy',
                      'Heavy Rain Showers',
                      'Shallow Fog / Windy',
                      'Light Snow Showers',
                      'Sand / Dust Whirls Nearby'
                    ) THEN 1
                    ELSE 0
                  END AS "Weather_Condition_3",
                  CASE
                    WHEN "Weather_Condition" in (
                      'Clear',
                      'Fog',
                      'Fair / Windy',
                      'Scattered Clouds',
                      'Light Rain',
                      'Heavy T-Storm',
                      'Thunder',
                      'Cloudy / Windy',
                      'Partly Cloudy / Windy',
                      'Haze',
                      'Light Thunderstorms and Rain',
                      'Rain',
                      'Thunder in the Vicinity',
                      'Blowing Snow / Windy',
                      'Heavy Thunderstorms and Rain',
                      'Light Snow / Windy',
                      'T-Storm',
                      'Light Rain / Windy',
                      'Rain / Windy',
                      'Snow / Windy',
                      'Heavy Rain / Windy',
                      'Blowing Dust',
                      'Shallow Fog',
                      'Showers in the Vicinity',
                      'Heavy T-Storm / Windy',
                      'Blowing Snow',
                      'Wintry Mix / Windy',
                      'Sand / Dust Whirlwinds',
                      'Light Snow Shower / Windy',
                      'Light Ice Pellets',
                      'T-Storm / Windy',
                      'Thunder / Windy',
                      'Freezing Rain',
                      'Blowing Sand',
                      'Small Hail',
                      'Sleet',
                      'Light Rain Showers',
                      'Heavy Ice Pellets',
                      'Light Rain Shower',
                      'Drizzle / Windy',
                      'Squalls / Windy',
                      'Light Snow and Sleet / Windy',
                      'Smoke / Windy',
                      'Snow and Thunder',
                      'Mist / Windy',
                      'Light Thunderstorms and Snow',
                      'Freezing Rain / Windy',
                      'Heavy Thunderstorms with Small Hail',
                      'Volcanic Ash',
                      'Tornado',
                      'Light Snow Grains',
                      'Heavy Snow with Thunder',
                      'Drifting Snow / Windy',
                      'Snow Grains',
                      'Light Sleet / Windy',
                      'Sleet / Windy',
                      'Sand / Dust Whirlwinds / Windy',
                      'Heavy Sleet and Thunder',
                      'Heavy Rain Shower',
                      'Heavy Freezing Rain',
                      'Heavy Rain Showers',
                      'Shallow Fog / Windy',
                      'Light Snow Showers',
                      'Sand / Dust Whirls Nearby'
                    ) THEN 1
                    ELSE 0
                  END AS "Weather_Condition_4",
                  CASE
                    WHEN "Weather_Condition" in (
                      'Heavy Rain',
                      'Cloudy',
                      'Fair / Windy',
                      'Scattered Clouds',
                      'Overcast',
                      'Light Snow',
                      'Thunder',
                      'Cloudy / Windy',
                      'N/A Precipitation',
                      'Mostly Cloudy / Windy',
                      'Light Thunderstorms and Rain',
                      'Rain',
                      'Patches of Fog',
                      'Wintry Mix',
                      'Heavy Thunderstorms and Rain',
                      'Light Snow / Windy',
                      'Mist',
                      'Heavy Snow / Windy',
                      'Rain / Windy',
                      'Snow / Windy',
                      'Thunderstorm',
                      'Drizzle',
                      'Shallow Fog',
                      'Showers in the Vicinity',
                      'Haze / Windy',
                      'Freezing Drizzle',
                      'Wintry Mix / Windy',
                      'Sand / Dust Whirlwinds',
                      'Heavy Drizzle',
                      'Light Snow and Sleet',
                      'T-Storm / Windy',
                      'Thunder / Windy',
                      'Light Snow with Thunder',
                      'Ice Pellets',
                      'Small Hail',
                      'Sleet',
                      'Blowing Dust / Windy',
                      'Light Snow Shower',
                      'Light Rain Shower',
                      'Drizzle / Windy',
                      'Light Freezing Rain / Windy',
                      'Sand',
                      'Smoke / Windy',
                      'Snow and Thunder',
                      'Hail',
                      'Rain Showers',
                      'Freezing Rain / Windy',
                      'Heavy Thunderstorms with Small Hail',
                      'Heavy Smoke',
                      'Low Drifting Snow',
                      'Light Snow Grains',
                      'Heavy Snow with Thunder',
                      'Thunder / Wintry Mix / Windy',
                      'Heavy Blowing Snow',
                      'Light Sleet / Windy',
                      'Sleet / Windy',
                      'Light Rain Shower / Windy',
                      'Thunder and Hail',
                      'Heavy Rain Shower',
                      'Heavy Freezing Rain',
                      'Heavy Freezing Drizzle',
                      'Partial Fog / Windy',
                      'Light Snow Showers',
                      'Sand / Dust Whirls Nearby'
                    ) THEN 1
                    ELSE 0
                  END AS "Weather_Condition_5",
                  CASE
                    WHEN "Weather_Condition" in (
                      'Fair',
                      'Cloudy',
                      'Fog',
                      'Scattered Clouds',
                      'Partly Cloudy',
                      'Light Snow',
                      'Heavy T-Storm',
                      'Cloudy / Windy',
                      'Smoke',
                      'Mostly Cloudy / Windy',
                      'Haze',
                      'Rain',
                      'Light Rain with Thunder',
                      'Wintry Mix',
                      'Blowing Snow / Windy',
                      'Light Snow / Windy',
                      'Thunderstorms and Rain',
                      'Heavy Snow / Windy',
                      'Light Rain / Windy',
                      'Snow / Windy',
                      'Heavy Snow',
                      'Drizzle',
                      'Blowing Dust',
                      'Showers in the Vicinity',
                      'Light Drizzle / Windy',
                      'Freezing Drizzle',
                      'Blowing Snow',
                      'Sand / Dust Whirlwinds',
                      'Widespread Dust',
                      'Light Snow and Sleet',
                      'Light Ice Pellets',
                      'Thunder / Windy',
                      'Drizzle and Fog',
                      'Ice Pellets',
                      'Blowing Sand',
                      'Sleet',
                      'Rain Shower',
                      'Light Snow Shower',
                      'Heavy Ice Pellets',
                      'Drizzle / Windy',
                      'Light Haze',
                      'Sand',
                      'Light Snow and Sleet / Windy',
                      'Snow and Thunder',
                      'Heavy Sleet',
                      'Rain Showers',
                      'Light Thunderstorms and Snow',
                      'Heavy Thunderstorms with Small Hail',
                      'Light Hail',
                      'Low Drifting Snow',
                      'Tornado',
                      'Heavy Snow with Thunder',
                      'Funnel Cloud',
                      'Heavy Blowing Snow',
                      'Snow Grains',
                      'Sleet / Windy',
                      'Squalls',
                      'Thunder and Hail',
                      'Heavy Sleet and Thunder',
                      'Heavy Freezing Rain',
                      'Light Fog',
                      'Partial Fog / Windy',
                      'Shallow Fog / Windy',
                      'Sand / Dust Whirls Nearby'
                    ) THEN 1
                    ELSE 0
                  END AS "Weather_Condition_6"
                FROM
                  usa_accident
              ) AS data
          ) AS data
      ) AS F
  ) AS F