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
            WHEN "Timezone_3" <= 29.904720306396484 THEN CASE
              WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN CASE
                  WHEN "Zipcode" <= 22.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 10.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Country_0" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 29.564154624938965 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Country_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 2.9859389066696167 THEN CASE
                    WHEN "Country_0" <= 1.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 3.2455668449401855 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 30.29537010192871 THEN CASE
                WHEN "Country_0" <= 0.5 THEN CASE
                  WHEN "Description" <= 9.5 THEN CASE
                    WHEN "Pressure(in)" <= 0.07500000298023224 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 2.002752184867859 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_1" <= 3.5644114017486572 THEN CASE
                    WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 10.5 THEN CASE
                  WHEN "Pressure(in)" <= 0.0892857164144516 THEN CASE
                    WHEN time_months("Start_Time") <= 24246.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 6.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24248.0 THEN CASE
                    WHEN "Timezone_0" <= 0.905064582824707 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 1.106196641921997 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Description" <= 11.5 THEN CASE
              WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN CASE
                WHEN "Description" <= 6.5 THEN CASE
                  WHEN "Timezone_1" <= 3.6135756969451904 THEN CASE
                    WHEN "Country_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 29.874670028686523 THEN CASE
                    WHEN "Country_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                  WHEN "Zipcode" <= 164.5 THEN CASE
                    WHEN "Zipcode" <= 23.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Country_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Country_0" <= 0.5 THEN CASE
                    WHEN "Timezone_1" <= 2.4336326122283936 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_2" <= 3.857745885848999 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Description" <= 17.5 THEN CASE
                WHEN "Country_0" <= 0.5 THEN CASE
                  WHEN "Timezone_3" <= 30.29537010192871 THEN CASE
                    WHEN time_months("Start_Time") <= 24248.5 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                END
                ELSE CASE
                  WHEN "Visibility(mi)" <= 0.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24230.5 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                  WHEN "Source" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 127.5 THEN 2.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 35.5 THEN CASE
                    WHEN "Timezone_3" <= 29.714404106140137 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 42.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Timezone_3" <= 29.904720306396484 THEN CASE
              WHEN "Description" <= 11.5 THEN CASE
                WHEN time_months("Start_Time") <= 24246.5 THEN CASE
                  WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN CASE
                    WHEN "Timezone_2" <= 0.9371924996376038 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24235.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN CASE
                    WHEN "Timezone_0" <= 3.4038872718811035 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 10.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 14.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24249.5 THEN CASE
                    WHEN "Zipcode" <= 5.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Visibility(mi)" <= 0.5 THEN CASE
                    WHEN "Description" <= 16.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Country_0" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Country_0" <= 0.5 THEN CASE
                WHEN "Visibility(mi)" <= 0.5 THEN CASE
                  WHEN "Timezone_0" <= 2.002752184867859 THEN CASE
                    WHEN "Source" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 15.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN CASE
                    WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 30.27533721923828 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 3.5644114017486572 THEN CASE
                  WHEN "Zipcode" <= 24.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 2.4645198583602905 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 31.5 THEN CASE
                    WHEN "Zipcode" <= 10.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Airport_Code_5" <= 0.5 THEN CASE
              WHEN "Country_0" <= 0.5 THEN CASE
                WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                  WHEN "Visibility(mi)" <= 0.5 THEN CASE
                    WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24269.5 THEN CASE
                    WHEN "Timezone_3" <= 29.734437942504883 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 110.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Zipcode" <= 62.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 3.5644114017486572 THEN 2.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN CASE
                    WHEN "Timezone_1" <= 4.1052186489105225 THEN 0.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_2" <= 1.808999478816986 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_1" <= 3.5644114017486572 THEN CASE
                WHEN "Timezone_1" <= 2.062442183494568 THEN CASE
                  WHEN "Zipcode" <= 33.5 THEN CASE
                    WHEN "Description" <= 11.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 72.24382976561327 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Visibility(mi)" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 20.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source" <= 0.5 THEN CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Zipcode" <= 37.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 3.6135756969451904 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Country_0" <= 0.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 31.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 AS "Visibility(mi)",
              "Timezone_0",
              "Timezone_1",
              "Timezone_2",
              "Timezone_3",
              "Country_0",
              "Source",
              "Temperature(F)",
              "Wind_Chill(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Airport_Code_0",
              "Airport_Code_1",
              "Airport_Code_2",
              "Airport_Code_3",
              "Airport_Code_4",
              "Airport_Code_5",
              "Airport_Code_6",
              "Airport_Code_7",
              "Airport_Code_8",
              "Airport_Code_9",
              "Airport_Code_10",
              "Zipcode",
              "Description",
              "Start_Time",
              "Weather_Condition"
            FROM
              (
                SELECT
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
                    WHEN "Country" = 'US' THEN 1
                    ELSE 0
                  END AS "Country_0",
                  "Source",
                  "Temperature(F)",
                  "Wind_Chill(F)",
                  "Humidity(%)",
                  "Pressure(in)",
                  "Airport_Code_0",
                  "Airport_Code_1",
                  "Airport_Code_2",
                  "Airport_Code_3",
                  "Airport_Code_4",
                  "Airport_Code_5",
                  "Airport_Code_6",
                  "Airport_Code_7",
                  "Airport_Code_8",
                  "Airport_Code_9",
                  "Airport_Code_10",
                  "Zipcode",
                  "Visibility(mi)",
                  "Description",
                  "Start_Time",
                  "Weather_Condition"
                FROM
                  (
                    SELECT
                      CASE
                        WHEN "Source" = 'Source1' THEN 0
                        WHEN "Source" = 'Source2' THEN 1
                        WHEN "Source" = 'Source3' THEN 2
                      END AS "Source",
                      "Temperature(F)",
                      "Wind_Chill(F)",
                      "Humidity(%)",
                      "Pressure(in)",
                      "Airport_Code_0",
                      "Airport_Code_1",
                      "Airport_Code_2",
                      "Airport_Code_3",
                      "Airport_Code_4",
                      "Airport_Code_5",
                      "Airport_Code_6",
                      "Airport_Code_7",
                      "Airport_Code_8",
                      "Airport_Code_9",
                      "Airport_Code_10",
                      "Zipcode",
                      "Timezone",
                      "Country",
                      "Visibility(mi)",
                      "Description",
                      "Start_Time",
                      "Weather_Condition"
                    FROM
                      (
                        SELECT
                          ("Humidity(%)" -65.46917599949623) / (22.940857900228604) AS "Humidity(%)",
                          ("Pressure(in)" -29.546277389263317) / (0.9983373681781709) AS "Pressure(in)",
                          "Airport_Code_0",
                          "Airport_Code_1",
                          "Airport_Code_2",
                          "Airport_Code_3",
                          "Airport_Code_4",
                          "Airport_Code_5",
                          "Airport_Code_6",
                          "Airport_Code_7",
                          "Airport_Code_8",
                          "Airport_Code_9",
                          "Airport_Code_10",
                          "Zipcode",
                          "Source",
                          "Timezone",
                          "Country",
                          "Visibility(mi)",
                          "Description",
                          "Start_Time",
                          "Weather_Condition",
                          "Temperature(F)",
                          "Wind_Chill(F)"
                        FROM
                          (
                            SELECT
                              CASE
                                WHEN "Visibility(mi)" <= 10 THEN 1
                                WHEN "Visibility(mi)" <= 20 THEN 2
                                WHEN "Visibility(mi)" <= 30 THEN 3
                                ELSE 4
                              END AS "Visibility(mi)",
                              "Airport_Code_0",
                              "Airport_Code_1",
                              "Airport_Code_2",
                              "Airport_Code_3",
                              "Airport_Code_4",
                              "Airport_Code_5",
                              "Airport_Code_6",
                              "Airport_Code_7",
                              "Airport_Code_8",
                              "Airport_Code_9",
                              "Airport_Code_10",
                              "Zipcode",
                              "Source",
                              "Timezone",
                              "Country",
                              "Temperature(F)",
                              "Wind_Chill(F)",
                              "Humidity(%)",
                              "Pressure(in)",
                              "Description",
                              "Start_Time",
                              "Weather_Condition"
                            FROM
                              (
                                SELECT
                                  split_line("Description") AS "Description",
                                  "Airport_Code_0",
                                  "Airport_Code_1",
                                  "Airport_Code_2",
                                  "Airport_Code_3",
                                  "Airport_Code_4",
                                  "Airport_Code_5",
                                  "Airport_Code_6",
                                  "Airport_Code_7",
                                  "Airport_Code_8",
                                  "Airport_Code_9",
                                  "Airport_Code_10",
                                  "Zipcode",
                                  "Source",
                                  "Timezone",
                                  "Country",
                                  "Temperature(F)",
                                  "Wind_Chill(F)",
                                  "Humidity(%)",
                                  "Pressure(in)",
                                  "Visibility(mi)",
                                  "Start_Time",
                                  "Weather_Condition"
                                FROM
                                  (
                                    SELECT
                                      COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                                      COALESCE(
                                        "Description",
                                        'A crash has occurred causing no to minimum delays. Use caution.'
                                      ) AS "Description",
                                      COALESCE("Weather_Condition", 'Fair') AS "Weather_Condition",
                                      COALESCE("Airport_Code", 'KCQT') AS "Airport_Code",
                                      "Airport_Code_0",
                                      "Airport_Code_1",
                                      "Airport_Code_2",
                                      "Airport_Code_3",
                                      "Airport_Code_4",
                                      "Airport_Code_5",
                                      "Airport_Code_6",
                                      "Airport_Code_7",
                                      "Airport_Code_8",
                                      "Airport_Code_9",
                                      "Airport_Code_10",
                                      "Zipcode",
                                      "Source",
                                      "Country",
                                      "Temperature(F)",
                                      "Wind_Chill(F)",
                                      "Humidity(%)",
                                      "Pressure(in)",
                                      "Visibility(mi)",
                                      "Start_Time"
                                    FROM
                                      (
                                        usa_accident
                                        LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761') = usa_accident_zipcode_map."Zipcode"
                                      )
                                  ) AS data
                              ) AS data
                          ) AS data
                      ) AS data
                  ) AS data
              ) AS data
          ) AS data
      ) AS F
  ) AS F