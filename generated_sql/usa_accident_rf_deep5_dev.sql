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
            WHEN "Timezone_1" <= 0.5 THEN CASE
              WHEN "Country_0" <= 0.5 THEN CASE
                WHEN "Airport_Code_6" <= 0.5 THEN CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Source_1" <= 3.5644114017486572 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_9" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24268.5 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 25.958158493041992 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 10.5 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Description" <= 8.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 7.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Description" <= 8.5 THEN CASE
                    WHEN "Source_1" <= 3.6135756969451904 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 30.27533721923828 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24248.5 THEN CASE
                    WHEN "Start_Time" <= 24233.5 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Start_Time" <= 24235.5 THEN CASE
                  WHEN "Source_2" <= 3.2474809885025024 THEN CASE
                    WHEN "Description" <= 9.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 0.06785714626312256 THEN CASE
                    WHEN "Source_0" <= 8.628458023071289 THEN 1.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Start_Time" <= 24248.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Timezone_1" <= 0.5 THEN CASE
              WHEN "Description" <= 11.5 THEN CASE
                WHEN "Airport_Code_8" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24268.5 THEN CASE
                    WHEN "Source_1" <= 3.5644114017486572 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 0.5 THEN 0.0
                    ELSE 0.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24268.5 THEN CASE
                    WHEN "Country_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 0.00042857142398133874 THEN 1.0
                    ELSE 0.0
                  END
                END
              END
              ELSE CASE
                WHEN "Country_0" <= 0.5 THEN CASE
                  WHEN "Source_1" <= 3.5644114017486572 THEN CASE
                    WHEN "Zipcode" <= 11.5 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Timezone_2" <= 0.5 THEN 2.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN CASE
                    WHEN "Source_2" <= 2.8115774393081665 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 14.5 THEN 2.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Airport_Code_4" <= 0.5 THEN CASE
                  WHEN "Start_Time" <= 24236.5 THEN CASE
                    WHEN "Visibility(mi)" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 8.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Visibility(mi)" <= 0.5 THEN CASE
                  WHEN "Temperature(F)" <= 0.5 THEN CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 39.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN CASE
                    WHEN "Description" <= 31.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Timezone_2" <= 0.5 THEN CASE
              WHEN "Description" <= 8.5 THEN CASE
                WHEN "Country_0" <= 0.5 THEN CASE
                  WHEN "Source_1" <= 3.5644114017486572 THEN CASE
                    WHEN "Start_Time" <= 24235.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 28.792871475219727 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone_0" <= 29.1033878326416 THEN CASE
                    WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 1.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 57.5 THEN CASE
                    WHEN "Description" <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Start_Time" <= 24234.5 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN CASE
                    WHEN "Source_2" <= 3.944926619529724 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Start_Time" <= 24248.5 THEN 3.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Start_Time" <= 24268.5 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Airport_Code_7" <= 0.5 THEN CASE
                    WHEN "Description" <= 8.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Start_Time" <= 24231.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Visibility(mi)" <= 0.5 THEN CASE
                    WHEN "Description" <= 13.5 THEN 1.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 13.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
              ELSE CASE
                WHEN "Source_2" <= 3.2038906812667847 THEN CASE
                  WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 29.62425422668457 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Start_Time" <= 24271.5 THEN 1.0
                    ELSE 2.0
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 12.5 THEN 0.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "Source_2" <= 3.857745885848999 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Zipcode" <= 37.5 THEN CASE
              WHEN "Start_Time" <= 24248.5 THEN CASE
                WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                  WHEN "Timezone_2" <= 0.5 THEN CASE
                    WHEN "Start_Time" <= 24237.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Start_Time" <= 24243.5 THEN CASE
                    WHEN "Source_0" <= 1.789019763469696 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Description" <= 12.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_2" <= 0.5 THEN CASE
                  WHEN "Description" <= 30.5 THEN CASE
                    WHEN "Start_Time" <= 24269.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 8.5 THEN CASE
                    WHEN "Weather_Condition" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_2" <= 0.5 THEN CASE
                WHEN "Timezone_0" <= 30.034936904907227 THEN CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN "Pressure(in)" <= 0.07321428880095482 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 208.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN 2.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Temperature(F)" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 507.5 THEN CASE
                    WHEN "Visibility(mi)" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source_1" <= 1.9296985864639282 THEN CASE
                    WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 AS "Visibility(mi)",
              "Source_0",
              "Source_1",
              "Source_2",
              "Timezone_0",
              "Timezone_1",
              "Timezone_2",
              "Timezone_3",
              "Country_0",
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
                      ("Temperature(F)" -61.993707143960116) / (18.948923924075153) AS "Temperature(F)",
                      ("Wind_Chill(F)" -62.073847992553816) / (20.33996354611891) AS "Wind_Chill(F)",
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
                      "Weather_Condition"
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
                              "Visibility(mi)"
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
      ) AS F
  ) AS F