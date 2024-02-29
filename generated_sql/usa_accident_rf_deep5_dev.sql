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
            WHEN "Source" in ('Source1') THEN CASE
              WHEN "Description" <= 8.5 THEN CASE
                WHEN CASE
                  WHEN Timezone = 'US/Pacific' THEN 1
                  ELSE 0
                END <= 0.5 THEN CASE
                  WHEN "Description" <= 7.5 THEN CASE
                    WHEN CASE
                      WHEN Timezone = 'US/Eastern' THEN 1
                      ELSE 0
                    END <= 0.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Mountain' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.3920608162879944 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.023255348205566 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 53.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.168988585472107 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24247.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24245.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 28.893038749694824 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN CASE
                      WHEN Timezone = 'US/Central' THEN 1
                      ELSE 0
                    END <= 0.5 THEN CASE
                      WHEN "Pressure(in)" <= 23.534128189086914 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 1.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 39.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24248.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_8" <= 0.5 THEN CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.4342905431985855 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.694084405899048 THEN CASE
                    WHEN "Wind_Chill(F)" <= 0.5101351290941238 THEN CASE
                      WHEN "Wind_Chill(F)" <= 0.445777028799057 THEN CASE
                        WHEN time_months("Start_Time") <= 24222.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24204.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Visibility(mi)" <= -99999999 THEN CASE
                          WHEN "Humidity(%)" <= 148.46917870451577 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 124.9691738200172 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_7" <= 0.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24219.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 30.19520378112793 THEN CASE
                          WHEN time_months("Start_Time") <= 24217.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 38.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 5.623010635375977 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 5.675784111022949 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 110.969176263257 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Humidity(%)" <= 108.96917544024981 THEN CASE
                        WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24199.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.738941788673401 THEN CASE
                          WHEN time_months("Start_Time") <= 24202.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 0.5489864945411682 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.44239863753318787 THEN CASE
                          WHEN "Pressure(in)" <= 30.09503746032715 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 15.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.8498228788375854 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 33.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.079387426376343 THEN CASE
                        WHEN time_months("Start_Time") <= 24247.0 THEN CASE
                          WHEN "Pressure(in)" <= 29.55413818359375 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 110.969176263257 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Zipcode" <= 15.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.5884807109832764 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 15.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_3" <= 0.5 THEN CASE
                        WHEN "Humidity(%)" <= 157.96917782796402 THEN CASE
                          WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24247.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24247.0 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Pacific' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 88.0 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24243.5 THEN CASE
                          WHEN "Zipcode" <= 53.0 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.884687423706055 THEN 1.0
                          ELSE 0.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24226.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 3.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 35.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 338.5 THEN CASE
                          WHEN "Zipcode" <= 337.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.423921585083008 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 43.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Central' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Humidity(%)" <= 80.9691755408935 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 78.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.6030405461788177 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 132.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Airport_Code_7" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 28.822921752929688 THEN CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 0.49155405163764954 THEN CASE
                      WHEN "Pressure(in)" <= 20.684391021728516 THEN CASE
                        WHEN "Zipcode" <= 46.5 THEN 1.0
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24267.0 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 23.448987007141113 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 26.45899200439453 THEN CASE
                          WHEN "Zipcode" <= 25.0 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 0.6300675868988037 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 72.96917600916439 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 10.5 THEN CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Central' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 13.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.0317776799201965 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Eastern' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 24.385543823242188 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.599662184715271 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 32.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN CASE
                    WHEN Timezone = 'US/Central' THEN 1
                    ELSE 0
                  END <= 0.5 THEN CASE
                    WHEN "Description" <= 11.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Zipcode" <= 49.5 THEN CASE
                          WHEN "Source" in ('Source1', 'Source2') THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 1771.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 56.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24235.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Eastern' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 27.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                      WHEN "Airport_Code_9" <= 0.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24249.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24244.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                          ELSE 0.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 148.96917822657673 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24208.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.335436820983887 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                    WHEN "Zipcode" <= 49.5 THEN CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 15.5 THEN CASE
                          WHEN "Zipcode" <= 6.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 5.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_5" <= 0.5 THEN CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.774503707885742 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source1', 'Source2') THEN CASE
                      WHEN "Humidity(%)" <= 142.96917575755515 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Pacific' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 0.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Zipcode" <= 22.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.4038872718811035 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 6.5 THEN 0.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 41.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.855156898498535 THEN 0.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 118.96917408575902 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_5" <= 0.5 THEN CASE
                    WHEN "Airport_Code_9" <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 17.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.3939189314842224 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.38462838530540466 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 1753.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 14.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Eastern' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.023918390274048 THEN CASE
                          WHEN "Zipcode" <= 13.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 13.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 11.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24269.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 13.5 THEN CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 30.385519981384277 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 20.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Central' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Description" <= 19.5 THEN CASE
                          WHEN "Zipcode" <= 12.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 30.075003623962402 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 8.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.0792169570922852 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN time_months("Start_Time") <= 24248.5 THEN CASE
              WHEN "Description" <= 9.5 THEN CASE
                WHEN "Pressure(in)" <= 25.1968936920166 THEN CASE
                  WHEN CASE
                    WHEN Timezone = 'US/Mountain' THEN 1
                    ELSE 0
                  END <= 0.5 THEN CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.5793918967247009 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.137324571609497 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.564903020858765 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 0.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24230.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24212.0 THEN 1.0
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24216.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 83.46917588596165 THEN CASE
                          WHEN "Description" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 24.781201362609863 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source1') THEN CASE
                      WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                        WHEN "Zipcode" <= 145.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 7.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 147.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24240.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.08994197845459 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.34628377854824066 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 156.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Pacific' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24223.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Source" in ('Source1') THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source" in ('Source1') THEN CASE
                        WHEN "Visibility(mi)" <= 10 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 139.96917589042607 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Pacific' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 28.352139472961426 THEN CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Mountain' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 27.801223754882812 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 6.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source" in ('Source1') THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Pacific' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 65.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 5.4620513916015625 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN CASE
                  WHEN Timezone = 'US/Pacific' THEN 1
                  ELSE 0
                END <= 0.5 THEN CASE
                  WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                    WHEN "Source" in ('Source1') THEN CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 65.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 13.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24243.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24225.5 THEN CASE
                        WHEN "Description" <= 13.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24207.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 25.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 28.592538833618164 THEN CASE
                          WHEN "Humidity(%)" <= 97.96917638323703 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 14.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 2.5 THEN CASE
                        WHEN "Pressure(in)" <= 28.802888870239258 THEN CASE
                          WHEN "Description" <= 12.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 9.0 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.163824796676636 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Central' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Source" in ('Source1') THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.597972959280014 THEN 3.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.578039526939392 THEN CASE
                          WHEN "Zipcode" <= 3.5 THEN 3.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 7.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Source" in ('Source1') THEN CASE
                    WHEN "Zipcode" <= 121.5 THEN CASE
                      WHEN "Zipcode" <= 8.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.5422297120094299 THEN CASE
                          WHEN "Zipcode" <= 2.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.33877944946289 THEN 1.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24222.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.5320945978164673 THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.3983108103275299 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 26.95481586456299 THEN CASE
                          WHEN "Humidity(%)" <= 80.9691755408935 THEN 2.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 29.754470825195312 THEN CASE
                      WHEN "Zipcode" <= 40.5 THEN CASE
                        WHEN "Zipcode" <= 5.5 THEN CASE
                          WHEN "Description" <= 13.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24223.5 THEN CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.058221220970154 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Airport_Code_0" <= 0.5 THEN CASE
                WHEN "Pressure(in)" <= 29.714404106140137 THEN CASE
                  WHEN CASE
                    WHEN Timezone = 'US/Central' THEN 1
                    ELSE 0
                  END <= 0.5 THEN CASE
                    WHEN "Description" <= 11.5 THEN CASE
                      WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.4038872718811035 THEN CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.6739864945411682 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 15.5 THEN CASE
                        WHEN "Description" <= 13.5 THEN CASE
                          WHEN "Zipcode" <= 36.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.298340320587158 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 28.692705154418945 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.40371622145175934 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 28.98318862915039 THEN CASE
                      WHEN "Pressure(in)" <= 28.742788314819336 THEN CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 17.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.6402027010917664 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_6" <= 0.5 THEN CASE
                        WHEN "Source" in ('Source1') THEN CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Source" in ('Source1') THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24272.5 THEN CASE
                    WHEN CASE
                      WHEN Timezone = 'US/Central' THEN 1
                      ELSE 0
                    END <= 0.5 THEN CASE
                      WHEN "Source" in ('Source1') THEN CASE
                        WHEN "Description" <= 35.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.137324571609497 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.5094341039657593 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.9289262294769287 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 57.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.5040432214736938 THEN CASE
                        WHEN "Humidity(%)" <= 150.96917631482052 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN "Description" <= 11.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source1') THEN CASE
                      WHEN "Wind_Chill(F)" <= 0.42736487090587616 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.8734573125839233 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 36.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.08994197845459 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Humidity(%)" <= 151.96917535894244 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.037168502807617 THEN CASE
                          WHEN "Pressure(in)" <= 29.89470386505127 THEN 0.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 5.330118179321289 THEN 2.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.5320945978164673 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.5557432472705841 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Source" in ('Source1') THEN CASE
                  WHEN CASE
                    WHEN Timezone = 'US/Pacific' THEN 1
                    ELSE 0
                  END <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 0.39020270109176636 THEN CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Description" <= 6.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 107.9691763961279 THEN CASE
                          WHEN "Pressure(in)" <= 29.57417106628418 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 13.5 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 75.96917587629349 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 21.711097717285156 THEN 3.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Mountain' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 120.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN CASE
                      WHEN "Humidity(%)" <= 136.96917602329697 THEN CASE
                        WHEN "Pressure(in)" <= 27.650973320007324 THEN CASE
                          WHEN "Humidity(%)" <= 134.96917520028978 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.564154624938965 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE 1.0
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_3" <= 0.5 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.94478702545166 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24272.5 THEN 1.0
                        ELSE CASE
                          WHEN "Zipcode" <= 4.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 5.5 THEN CASE
                    WHEN "Zipcode" <= 2.5 THEN CASE
                      WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.9816997051239014 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Pacific' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24269.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.9289262294769287 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24267.5 THEN CASE
                          WHEN "Description" <= 14.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.5422297120094299 THEN 0.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.775996685028076 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24267.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.66932964324951 THEN CASE
                          WHEN time_months("Start_Time") <= 24260.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN CASE
                      WHEN Timezone = 'US/Pacific' THEN 1
                      ELSE 0
                    END <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 147.0 THEN CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.72442054748535 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 95.5 THEN CASE
                        WHEN "Zipcode" <= 41.5 THEN CASE
                          WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 1.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24267.0 THEN 1.0
                          ELSE 0.0
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Source" in ('Source1') THEN CASE
              WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN CASE
                    WHEN Timezone = 'US/Eastern' THEN 1
                    ELSE 0
                  END <= 0.5 THEN CASE
                    WHEN CASE
                      WHEN Timezone = 'US/Pacific' THEN 1
                      ELSE 0
                    END <= 0.5 THEN CASE
                      WHEN "Pressure(in)" <= 29.01323890686035 THEN CASE
                        WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.599662184715271 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 5.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24243.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.67433738708496 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Description" <= 5.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 53.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24242.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Visibility(mi)" <= 10 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 107.9691763961279 THEN CASE
                          WHEN time_months("Start_Time") <= 24244.5 THEN 3.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN CASE
                    WHEN Timezone = 'US/Pacific' THEN 1
                    ELSE 0
                  END <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 0.5050675868988037 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Visibility(mi)" <= 10 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.559512138366699 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE 1.0
                      END
                    END
                    ELSE CASE
                      WHEN "Pressure(in)" <= 29.754470825195312 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Central' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.59420394897461 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 5.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.5185810923576355 THEN 2.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 41.5 THEN CASE
                      WHEN "Zipcode" <= 35.0 THEN CASE
                        WHEN time_months("Start_Time") <= 24241.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 2.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 0.43091216683387756 THEN 3.0
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24226.5 THEN CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 25.126776695251465 THEN CASE
                          WHEN "Pressure(in)" <= 24.806243896484375 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN "Airport_Code_2" <= 0.5 THEN CASE
                    WHEN "Description" <= 35.5 THEN CASE
                      WHEN "Zipcode" <= 293.5 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 154.9691779608349 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.664320945739746 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.406582832336426 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 14.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 154.5 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Pacific' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 79.46917560732896 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Description" <= 55.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24278.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 88.5 THEN CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Eastern' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.9843950271606445 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 30.5 THEN CASE
                          WHEN "Description" <= 11.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.39695945382118225 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Eastern' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 339.0 THEN CASE
                          WHEN "Zipcode" <= 337.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 28.292038917541504 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 36.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.456660747528076 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.137324571609497 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Visibility(mi)" <= -99999999 THEN CASE
                    WHEN time_months("Start_Time") <= 24275.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24271.0 THEN CASE
                        WHEN "Description" <= 30.0 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE 3.0
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 14.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 0.7652149498462677 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 85.96917623102979 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Description" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.934317111968994 THEN 1.0
                          ELSE 3.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.0845510959625244 THEN CASE
                        WHEN "Zipcode" <= 40.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.4512697458267212 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 157.96917782796402 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Mountain' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.564903020858765 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 120.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Description" <= 11.5 THEN CASE
                WHEN "Description" <= 8.5 THEN CASE
                  WHEN "Wind_Chill(F)" <= 0.5489864945411682 THEN CASE
                    WHEN "Description" <= 7.5 THEN CASE
                      WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                        WHEN "Pressure(in)" <= 29.714404106140137 THEN CASE
                          WHEN "Zipcode" <= 170.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 6.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Pacific' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Pacific' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 46.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.628117561340332 THEN CASE
                          WHEN time_months("Start_Time") <= 24239.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 401.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN CASE
                      WHEN Timezone = 'US/Mountain' THEN 1
                      ELSE 0
                    END <= 0.5 THEN CASE
                      WHEN "Source" in ('Source1', 'Source2') THEN CASE
                        WHEN "Zipcode" <= 42.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.6604729890823364 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.115070343017578 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 2390.5 THEN 0.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                        WHEN "Zipcode" <= 247.0 THEN CASE
                          WHEN "Zipcode" <= 29.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 26.008241653442383 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 311.0 THEN 0.0
                          ELSE 1.0
                        END
                        ELSE 0.0
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 46.5 THEN CASE
                    WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.4276353120803833 THEN CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Source" in ('Source1', 'Source2') THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.649340391159058 THEN CASE
                          WHEN "Zipcode" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.657256603240967 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Humidity(%)" <= 138.96917684630415 THEN CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                          WHEN "Pressure(in)" <= 30.105053901672363 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 503.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 86.96917595884254 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 4.087303400039673 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.614237785339355 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN CASE
                  WHEN Timezone = 'US/Pacific' THEN 1
                  ELSE 0
                END <= 0.5 THEN CASE
                  WHEN "Description" <= 13.5 THEN CASE
                    WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                      WHEN "Description" <= 12.5 THEN CASE
                        WHEN "Pressure(in)" <= 29.59420394897461 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Central' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.9316216707229614 THEN CASE
                          WHEN "Zipcode" <= 10.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.8206838369369507 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.6650590896606445 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Mountain' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 18.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 11.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 103.96917611749521 THEN CASE
                          WHEN "Description" <= 18.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Central' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Humidity(%)" <= 116.9691759975152 THEN CASE
                          WHEN time_months("Start_Time") <= 24229.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24225.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 16.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 500.5 THEN CASE
                    WHEN "Airport_Code_6" <= 0.5 THEN CASE
                      WHEN "Airport_Code_10" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 11.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 480.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                          WHEN "Description" <= 17.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 90.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                        WHEN "Pressure(in)" <= 29.363821029663086 THEN CASE
                          WHEN time_months("Start_Time") <= 24232.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.99487018585205 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 15.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 0.5320945978164673 THEN CASE
                      WHEN "Airport_Code_9" <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 28.913071632385254 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 14.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24231.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 570.0 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24225.5 THEN CASE
                        WHEN "Zipcode" <= 2681.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 3445.0 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Zipcode" <= 37.5 THEN CASE
              WHEN "Description" <= 11.5 THEN CASE
                WHEN time_months("Start_Time") <= 24246.5 THEN CASE
                  WHEN "Pressure(in)" <= 28.832938194274902 THEN CASE
                    WHEN "Humidity(%)" <= 83.96917609171345 THEN CASE
                      WHEN "Description" <= 6.5 THEN CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24242.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24242.5 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Humidity(%)" <= 69.96917597111259 THEN 0.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Mountain' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Description" <= 6.5 THEN CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Description" <= 5.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.4366554021835327 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.694084405899048 THEN CASE
                          WHEN "Zipcode" <= 2.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Source" in ('Source1') THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 0.5152027010917664 THEN CASE
                    WHEN "Source" in ('Source1') THEN CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Pacific' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 25.28704261779785 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.7679104208946228 THEN CASE
                          WHEN time_months("Start_Time") <= 24277.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.48479729890823364 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.904720306396484 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 6.5 THEN CASE
                          WHEN "Pressure(in)" <= 23.73947048187256 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Humidity(%)" <= 104.96917652899882 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Pacific' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Central' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Eastern' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 27.410573959350586 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Humidity(%)" <= 138.96917684630415 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.16515350341797 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN CASE
                  WHEN Timezone = 'US/Pacific' THEN 1
                  ELSE 0
                END <= 0.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 9.5 THEN CASE
                        WHEN "Pressure(in)" <= 30.085020065307617 THEN CASE
                          WHEN time_months("Start_Time") <= 24197.5 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 3.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24210.5 THEN CASE
                          WHEN "Source" in ('Source1') THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 14.5 THEN CASE
                        WHEN "Source" in ('Source1') THEN CASE
                          WHEN "Zipcode" <= 8.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 17.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24210.5 THEN 3.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 0.07388282380998135 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 0.5489864945411682 THEN CASE
                      WHEN "Zipcode" <= 5.5 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Eastern' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Source" in ('Source1') THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24269.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24261.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.89470386505127 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 3.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 29.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Source" in ('Source1') THEN CASE
                    WHEN "Description" <= 15.5 THEN CASE
                      WHEN "Airport_Code_3" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24249.5 THEN CASE
                          WHEN "Description" <= 12.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24247.5 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_10" <= 0.5 THEN CASE
                        WHEN "Description" <= 29.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.6623635292053223 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.5118243098258972 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 95.96917556022984 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 9.5 THEN CASE
                      WHEN "Airport_Code_10" <= 0.5 THEN CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.9526742696762085 THEN CASE
                          WHEN time_months("Start_Time") <= 24215.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 14.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 15.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 1.4776564836502075 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 24.5 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.6703931093215942 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.89470386505127 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 12.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN CASE
                WHEN Timezone = 'US/Pacific' THEN 1
                ELSE 0
              END <= 0.5 THEN CASE
                WHEN "Airport_Code_5" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 163.5 THEN CASE
                    WHEN "Source" in ('Source1') THEN CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Mountain' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24248.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 85.96917623102979 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.6300675868988037 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 11.5 THEN CASE
                        WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Mountain' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 18.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source1') THEN CASE
                      WHEN "Wind_Chill(F)" <= 0.5489864945411682 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.564154624938965 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.5489864945411682 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN CASE
                            WHEN Timezone = 'US/Central' THEN 1
                            ELSE 0
                          END <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                    WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.4645198583602905 THEN CASE
                      WHEN time_months("Start_Time") <= 24247.0 THEN CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" in ('Source1') THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24272.5 THEN CASE
                          WHEN "Zipcode" <= 142.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.25168919563293457 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Eastern' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.67433738708496 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.283687591552734 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.79453754425049 THEN CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.298340320587158 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source" in ('Source1') THEN CASE
                      WHEN "Humidity(%)" <= 79.96917581308075 THEN CASE
                        WHEN "Description" <= 7.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 0.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 17.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Eastern' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.8207974433898926 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN CASE
                        WHEN Timezone = 'US/Central' THEN 1
                        ELSE 0
                      END <= 0.5 THEN CASE
                        WHEN CASE
                          WHEN Timezone = 'US/Eastern' THEN 1
                          ELSE 0
                        END <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24267.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Source" in ('Source1') THEN CASE
                  WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                    WHEN "Humidity(%)" <= 108.96917544024981 THEN CASE
                      WHEN "Description" <= 15.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24233.5 THEN CASE
                          WHEN bad_count(COALESCE("Weather_Condition", 'Fair')) <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24235.0 THEN 3.0
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24249.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Wind_Chill(F)" <= 0.42854729294776917 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.42584459483623505 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 15.5 THEN CASE
                          WHEN "Humidity(%)" <= 149.96917727069862 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.8207974433898926 THEN CASE
                      WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.3194496631622314 THEN CASE
                        WHEN "Pressure(in)" <= 29.55413818359375 THEN CASE
                          WHEN time_months("Start_Time") <= 24254.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 3.810242772102356 THEN CASE
                          WHEN time_months("Start_Time") <= 24248.0 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 4.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Humidity(%)" <= 160.46917270350542 THEN CASE
                        WHEN "Pressure(in)" <= 29.84462070465088 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.5489864945411682 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 124.9691738200172 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.5523648858070374 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 500.5 THEN CASE
                    WHEN "Description" <= 11.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24238.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 82.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 133.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Temperature(F)" -61.993707143960116) / (18.948923924075153) <= 2.9289262294769287 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Description" <= 13.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 460.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24220.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 113.0 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN CASE
                      WHEN "Airport_Code_6" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN CASE
                          WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.774503707885742 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24233.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24237.5 THEN CASE
                        WHEN "Zipcode" <= 570.0 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.5456081032752991 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 0.47128377854824066 THEN CASE
                          WHEN "Zipcode" <= 1314.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              ("Wind_Chill(F)" + 89.0) * 0.0033783783783783786 + 0.0 AS "Wind_Chill(F)",
              "Temperature(F)",
              "Humidity(%)",
              "Pressure(in)",
              "Source",
              "Timezone",
              "Country_0",
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
              "Weather_Condition",
              "Visibility(mi)"
            FROM
              (
                SELECT
                  CASE
                    WHEN "Country" = 'US' THEN 1
                    ELSE 0
                  END AS "Country_0",
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
                  "Source",
                  "Temperature(F)",
                  "Humidity(%)",
                  "Pressure(in)",
                  "Wind_Chill(F)",
                  "Description",
                  "Start_Time",
                  "Weather_Condition",
                  "Visibility(mi)"
                FROM
                  (
                    SELECT
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
                      "Timezone",
                      "Country",
                      "Source",
                      "Wind_Chill(F)",
                      "Description",
                      "Start_Time",
                      "Weather_Condition",
                      "Visibility(mi)",
                      "Temperature(F)",
                      "Humidity(%)"
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
                          "Timezone",
                          "Country",
                          "Source",
                          "Temperature(F)",
                          "Humidity(%)",
                          "Pressure(in)",
                          "Wind_Chill(F)",
                          "Start_Time",
                          "Weather_Condition",
                          "Visibility(mi)"
                        FROM
                          (
                            SELECT
                              COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                              COALESCE(
                                "Description",
                                'A crash has occurred causing no to minimum delays. Use caution.'
                              ) AS "Description",
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
                              "Country",
                              "Source",
                              "Temperature(F)",
                              "Humidity(%)",
                              "Pressure(in)",
                              "Wind_Chill(F)",
                              "Start_Time",
                              "Visibility(mi)",
                              "Weather_Condition"
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
      ) AS F
  ) AS F