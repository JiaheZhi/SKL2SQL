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
                          CASE
                            WHEN "Zipcode" = '75227' THEN 1
                            WHEN "Zipcode" = '91607' THEN 1
                            WHEN "Zipcode" = '45215' THEN 1
                            WHEN "Zipcode" = '29169' THEN 1
                            WHEN "Zipcode" = '94580-2454' THEN 1
                            WHEN "Zipcode" = '11798-4413' THEN 1
                            WHEN "Zipcode" = '30318-4407' THEN 1
                            WHEN "Zipcode" = '33462' THEN 1
                            WHEN "Zipcode" = '28262' THEN 1
                            WHEN "Zipcode" = '94607' THEN 1
                          END AS "Zipcode",
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
                          "Timezone",
                          "Country",
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
                              CASE
                                WHEN "Airport_Code" in ('KHUF', 'KSPD') THEN 1
                                ELSE 0
                              END AS "Airport_Code_0",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K04V',
                                  'K04W',
                                  'K0VG',
                                  'K12N',
                                  'K14Y',
                                  'K19A',
                                  'K1H2',
                                  'K1II',
                                  'K1P1',
                                  'K20U',
                                  'K2G4',
                                  'K3A1',
                                  'K3I2',
                                  'K3TH',
                                  'K40J',
                                  'K4A9',
                                  'K4BM',
                                  'K4SL',
                                  'K5C1',
                                  'K5SM',
                                  'K7R3',
                                  'K87Q',
                                  'K9A1',
                                  'KABE',
                                  'KABQ',
                                  'KACQ',
                                  'KADC',
                                  'KAEG',
                                  'KAEL',
                                  'KAEX',
                                  'KAFJ',
                                  'KAFK',
                                  'KAFN',
                                  'KAFW',
                                  'KAGC',
                                  'KAGS',
                                  'KAIK',
                                  'KAKQ',
                                  'KAKR',
                                  'KALX',
                                  'KAMW',
                                  'KANB',
                                  'KANK',
                                  'KAQW',
                                  'KART',
                                  'KASD',
                                  'KASG',
                                  'KASH',
                                  'KASJ',
                                  'KASL',
                                  'KAST',
                                  'KATW',
                                  'KAUM',
                                  'KAVP',
                                  'KAWG',
                                  'KAWM',
                                  'KAWN',
                                  'KAWO',
                                  'KAZO',
                                  'KBAD',
                                  'KBAK',
                                  'KBAZ',
                                  'KBBB',
                                  'KBDG',
                                  'KBDH',
                                  'KBDL',
                                  'KBDU',
                                  'KBFD',
                                  'KBGF',
                                  'KBGM',
                                  'KBIF',
                                  'KBIL',
                                  'KBIV',
                                  'KBIX',
                                  'KBJI',
                                  'KBLF',
                                  'KBLH',
                                  'KBLI',
                                  'KBLM',
                                  'KBLU',
                                  'KBMG',
                                  'KBML',
                                  'KBNO',
                                  'KBOI',
                                  'KBOW',
                                  'KBQK',
                                  'KBTM',
                                  'KBTP',
                                  'KBUO',
                                  'KBUY',
                                  'KBVS',
                                  'KBVY',
                                  'KBXK',
                                  'KBYH',
                                  'KC09',
                                  'KC29',
                                  'KCAK',
                                  'KCCA',
                                  'KCDC',
                                  'KCDH',
                                  'KCDN',
                                  'KCEF',
                                  'KCEW',
                                  'KCGC',
                                  'KCGE',
                                  'KCGZ',
                                  'KCHJ',
                                  'KCJR',
                                  'KCLE',
                                  'KCMS',
                                  'KCNI',
                                  'KCNO',
                                  'KCOE',
                                  'KCON',
                                  'KCOS',
                                  'KCOU',
                                  'KCPC',
                                  'KCQF',
                                  'KCQW',
                                  'KCRE',
                                  'KCRW',
                                  'KCRX',
                                  'KCSG',
                                  'KCSV',
                                  'KCTB',
                                  'KCUH',
                                  'KCVB',
                                  'KCVO',
                                  'KCWC',
                                  'KCWF',
                                  'KCWI',
                                  'KCWV',
                                  'KCXP',
                                  'KCXY',
                                  'KCZZ',
                                  'KD39',
                                  'KDAN',
                                  'KDAW',
                                  'KDCM',
                                  'KDCU',
                                  'KDDH',
                                  'KDED',
                                  'KDFW',
                                  'KDHN',
                                  'KDKK',
                                  'KDMN',
                                  'KDPL',
                                  'KDRA',
                                  'KDTL',
                                  'KDTN',
                                  'KDTO',
                                  'KDTS',
                                  'KDUH',
                                  'KDUJ',
                                  'KDVN',
                                  'KE16',
                                  'KEAU',
                                  'KEBG',
                                  'KEDU',
                                  'KEGE',
                                  'KEHO',
                                  'KEIK',
                                  'KEKA',
                                  'KEKM',
                                  'KEKO',
                                  'KELM',
                                  'KELZ',
                                  'KEMV',
                                  'KETB',
                                  'KEUL',
                                  'KEVB',
                                  'KEVW',
                                  'KEWB',
                                  'KEZM',
                                  'KF46',
                                  'KFAF',
                                  'KFAR',
                                  'KFBL',
                                  'KFCS',
                                  'KFFC',
                                  'KFFT',
                                  'KFFX',
                                  'KFIG',
                                  'KFIT',
                                  'KFKA',
                                  'KFKL',
                                  'KFKN',
                                  'KFMH',
                                  'KFOZ',
                                  'KFPR',
                                  'KFQD',
                                  'KFSE',
                                  'KFTK',
                                  'KFTW',
                                  'KFWS',
                                  'KFYG',
                                  'KFZY',
                                  'KGBN',
                                  'KGDJ',
                                  'KGFA',
                                  'KGFK',
                                  'KGGE',
                                  'KGGI',
                                  'KGHG',
                                  'KGIF',
                                  'KGJT',
                                  'KGKY',
                                  'KGLE',
                                  'KGPM',
                                  'KGRB',
                                  'KGSB',
                                  'KGSO',
                                  'KGTU',
                                  'KGVL',
                                  'KGYL',
                                  'KGYR',
                                  'KGYY',
                                  'KH21',
                                  'KHAF',
                                  'KHAO',
                                  'KHBG',
                                  'KHFJ',
                                  'KHIB',
                                  'KHJO',
                                  'KHLG',
                                  'KHLX',
                                  'KHMM',
                                  'KHNZ',
                                  'KHOT',
                                  'KHRO',
                                  'KHRT',
                                  'KHTO',
                                  'KHXD',
                                  'KHYA',
                                  'KHYX',
                                  'KHZY',
                                  'KIAG',
                                  'KIGX',
                                  'KIKK',
                                  'KIKV',
                                  'KIKW',
                                  'KILM',
                                  'KINJ',
                                  'KITR',
                                  'KIWA',
                                  'KIXA',
                                  'KIXD',
                                  'KIYK',
                                  'KIZA',
                                  'KJBR',
                                  'KJER',
                                  'KJFZ',
                                  'KJGG',
                                  'KJMR',
                                  'KJMS',
                                  'KJNW',
                                  'KJVL',
                                  'KJYL',
                                  'KKLS',
                                  'KL35',
                                  'KL38',
                                  'KLAF',
                                  'KLAN',
                                  'KLAS',
                                  'KLAX',
                                  'KLBB',
                                  'KLBE',
                                  'KLBT',
                                  'KLCK',
                                  'KLCQ',
                                  'KLFI',
                                  'KLFT',
                                  'KLGC',
                                  'KLIC',
                                  'KLJF',
                                  'KLLQ',
                                  'KLMO',
                                  'KLNK',
                                  'KLNL',
                                  'KLNP',
                                  'KLOZ',
                                  'KLRF',
                                  'KLRO',
                                  'KLRU',
                                  'KLUF',
                                  'KLUM',
                                  'KLUX',
                                  'KLVJ',
                                  'KLVM',
                                  'KLVN',
                                  'KLXL',
                                  'KLXV',
                                  'KM16',
                                  'KM30',
                                  'KM46',
                                  'KM89',
                                  'KMAI',
                                  'KMBS',
                                  'KMCF',
                                  'KMCI',
                                  'KMCN',
                                  'KMDQ',
                                  'KMEB',
                                  'KMEH',
                                  'KMEI',
                                  'KMFE',
                                  'KMFI',
                                  'KMGG',
                                  'KMGJ',
                                  'KMHT',
                                  'KMHV',
                                  'KMIV',
                                  'KMJX',
                                  'KMKE',
                                  'KMKG',
                                  'KMKL',
                                  'KMKS',
                                  'KMLB',
                                  'KMLD',
                                  'KMLI',
                                  'KMLJ',
                                  'KMMH',
                                  'KMMV',
                                  'KMNH',
                                  'KMOB',
                                  'KMQJ',
                                  'KMRB',
                                  'KMRN',
                                  'KMRT',
                                  'KMRY',
                                  'KMSN',
                                  'KMSO',
                                  'KMTH',
                                  'KMTV',
                                  'KMUI',
                                  'KMUL',
                                  'KMVN',
                                  'KMWK',
                                  'KMWL',
                                  'KMWM',
                                  'KMZH',
                                  'KMZZ',
                                  'KN03',
                                  'KNAK',
                                  'KNCA',
                                  'KNFW',
                                  'KNGU',
                                  'KNJK',
                                  'KNLC',
                                  'KNPA',
                                  'KNRB',
                                  'KNRS',
                                  'KNSE',
                                  'KNXF',
                                  'KNYL',
                                  'KOBE',
                                  'KOCF',
                                  'KOEO',
                                  'KOFF',
                                  'KOGS',
                                  'KOKB',
                                  'KOKV',
                                  'KOLM',
                                  'KOMH',
                                  'KONX',
                                  'KOPL',
                                  'KOPN',
                                  'KORC',
                                  'KOSH',
                                  'KOSU',
                                  'KOTG',
                                  'KOTH',
                                  'KOTM',
                                  'KOUN',
                                  'KOVE',
                                  'KOVL',
                                  'KOWA',
                                  'KOWP',
                                  'KOXC',
                                  'KOZW',
                                  'KP08',
                                  'KPAM',
                                  'KPAN',
                                  'KPCM',
                                  'KPDT',
                                  'KPEX',
                                  'KPEZ',
                                  'KPGA',
                                  'KPGD',
                                  'KPHF',
                                  'KPIB',
                                  'KPIT',
                                  'KPLU',
                                  'KPNM',
                                  'KPQL',
                                  'KPQN',
                                  'KPRN',
                                  'KPRO',
                                  'KPSF',
                                  'KPSP',
                                  'KPTK',
                                  'KPUB',
                                  'KPUC',
                                  'KPUJ',
                                  'KPWM',
                                  'KPWT',
                                  'KPYM',
                                  'KRAC',
                                  'KRBW',
                                  'KRCE',
                                  'KRDD',
                                  'KRGK',
                                  'KRJD',
                                  'KRME',
                                  'KRMY',
                                  'KRND',
                                  'KRNT',
                                  'KROS',
                                  'KRPJ',
                                  'KRQE',
                                  'KRSP',
                                  'KRTS',
                                  'KRUQ',
                                  'KRWF',
                                  'KRWI',
                                  'KRYT',
                                  'KRYW',
                                  'KRYY',
                                  'KRZL',
                                  'KS47',
                                  'KSAD',
                                  'KSAF',
                                  'KSAZ',
                                  'KSBA',
                                  'KSBN',
                                  'KSBY',
                                  'KSDB',
                                  'KSDM',
                                  'KSEE',
                                  'KSEZ',
                                  'KSFM',
                                  'KSFY',
                                  'KSGU',
                                  'KSHN',
                                  'KSJN',
                                  'KSLE',
                                  'KSLO',
                                  'KSMF',
                                  'KSMP',
                                  'KSMQ',
                                  'KSNC',
                                  'KSPB',
                                  'KSRC',
                                  'KSSC',
                                  'KSSF',
                                  'KSSI',
                                  'KSUX',
                                  'KSVN',
                                  'KSXT',
                                  'KTDO',
                                  'KTDZ',
                                  'KTHA',
                                  'KTIW',
                                  'KTKI',
                                  'KTME',
                                  'KTNU',
                                  'KTOB',
                                  'KTOI',
                                  'KTQE',
                                  'KTRK',
                                  'KTRL',
                                  'KTTA',
                                  'KTTD',
                                  'KTTF',
                                  'KTTN',
                                  'KTTS',
                                  'KTUS',
                                  'KTVI',
                                  'KTVL',
                                  'KTXK',
                                  'KTYQ',
                                  'KTYR',
                                  'KUAO',
                                  'KUCP',
                                  'KUDG',
                                  'KUKF',
                                  'KUKT',
                                  'KULM',
                                  'KVAY',
                                  'KVBT',
                                  'KVCB',
                                  'KVES',
                                  'KVJI',
                                  'KVKS',
                                  'KVLD',
                                  'KVNC',
                                  'KVPZ',
                                  'KVSF',
                                  'KVSH',
                                  'KVTA',
                                  'KVVG',
                                  'KW29',
                                  'KWBC',
                                  'KWST',
                                  'KWYS',
                                  'KY19',
                                  'KY23',
                                  'KY51',
                                  'KY63',
                                  'KY70',
                                  'KZPH',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_1",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K04V',
                                  'K0CO',
                                  'K14Y',
                                  'K19A',
                                  'K1H2',
                                  'K1II',
                                  'K1P1',
                                  'K20U',
                                  'K2G4',
                                  'K2J9',
                                  'K36U',
                                  'K3A1',
                                  'K3I2',
                                  'K4A9',
                                  'K4BM',
                                  'K4SL',
                                  'K5SM',
                                  'K6A2',
                                  'K7R3',
                                  'K87Q',
                                  'K9MN',
                                  'KACQ',
                                  'KACY',
                                  'KADC',
                                  'KAEG',
                                  'KAEL',
                                  'KAFF',
                                  'KAFJ',
                                  'KAFK',
                                  'KAFN',
                                  'KAFW',
                                  'KAIT',
                                  'KAKH',
                                  'KAKQ',
                                  'KALX',
                                  'KAMW',
                                  'KANE',
                                  'KANK',
                                  'KAOO',
                                  'KAPF',
                                  'KAPG',
                                  'KART',
                                  'KASG',
                                  'KASH',
                                  'KASJ',
                                  'KAST',
                                  'KAUM',
                                  'KAUN',
                                  'KAUO',
                                  'KAUS',
                                  'KAVC',
                                  'KAVL',
                                  'KAVP',
                                  'KAWM',
                                  'KAWO',
                                  'KAXH',
                                  'KAXN',
                                  'KBBB',
                                  'KBCB',
                                  'KBCT',
                                  'KBDG',
                                  'KBDR',
                                  'KBED',
                                  'KBEH',
                                  'KBFD',
                                  'KBKL',
                                  'KBKV',
                                  'KBKW',
                                  'KBLF',
                                  'KBLH',
                                  'KBML',
                                  'KBMQ',
                                  'KBNL',
                                  'KBOS',
                                  'KBQK',
                                  'KBTA',
                                  'KBTM',
                                  'KBUF',
                                  'KBUY',
                                  'KBVY',
                                  'KBWI',
                                  'KBWP',
                                  'KBYH',
                                  'KBZN',
                                  'KC09',
                                  'KCBE',
                                  'KCCA',
                                  'KCCU',
                                  'KCDH',
                                  'KCDW',
                                  'KCEC',
                                  'KCEU',
                                  'KCEW',
                                  'KCFE',
                                  'KCFS',
                                  'KCGZ',
                                  'KCHA',
                                  'KCHJ',
                                  'KCID',
                                  'KCJR',
                                  'KCKB',
                                  'KCLS',
                                  'KCMA',
                                  'KCNI',
                                  'KCNO',
                                  'KCOE',
                                  'KCON',
                                  'KCOU',
                                  'KCPS',
                                  'KCQF',
                                  'KCQW',
                                  'KCSG',
                                  'KCSV',
                                  'KCUH',
                                  'KCVB',
                                  'KCVG',
                                  'KCWC',
                                  'KCWF',
                                  'KCWI',
                                  'KCWV',
                                  'KCXO',
                                  'KCZK',
                                  'KCZZ',
                                  'KD39',
                                  'KDAB',
                                  'KDAG',
                                  'KDAN',
                                  'KDDH',
                                  'KDED',
                                  'KDHN',
                                  'KDKK',
                                  'KDMW',
                                  'KDOV',
                                  'KDPL',
                                  'KDRA',
                                  'KDTL',
                                  'KDUJ',
                                  'KDVT',
                                  'KDYB',
                                  'KEAU',
                                  'KEET',
                                  'KEFD',
                                  'KEGE',
                                  'KEKA',
                                  'KEKM',
                                  'KEKO',
                                  'KELM',
                                  'KELP',
                                  'KEOE',
                                  'KERI',
                                  'KESF',
                                  'KETB',
                                  'KEUG',
                                  'KEUL',
                                  'KEVM',
                                  'KEVW',
                                  'KEYE',
                                  'KF70',
                                  'KFAF',
                                  'KFAT',
                                  'KFBG',
                                  'KFBL',
                                  'KFCM',
                                  'KFCS',
                                  'KFDW',
                                  'KFFC',
                                  'KFFO',
                                  'KFFT',
                                  'KFFX',
                                  'KFHB',
                                  'KFIT',
                                  'KFKL',
                                  'KFMY',
                                  'KFNL',
                                  'KFOT',
                                  'KFOZ',
                                  'KFPR',
                                  'KFQD',
                                  'KFSM',
                                  'KFTK',
                                  'KFVX',
                                  'KFWA',
                                  'KFWD',
                                  'KFWN',
                                  'KFWS',
                                  'KFYG',
                                  'KFYV',
                                  'KGAD',
                                  'KGAI',
                                  'KGBN',
                                  'KGDB',
                                  'KGDP',
                                  'KGEG',
                                  'KGFK',
                                  'KGFL',
                                  'KGGE',
                                  'KGGI',
                                  'KGHG',
                                  'KGIF',
                                  'KGNV',
                                  'KGON',
                                  'KGOO',
                                  'KGPM',
                                  'KGRD',
                                  'KGRF',
                                  'KGSB',
                                  'KGSO',
                                  'KGTU',
                                  'KGWO',
                                  'KGXA',
                                  'KGYL',
                                  'KH21',
                                  'KHAF',
                                  'KHBG',
                                  'KHBI',
                                  'KHCD',
                                  'KHEY',
                                  'KHIB',
                                  'KHIE',
                                  'KHIO',
                                  'KHKS',
                                  'KHLN',
                                  'KHMM',
                                  'KHMZ',
                                  'KHOT',
                                  'KHQM',
                                  'KHRT',
                                  'KHSP',
                                  'KHTO',
                                  'KHTS',
                                  'KHUA',
                                  'KHWY',
                                  'KHYA',
                                  'KHYW',
                                  'KHZY',
                                  'KI69',
                                  'KIAD',
                                  'KIAG',
                                  'KIAH',
                                  'KICT',
                                  'KIGM',
                                  'KIKK',
                                  'KIMM',
                                  'KIND',
                                  'KINJ',
                                  'KIPT',
                                  'KISP',
                                  'KITR',
                                  'KIWA',
                                  'KIXA',
                                  'KIXD',
                                  'KIYK',
                                  'KIZA',
                                  'KJAX',
                                  'KJER',
                                  'KJFK',
                                  'KJFX',
                                  'KJFZ',
                                  'KJOT',
                                  'KJST',
                                  'KJXN',
                                  'KJYL',
                                  'KL35',
                                  'KL38',
                                  'KLAF',
                                  'KLAS',
                                  'KLBE',
                                  'KLBT',
                                  'KLCQ',
                                  'KLEE',
                                  'KLEX',
                                  'KLGC',
                                  'KLJF',
                                  'KLKR',
                                  'KLKV',
                                  'KLLQ',
                                  'KLNK',
                                  'KLNL',
                                  'KLOT',
                                  'KLPR',
                                  'KLRJ',
                                  'KLRU',
                                  'KLUA',
                                  'KLUM',
                                  'KLUX',
                                  'KLVK',
                                  'KLVM',
                                  'KLVN',
                                  'KLXL',
                                  'KLYH',
                                  'KM16',
                                  'KM30',
                                  'KM89',
                                  'KMAE',
                                  'KMAI',
                                  'KMAN',
                                  'KMAO',
                                  'KMBS',
                                  'KMCI',
                                  'KMEH',
                                  'KMEI',
                                  'KMEM',
                                  'KMFE',
                                  'KMGC',
                                  'KMGJ',
                                  'KMGW',
                                  'KMHR',
                                  'KMHV',
                                  'KMJX',
                                  'KMKC',
                                  'KMKJ',
                                  'KMKT',
                                  'KMLB',
                                  'KMLD',
                                  'KMLE',
                                  'KMLJ',
                                  'KMLU',
                                  'KMMH',
                                  'KMMK',
                                  'KMNH',
                                  'KMNI',
                                  'KMOD',
                                  'KMPO',
                                  'KMQE',
                                  'KMQS',
                                  'KMQY',
                                  'KMRC',
                                  'KMTC',
                                  'KMTH',
                                  'KMTN',
                                  'KMUL',
                                  'KMWC',
                                  'KMWK',
                                  'KMWS',
                                  'KMYF',
                                  'KMYR',
                                  'KMYV',
                                  'KMZH',
                                  'KNBC',
                                  'KNEW',
                                  'KNFE',
                                  'KNFG',
                                  'KNFJ',
                                  'KNID',
                                  'KNKA',
                                  'KNPA',
                                  'KNQA',
                                  'KNRB',
                                  'KNXF',
                                  'KNYG',
                                  'KO54',
                                  'KO69',
                                  'KO86',
                                  'KOGD',
                                  'KOJC',
                                  'KOKB',
                                  'KOMN',
                                  'KONA',
                                  'KONO',
                                  'KONP',
                                  'KOPL',
                                  'KOPN',
                                  'KORC',
                                  'KORH',
                                  'KOSH',
                                  'KOTG',
                                  'KOTM',
                                  'KOVL',
                                  'KOWA',
                                  'KOWD',
                                  'KOWP',
                                  'KOXB',
                                  'KOXR',
                                  'KOZW',
                                  'KP08',
                                  'KPAE',
                                  'KPAO',
                                  'KPDX',
                                  'KPEO',
                                  'KPGA',
                                  'KPIB',
                                  'KPIT',
                                  'KPMP',
                                  'KPNS',
                                  'KPOU',
                                  'KPQL',
                                  'KPQN',
                                  'KPRB',
                                  'KPRN',
                                  'KPRO',
                                  'KPSP',
                                  'KPTB',
                                  'KPTV',
                                  'KPUC',
                                  'KPUJ',
                                  'KPVU',
                                  'KPWM',
                                  'KPYM',
                                  'KRAC',
                                  'KRBD',
                                  'KRBG',
                                  'KRCE',
                                  'KRDM',
                                  'KRHV',
                                  'KRND',
                                  'KRNO',
                                  'KROS',
                                  'KRPJ',
                                  'KRQE',
                                  'KRSP',
                                  'KRST',
                                  'KRSW',
                                  'KRTS',
                                  'KRUQ',
                                  'KRWI',
                                  'KRXE',
                                  'KRYN',
                                  'KSAV',
                                  'KSBN',
                                  'KSBP',
                                  'KSCH',
                                  'KSDM',
                                  'KSEA',
                                  'KSEG',
                                  'KSEZ',
                                  'KSFM',
                                  'KSFQ',
                                  'KSFZ',
                                  'KSGF',
                                  'KSGH',
                                  'KSGR',
                                  'KSGT',
                                  'KSGU',
                                  'KSHN',
                                  'KSHV',
                                  'KSIY',
                                  'KSJC',
                                  'KSJN',
                                  'KSLI',
                                  'KSMF',
                                  'KSNC',
                                  'KSNS',
                                  'KSPI',
                                  'KSRB',
                                  'KSRC',
                                  'KSSF',
                                  'KSSI',
                                  'KSTC',
                                  'KSTJ',
                                  'KSTS',
                                  'KSUS',
                                  'KSUU',
                                  'KSUX',
                                  'KSVH',
                                  'KSWF',
                                  'KSYR',
                                  'KT62',
                                  'KTAN',
                                  'KTCL',
                                  'KTCM',
                                  'KTDO',
                                  'KTHA',
                                  'KTHV',
                                  'KTIK',
                                  'KTKI',
                                  'KTLH',
                                  'KTNU',
                                  'KTOA',
                                  'KTOB',
                                  'KTOC',
                                  'KTOL',
                                  'KTPA',
                                  'KTQE',
                                  'KTRI',
                                  'KTTA',
                                  'KTUL',
                                  'KTVI',
                                  'KTVL',
                                  'KTXK',
                                  'KTYQ',
                                  'KTYR',
                                  'KU24',
                                  'KUES',
                                  'KUKF',
                                  'KUKI',
                                  'KUKT',
                                  'KUNV',
                                  'KUZA',
                                  'KVBT',
                                  'KVIS',
                                  'KVJI',
                                  'KVKS',
                                  'KVLD',
                                  'KVPC',
                                  'KVPZ',
                                  'KVQQ',
                                  'KVSH',
                                  'KVTA',
                                  'KW29',
                                  'KWDR',
                                  'KWHP',
                                  'KWJF',
                                  'KWST',
                                  'KWVI',
                                  'KWYS',
                                  'KXLL',
                                  'KY19',
                                  'KY23',
                                  'KY51',
                                  'KY63',
                                  'KZPH',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_2",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K0CO',
                                  'K12N',
                                  'K14Y',
                                  'K19A',
                                  'K1P1',
                                  'K2J9',
                                  'K36U',
                                  'K3A1',
                                  'K3A6',
                                  'K4A9',
                                  'K4I3',
                                  'K6A2',
                                  'K87Q',
                                  'K9MN',
                                  'KABE',
                                  'KABQ',
                                  'KABY',
                                  'KACY',
                                  'KADC',
                                  'KADW',
                                  'KAEX',
                                  'KAFF',
                                  'KAFJ',
                                  'KAFK',
                                  'KAFN',
                                  'KAID',
                                  'KAIK',
                                  'KAJO',
                                  'KAKH',
                                  'KAKQ',
                                  'KALB',
                                  'KANB',
                                  'KAND',
                                  'KANK',
                                  'KAOO',
                                  'KAPG',
                                  'KAQW',
                                  'KART',
                                  'KARW',
                                  'KASH',
                                  'KASJ',
                                  'KASL',
                                  'KAST',
                                  'KATL',
                                  'KATW',
                                  'KAUD',
                                  'KAUN',
                                  'KAUO',
                                  'KAVC',
                                  'KAWM',
                                  'KAWN',
                                  'KAWO',
                                  'KAXH',
                                  'KBBB',
                                  'KBCT',
                                  'KBDH',
                                  'KBDR',
                                  'KBEH',
                                  'KBFL',
                                  'KBGF',
                                  'KBIF',
                                  'KBIV',
                                  'KBIX',
                                  'KBJC',
                                  'KBKV',
                                  'KBKW',
                                  'KBLF',
                                  'KBMC',
                                  'KBMG',
                                  'KBOW',
                                  'KBTA',
                                  'KBTP',
                                  'KBUY',
                                  'KBVY',
                                  'KBWP',
                                  'KBYH',
                                  'KC09',
                                  'KC29',
                                  'KCBE',
                                  'KCCA',
                                  'KCCR',
                                  'KCCU',
                                  'KCDC',
                                  'KCDW',
                                  'KCEC',
                                  'KCEF',
                                  'KCEW',
                                  'KCFE',
                                  'KCGC',
                                  'KCGE',
                                  'KCGF',
                                  'KCHJ',
                                  'KCID',
                                  'KCJR',
                                  'KCKB',
                                  'KCLE',
                                  'KCLS',
                                  'KCMA',
                                  'KCMS',
                                  'KCNI',
                                  'KCOE',
                                  'KCOF',
                                  'KCOS',
                                  'KCQF',
                                  'KCRE',
                                  'KCRG',
                                  'KCRX',
                                  'KCSG',
                                  'KCSV',
                                  'KCTB',
                                  'KCTZ',
                                  'KCUB',
                                  'KCUH',
                                  'KCVO',
                                  'KCWC',
                                  'KCXP',
                                  'KCXY',
                                  'KCZK',
                                  'KCZZ',
                                  'KD39',
                                  'KDAG',
                                  'KDAW',
                                  'KDDH',
                                  'KDHN',
                                  'KDMN',
                                  'KDMW',
                                  'KDNL',
                                  'KDOV',
                                  'KDPA',
                                  'KDPL',
                                  'KDRA',
                                  'KDTN',
                                  'KDTS',
                                  'KDTW',
                                  'KDUH',
                                  'KDVO',
                                  'KDWH',
                                  'KDYB',
                                  'KE16',
                                  'KEBG',
                                  'KEET',
                                  'KEFD',
                                  'KEIK',
                                  'KEKA',
                                  'KEKM',
                                  'KEKO',
                                  'KELO',
                                  'KELP',
                                  'KELZ',
                                  'KEMV',
                                  'KERI',
                                  'KESF',
                                  'KEVM',
                                  'KEVW',
                                  'KEWB',
                                  'KEWR',
                                  'KEZM',
                                  'KF46',
                                  'KF70',
                                  'KFAR',
                                  'KFAT',
                                  'KFAY',
                                  'KFBG',
                                  'KFCS',
                                  'KFDK',
                                  'KFFC',
                                  'KFFO',
                                  'KFFT',
                                  'KFFX',
                                  'KFFZ',
                                  'KFKA',
                                  'KFKL',
                                  'KFLO',
                                  'KFMH',
                                  'KFOZ',
                                  'KFQD',
                                  'KFSM',
                                  'KFTK',
                                  'KFTW',
                                  'KFVX',
                                  'KFWA',
                                  'KFWN',
                                  'KFYJ',
                                  'KFYV',
                                  'KFZY',
                                  'KGAD',
                                  'KGAI',
                                  'KGBN',
                                  'KGDJ',
                                  'KGDP',
                                  'KGEG',
                                  'KGFA',
                                  'KGFK',
                                  'KGFL',
                                  'KGGI',
                                  'KGHG',
                                  'KGJT',
                                  'KGLE',
                                  'KGOO',
                                  'KGPI',
                                  'KGPZ',
                                  'KGRD',
                                  'KGRF',
                                  'KGSB',
                                  'KGSP',
                                  'KGTU',
                                  'KGVL',
                                  'KGWB',
                                  'KGXA',
                                  'KGYR',
                                  'KH21',
                                  'KHBG',
                                  'KHBI',
                                  'KHCD',
                                  'KHEF',
                                  'KHFJ',
                                  'KHGR',
                                  'KHHR',
                                  'KHIE',
                                  'KHKS',
                                  'KHLN',
                                  'KHMM',
                                  'KHMZ',
                                  'KHNZ',
                                  'KHOU',
                                  'KHPN',
                                  'KHQM',
                                  'KHRI',
                                  'KHSP',
                                  'KHST',
                                  'KHTO',
                                  'KHTS',
                                  'KHVN',
                                  'KHVS',
                                  'KHWO',
                                  'KHXD',
                                  'KHYA',
                                  'KHYW',
                                  'KHYX',
                                  'KI69',
                                  'KICT',
                                  'KIGM',
                                  'KIGQ',
                                  'KIKK',
                                  'KIKW',
                                  'KINF',
                                  'KINJ',
                                  'KIPT',
                                  'KISM',
                                  'KJFK',
                                  'KJFX',
                                  'KJFZ',
                                  'KJMR',
                                  'KJNW',
                                  'KJRB',
                                  'KJVL',
                                  'KJYG',
                                  'KJYL',
                                  'KJYO',
                                  'KJYR',
                                  'KJZI',
                                  'KL35',
                                  'KLAN',
                                  'KLDJ',
                                  'KLEE',
                                  'KLFI',
                                  'KLFT',
                                  'KLGB',
                                  'KLGC',
                                  'KLGD',
                                  'KLGU',
                                  'KLIT',
                                  'KLKU',
                                  'KLKV',
                                  'KLLQ',
                                  'KLMO',
                                  'KLMT',
                                  'KLNC',
                                  'KLNL',
                                  'KLNP',
                                  'KLNS',
                                  'KLOM',
                                  'KLOZ',
                                  'KLPR',
                                  'KLRO',
                                  'KLRU',
                                  'KLUA',
                                  'KLVM',
                                  'KLWM',
                                  'KLXV',
                                  'KLYH',
                                  'KLZU',
                                  'KM30',
                                  'KM46',
                                  'KMAE',
                                  'KMAN',
                                  'KMCE',
                                  'KMCF',
                                  'KMCI',
                                  'KMCN',
                                  'KMDT',
                                  'KMEH',
                                  'KMEI',
                                  'KMER',
                                  'KMFI',
                                  'KMFR',
                                  'KMGE',
                                  'KMGJ',
                                  'KMGY',
                                  'KMHT',
                                  'KMIC',
                                  'KMIE',
                                  'KMJQ',
                                  'KMKE',
                                  'KMKG',
                                  'KMKT',
                                  'KMLU',
                                  'KMMH',
                                  'KMMK',
                                  'KMMU',
                                  'KMMV',
                                  'KMNH',
                                  'KMPO',
                                  'KMQE',
                                  'KMRB',
                                  'KMRC',
                                  'KMRN',
                                  'KMRY',
                                  'KMSN',
                                  'KMSP',
                                  'KMTC',
                                  'KMTH',
                                  'KMUL',
                                  'KMVN',
                                  'KMWC',
                                  'KMWK',
                                  'KMWL',
                                  'KMWM',
                                  'KMWO',
                                  'KMWS',
                                  'KMYR',
                                  'KMYV',
                                  'KMZH',
                                  'KMZZ',
                                  'KNAK',
                                  'KNBC',
                                  'KNFJ',
                                  'KNIP',
                                  'KNJK',
                                  'KNKX',
                                  'KNLC',
                                  'KNPA',
                                  'KNRB',
                                  'KNSE',
                                  'KNTU',
                                  'KNYC',
                                  'KO22',
                                  'KO54',
                                  'KO69',
                                  'KOBE',
                                  'KOCF',
                                  'KOEO',
                                  'KOGB',
                                  'KOGD',
                                  'KOKB',
                                  'KOKC',
                                  'KOLM',
                                  'KOMA',
                                  'KONA',
                                  'KONP',
                                  'KOPL',
                                  'KOQN',
                                  'KOQT',
                                  'KORC',
                                  'KORF',
                                  'KOTG',
                                  'KOUN',
                                  'KOVL',
                                  'KOWD',
                                  'KOWP',
                                  'KOXB',
                                  'KP08',
                                  'KPDK',
                                  'KPEX',
                                  'KPGA',
                                  'KPGD',
                                  'KPHF',
                                  'KPHL',
                                  'KPLU',
                                  'KPMD',
                                  'KPNE',
                                  'KPNM',
                                  'KPOC',
                                  'KPQN',
                                  'KPRB',
                                  'KPRN',
                                  'KPRO',
                                  'KPUB',
                                  'KPUC',
                                  'KPVD',
                                  'KPVF',
                                  'KPVG',
                                  'KPWA',
                                  'KPWM',
                                  'KPWT',
                                  'KPYM',
                                  'KRAC',
                                  'KRAL',
                                  'KRBD',
                                  'KRCE',
                                  'KRDD',
                                  'KRGK',
                                  'KRIC',
                                  'KRIV',
                                  'KRMY',
                                  'KRND',
                                  'KRNM',
                                  'KRNO',
                                  'KROC',
                                  'KROS',
                                  'KRPJ',
                                  'KRQE',
                                  'KRWF',
                                  'KRWI',
                                  'KRXE',
                                  'KRYW',
                                  'KRYY',
                                  'KRZL',
                                  'KSAC',
                                  'KSAD',
                                  'KSAN',
                                  'KSAT',
                                  'KSAZ',
                                  'KSBA',
                                  'KSBD',
                                  'KSBN',
                                  'KSBP',
                                  'KSBY',
                                  'KSCH',
                                  'KSDB',
                                  'KSDF',
                                  'KSDL',
                                  'KSEZ',
                                  'KSFB',
                                  'KSFF',
                                  'KSGF',
                                  'KSGJ',
                                  'KSGS',
                                  'KSGT',
                                  'KSHD',
                                  'KSJN',
                                  'KSMP',
                                  'KSMQ',
                                  'KSMX',
                                  'KSNC',
                                  'KSNS',
                                  'KSOW',
                                  'KSPB',
                                  'KSPI',
                                  'KSQL',
                                  'KSSC',
                                  'KSTS',
                                  'KSUA',
                                  'KSUU',
                                  'KSUX',
                                  'KSVH',
                                  'KSWF',
                                  'KSYR',
                                  'KTAN',
                                  'KTCM',
                                  'KTIK',
                                  'KTKI',
                                  'KTME',
                                  'KTNU',
                                  'KTOA',
                                  'KTOB',
                                  'KTOC',
                                  'KTOI',
                                  'KTPF',
                                  'KTQE',
                                  'KTUL',
                                  'KTUS',
                                  'KTVI',
                                  'KTVK',
                                  'KTVL',
                                  'KTYS',
                                  'KTZR',
                                  'KU42',
                                  'KUES',
                                  'KUGN',
                                  'KULM',
                                  'KUZA',
                                  'KVCB',
                                  'KVDF',
                                  'KVKS',
                                  'KVLD',
                                  'KVLL',
                                  'KVNY',
                                  'KVSF',
                                  'KVSH',
                                  'KVVG',
                                  'KW29',
                                  'KWHP',
                                  'KWJF',
                                  'KWYS',
                                  'KXLL',
                                  'KY23',
                                  'KY51',
                                  'KY63',
                                  'KY70',
                                  'KYIP',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_3",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K0CO',
                                  'K14Y',
                                  'K1H2',
                                  'K1II',
                                  'K20U',
                                  'K21D',
                                  'K2G4',
                                  'K3A1',
                                  'K3A6',
                                  'K3I2',
                                  'K4A9',
                                  'K4BM',
                                  'K4SL',
                                  'K5C1',
                                  'K5SM',
                                  'K6A2',
                                  'K7R3',
                                  'KABE',
                                  'KACQ',
                                  'KADS',
                                  'KAFW',
                                  'KAGS',
                                  'KAIT',
                                  'KAKH',
                                  'KAKR',
                                  'KALX',
                                  'KAMW',
                                  'KANB',
                                  'KAND',
                                  'KANE',
                                  'KANK',
                                  'KAOO',
                                  'KAPA',
                                  'KAQW',
                                  'KARB',
                                  'KART',
                                  'KASD',
                                  'KASG',
                                  'KASH',
                                  'KAUM',
                                  'KAUO',
                                  'KAVC',
                                  'KAVL',
                                  'KAWG',
                                  'KAWM',
                                  'KAXH',
                                  'KAXN',
                                  'KAZO',
                                  'KBAB',
                                  'KBAD',
                                  'KBAK',
                                  'KBAZ',
                                  'KBBB',
                                  'KBCT',
                                  'KBDG',
                                  'KBDH',
                                  'KBDL',
                                  'KBDN',
                                  'KBDR',
                                  'KBED',
                                  'KBEH',
                                  'KBFD',
                                  'KBFI',
                                  'KBFL',
                                  'KBHM',
                                  'KBIF',
                                  'KBIL',
                                  'KBIV',
                                  'KBIX',
                                  'KBJI',
                                  'KBKF',
                                  'KBLI',
                                  'KBLU',
                                  'KBMC',
                                  'KBMG',
                                  'KBNL',
                                  'KBOI',
                                  'KBQK',
                                  'KBTA',
                                  'KBUF',
                                  'KBUO',
                                  'KBVS',
                                  'KBWI',
                                  'KBWP',
                                  'KBZN',
                                  'KC29',
                                  'KCCA',
                                  'KCCU',
                                  'KCDH',
                                  'KCDW',
                                  'KCFE',
                                  'KCGC',
                                  'KCGF',
                                  'KCHA',
                                  'KCHO',
                                  'KCHS',
                                  'KCIC',
                                  'KCID',
                                  'KCJR',
                                  'KCLS',
                                  'KCMA',
                                  'KCNI',
                                  'KCOE',
                                  'KCOS',
                                  'KCPC',
                                  'KCRQ',
                                  'KCSG',
                                  'KCTZ',
                                  'KCVB',
                                  'KCWC',
                                  'KCWI',
                                  'KCWV',
                                  'KCXP',
                                  'KD39',
                                  'KDAA',
                                  'KDAB',
                                  'KDAL',
                                  'KDAN',
                                  'KDDH',
                                  'KDED',
                                  'KDET',
                                  'KDLS',
                                  'KDLZ',
                                  'KDMH',
                                  'KDMN',
                                  'KDMW',
                                  'KDNL',
                                  'KDOV',
                                  'KDPA',
                                  'KDRA',
                                  'KDTL',
                                  'KDTS',
                                  'KDVN',
                                  'KDVT',
                                  'KEDC',
                                  'KEET',
                                  'KEGE',
                                  'KEKO',
                                  'KELM',
                                  'KELO',
                                  'KELP',
                                  'KEMV',
                                  'KEQY',
                                  'KERI',
                                  'KETB',
                                  'KEUG',
                                  'KEVW',
                                  'KEWB',
                                  'KEWR',
                                  'KF46',
                                  'KFAR',
                                  'KFAY',
                                  'KFCI',
                                  'KFFC',
                                  'KFFO',
                                  'KFFT',
                                  'KFFX',
                                  'KFIG',
                                  'KFKA',
                                  'KFLL',
                                  'KFLO',
                                  'KFMH',
                                  'KFNL',
                                  'KFNT',
                                  'KFOZ',
                                  'KFPR',
                                  'KFQD',
                                  'KFSE',
                                  'KFSM',
                                  'KFTK',
                                  'KFTW',
                                  'KFVX',
                                  'KFWD',
                                  'KFWN',
                                  'KFWS',
                                  'KFXE',
                                  'KFYG',
                                  'KFYJ',
                                  'KFYV',
                                  'KFZY',
                                  'KGDB',
                                  'KGDJ',
                                  'KGFA',
                                  'KGFK',
                                  'KGFL',
                                  'KGGI',
                                  'KGHG',
                                  'KGIF',
                                  'KGKY',
                                  'KGLE',
                                  'KGMU',
                                  'KGNV',
                                  'KGPI',
                                  'KGPT',
                                  'KGPZ',
                                  'KGRF',
                                  'KGSP',
                                  'KGVL',
                                  'KGYH',
                                  'KGYR',
                                  'KGYY',
                                  'KH21',
                                  'KHAO',
                                  'KHEF',
                                  'KHEY',
                                  'KHFD',
                                  'KHGR',
                                  'KHIE',
                                  'KHIF',
                                  'KHIO',
                                  'KHJO',
                                  'KHKS',
                                  'KHLG',
                                  'KHMM',
                                  'KHMZ',
                                  'KHOT',
                                  'KHOU',
                                  'KHRI',
                                  'KHRO',
                                  'KHRT',
                                  'KHTO',
                                  'KHUA',
                                  'KHVN',
                                  'KHVS',
                                  'KHWO',
                                  'KHWY',
                                  'KHYX',
                                  'KHZY',
                                  'KIAG',
                                  'KICT',
                                  'KIGM',
                                  'KIGQ',
                                  'KIGX',
                                  'KIND',
                                  'KINF',
                                  'KINT',
                                  'KISM',
                                  'KITR',
                                  'KIXA',
                                  'KIYK',
                                  'KIZA',
                                  'KJAX',
                                  'KJBR',
                                  'KJER',
                                  'KJFK',
                                  'KJFX',
                                  'KJGG',
                                  'KJMR',
                                  'KJMS',
                                  'KJNW',
                                  'KJNX',
                                  'KJOT',
                                  'KJRB',
                                  'KJVL',
                                  'KJXN',
                                  'KJYG',
                                  'KJYL',
                                  'KJYO',
                                  'KJZI',
                                  'KKLS',
                                  'KLBB',
                                  'KLCK',
                                  'KLEX',
                                  'KLFI',
                                  'KLGA',
                                  'KLGC',
                                  'KLGU',
                                  'KLHM',
                                  'KLHZ',
                                  'KLKR',
                                  'KLKU',
                                  'KLMO',
                                  'KLNK',
                                  'KLNL',
                                  'KLNP',
                                  'KLOT',
                                  'KLOU',
                                  'KLOZ',
                                  'KLQK',
                                  'KLRU',
                                  'KLUF',
                                  'KLUM',
                                  'KLVK',
                                  'KLVM',
                                  'KLXT',
                                  'KLXV',
                                  'KLYH',
                                  'KLZU',
                                  'KM16',
                                  'KM30',
                                  'KM46',
                                  'KM89',
                                  'KMCE',
                                  'KMCF',
                                  'KMDQ',
                                  'KMDT',
                                  'KMDW',
                                  'KMEB',
                                  'KMEM',
                                  'KMER',
                                  'KMFE',
                                  'KMFI',
                                  'KMFR',
                                  'KMGC',
                                  'KMGM',
                                  'KMHR',
                                  'KMHV',
                                  'KMKT',
                                  'KMLB',
                                  'KMLD',
                                  'KMLJ',
                                  'KMMH',
                                  'KMMK',
                                  'KMOB',
                                  'KMRB',
                                  'KMRC',
                                  'KMRN',
                                  'KMRY',
                                  'KMSN',
                                  'KMSO',
                                  'KMTN',
                                  'KMUI',
                                  'KMWK',
                                  'KMWL',
                                  'KMWM',
                                  'KMWO',
                                  'KMYR',
                                  'KMZH',
                                  'KN03',
                                  'KNAK',
                                  'KNBC',
                                  'KNEW',
                                  'KNFG',
                                  'KNFJ',
                                  'KNPA',
                                  'KNQA',
                                  'KNRB',
                                  'KNRS',
                                  'KNUQ',
                                  'KNYC',
                                  'KNYG',
                                  'KO22',
                                  'KO54',
                                  'KOBE',
                                  'KOGD',
                                  'KOGS',
                                  'KOJC',
                                  'KOKB',
                                  'KOKC',
                                  'KOLV',
                                  'KOMA',
                                  'KONA',
                                  'KONP',
                                  'KORC',
                                  'KORF',
                                  'KORH',
                                  'KORL',
                                  'KOSH',
                                  'KOSU',
                                  'KOTG',
                                  'KOTH',
                                  'KOWD',
                                  'KOWP',
                                  'KOXB',
                                  'KOXC',
                                  'KP08',
                                  'KPAN',
                                  'KPAO',
                                  'KPCM',
                                  'KPDT',
                                  'KPDX',
                                  'KPEO',
                                  'KPGA',
                                  'KPHF',
                                  'KPIB',
                                  'KPIT',
                                  'KPNE',
                                  'KPNS',
                                  'KPOU',
                                  'KPOV',
                                  'KPRB',
                                  'KPRN',
                                  'KPRO',
                                  'KPSP',
                                  'KPTB',
                                  'KPTW',
                                  'KPVD',
                                  'KPVF',
                                  'KPWA',
                                  'KPWK',
                                  'KRAC',
                                  'KRBD',
                                  'KRCE',
                                  'KRDG',
                                  'KRDM',
                                  'KRDU',
                                  'KRGK',
                                  'KRIC',
                                  'KRIV',
                                  'KRJD',
                                  'KRMN',
                                  'KRMY',
                                  'KRNO',
                                  'KRNT',
                                  'KROA',
                                  'KRQE',
                                  'KRST',
                                  'KRUQ',
                                  'KRWF',
                                  'KRWI',
                                  'KRYT',
                                  'KRYW',
                                  'KRZL',
                                  'KS47',
                                  'KSAC',
                                  'KSAF',
                                  'KSAT',
                                  'KSAZ',
                                  'KSBA',
                                  'KSBD',
                                  'KSBP',
                                  'KSBY',
                                  'KSCK',
                                  'KSDB',
                                  'KSDL',
                                  'KSDM',
                                  'KSFB',
                                  'KSFM',
                                  'KSFZ',
                                  'KSGF',
                                  'KSGH',
                                  'KSGR',
                                  'KSGT',
                                  'KSGU',
                                  'KSHN',
                                  'KSHV',
                                  'KSIY',
                                  'KSJC',
                                  'KSJN',
                                  'KSKF',
                                  'KSMF',
                                  'KSMP',
                                  'KSNA',
                                  'KSNC',
                                  'KSNS',
                                  'KSOW',
                                  'KSPA',
                                  'KSPB',
                                  'KSPG',
                                  'KSPS',
                                  'KSQL',
                                  'KSRB',
                                  'KSSC',
                                  'KSSI',
                                  'KSTJ',
                                  'KSTL',
                                  'KSTP',
                                  'KSUA',
                                  'KSUS',
                                  'KSVN',
                                  'KSYN',
                                  'KSYR',
                                  'KT62',
                                  'KTAN',
                                  'KTCM',
                                  'KTDZ',
                                  'KTEB',
                                  'KTEW',
                                  'KTHA',
                                  'KTHV',
                                  'KTIK',
                                  'KTIW',
                                  'KTKI',
                                  'KTMB',
                                  'KTME',
                                  'KTNU',
                                  'KTOB',
                                  'KTOC',
                                  'KTOL',
                                  'KTRK',
                                  'KTRL',
                                  'KTSP',
                                  'KTTD',
                                  'KTUL',
                                  'KTVI',
                                  'KTVK',
                                  'KTYS',
                                  'KTZR',
                                  'KU24',
                                  'KU42',
                                  'KUAO',
                                  'KUES',
                                  'KUGN',
                                  'KUKF',
                                  'KUKI',
                                  'KUKT',
                                  'KULM',
                                  'KUNV',
                                  'KVCB',
                                  'KVES',
                                  'KVLL',
                                  'KVNC',
                                  'KVNY',
                                  'KVPC',
                                  'KVQQ',
                                  'KVUO',
                                  'KVVG',
                                  'KW29',
                                  'KWBC',
                                  'KWYS',
                                  'KY51',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_4",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K0CO',
                                  'K1II',
                                  'K2G4',
                                  'K36U',
                                  'K3A1',
                                  'K3I2',
                                  'K40J',
                                  'K4SL',
                                  'K6A2',
                                  'K87Q',
                                  'K9A1',
                                  'K9MN',
                                  'KACQ',
                                  'KADS',
                                  'KAEL',
                                  'KAFF',
                                  'KAFW',
                                  'KAGC',
                                  'KAGS',
                                  'KAIT',
                                  'KAJO',
                                  'KAKH',
                                  'KAKQ',
                                  'KALX',
                                  'KAMW',
                                  'KANE',
                                  'KAPC',
                                  'KAPG',
                                  'KAQW',
                                  'KARB',
                                  'KARW',
                                  'KASL',
                                  'KAST',
                                  'KAUD',
                                  'KAUO',
                                  'KAVC',
                                  'KAVL',
                                  'KAWG',
                                  'KAWN',
                                  'KAZO',
                                  'KBAB',
                                  'KBAD',
                                  'KBCB',
                                  'KBDG',
                                  'KBDL',
                                  'KBDR',
                                  'KBDU',
                                  'KBED',
                                  'KBEH',
                                  'KBFI',
                                  'KBGF',
                                  'KBGM',
                                  'KBHM',
                                  'KBIV',
                                  'KBIX',
                                  'KBJC',
                                  'KBJJ',
                                  'KBKE',
                                  'KBKL',
                                  'KBLF',
                                  'KBMC',
                                  'KBML',
                                  'KBMQ',
                                  'KBNA',
                                  'KBOI',
                                  'KBOW',
                                  'KBTR',
                                  'KBUF',
                                  'KBUO',
                                  'KBUY',
                                  'KBZN',
                                  'KC09',
                                  'KC29',
                                  'KCBE',
                                  'KCCA',
                                  'KCDC',
                                  'KCDN',
                                  'KCDW',
                                  'KCEW',
                                  'KCFE',
                                  'KCFS',
                                  'KCGC',
                                  'KCGF',
                                  'KCGS',
                                  'KCGZ',
                                  'KCHA',
                                  'KCHO',
                                  'KCHS',
                                  'KCKB',
                                  'KCLE',
                                  'KCLS',
                                  'KCMH',
                                  'KCMI',
                                  'KCMS',
                                  'KCNO',
                                  'KCOE',
                                  'KCOF',
                                  'KCOQ',
                                  'KCOU',
                                  'KCPC',
                                  'KCQT',
                                  'KCQW',
                                  'KCRE',
                                  'KCRG',
                                  'KCRQ',
                                  'KCRW',
                                  'KCSG',
                                  'KCTB',
                                  'KCTZ',
                                  'KCUH',
                                  'KCVB',
                                  'KCVH',
                                  'KCVO',
                                  'KCWI',
                                  'KCXO',
                                  'KCXY',
                                  'KCZZ',
                                  'KDAL',
                                  'KDAN',
                                  'KDAW',
                                  'KDAY',
                                  'KDCA',
                                  'KDCM',
                                  'KDCU',
                                  'KDLZ',
                                  'KDMA',
                                  'KDNL',
                                  'KDPA',
                                  'KDRA',
                                  'KDSM',
                                  'KDTL',
                                  'KDTS',
                                  'KDUH',
                                  'KDVT',
                                  'KDYB',
                                  'KDYL',
                                  'KE16',
                                  'KEFD',
                                  'KEGE',
                                  'KEIK',
                                  'KEKA',
                                  'KEKM',
                                  'KELM',
                                  'KELO',
                                  'KELZ',
                                  'KEMT',
                                  'KEMV',
                                  'KESF',
                                  'KEUG',
                                  'KEUL',
                                  'KEVB',
                                  'KEVM',
                                  'KEWB',
                                  'KEWR',
                                  'KEYE',
                                  'KEZF',
                                  'KEZM',
                                  'KF46',
                                  'KFAF',
                                  'KFAR',
                                  'KFAT',
                                  'KFAY',
                                  'KFDK',
                                  'KFDW',
                                  'KFFC',
                                  'KFFO',
                                  'KFFT',
                                  'KFFX',
                                  'KFFZ',
                                  'KFHB',
                                  'KFKN',
                                  'KFMH',
                                  'KFMY',
                                  'KFNT',
                                  'KFOT',
                                  'KFQD',
                                  'KFSE',
                                  'KFUL',
                                  'KFVX',
                                  'KFWA',
                                  'KFWD',
                                  'KFWN',
                                  'KFXE',
                                  'KGAD',
                                  'KGAI',
                                  'KGBN',
                                  'KGDB',
                                  'KGDP',
                                  'KGEG',
                                  'KGEU',
                                  'KGFK',
                                  'KGHG',
                                  'KGKY',
                                  'KGLE',
                                  'KGOO',
                                  'KGPT',
                                  'KGPZ',
                                  'KGRB',
                                  'KGRD',
                                  'KGRF',
                                  'KGRR',
                                  'KGSB',
                                  'KGTU',
                                  'KGWB',
                                  'KGYH',
                                  'KGYR',
                                  'KGYY',
                                  'KHAF',
                                  'KHBI',
                                  'KHEY',
                                  'KHFD',
                                  'KHGR',
                                  'KHJO',
                                  'KHKS',
                                  'KHLG',
                                  'KHLX',
                                  'KHMM',
                                  'KHPN',
                                  'KHQM',
                                  'KHSP',
                                  'KHST',
                                  'KHVN',
                                  'KHVS',
                                  'KHXD',
                                  'KHYA',
                                  'KHYX',
                                  'KIAG',
                                  'KIAH',
                                  'KICT',
                                  'KIGM',
                                  'KIGQ',
                                  'KIKV',
                                  'KILM',
                                  'KIMM',
                                  'KIND',
                                  'KIPT',
                                  'KISM',
                                  'KIWA',
                                  'KIYK',
                                  'KIZA',
                                  'KJAX',
                                  'KJBR',
                                  'KJER',
                                  'KJFZ',
                                  'KJMR',
                                  'KJNX',
                                  'KJOT',
                                  'KJRB',
                                  'KJVL',
                                  'KJXN',
                                  'KJYG',
                                  'KJYL',
                                  'KJYR',
                                  'KJZI',
                                  'KKLS',
                                  'KL35',
                                  'KLAF',
                                  'KLAS',
                                  'KLAX',
                                  'KLBB',
                                  'KLBT',
                                  'KLCK',
                                  'KLEX',
                                  'KLGB',
                                  'KLGC',
                                  'KLGU',
                                  'KLHM',
                                  'KLIC',
                                  'KLKR',
                                  'KLKV',
                                  'KLLQ',
                                  'KLNC',
                                  'KLOT',
                                  'KLQK',
                                  'KLRJ',
                                  'KLRO',
                                  'KLRU',
                                  'KLUA',
                                  'KLUM',
                                  'KLVK',
                                  'KLWM',
                                  'KLXL',
                                  'KLXT',
                                  'KLZU',
                                  'KM30',
                                  'KM89',
                                  'KMAO',
                                  'KMBS',
                                  'KMCC',
                                  'KMCI',
                                  'KMCJ',
                                  'KMDW',
                                  'KMEB',
                                  'KMEI',
                                  'KMEM',
                                  'KMFE',
                                  'KMFI',
                                  'KMGE',
                                  'KMHR',
                                  'KMHT',
                                  'KMHV',
                                  'KMIC',
                                  'KMJQ',
                                  'KMJX',
                                  'KMKE',
                                  'KMKS',
                                  'KMKT',
                                  'KMLD',
                                  'KMLU',
                                  'KMMH',
                                  'KMMK',
                                  'KMMU',
                                  'KMNI',
                                  'KMOB',
                                  'KMOD',
                                  'KMRB',
                                  'KMRN',
                                  'KMRT',
                                  'KMRY',
                                  'KMSO',
                                  'KMSP',
                                  'KMTH',
                                  'KMTV',
                                  'KMWK',
                                  'KMWM',
                                  'KMWS',
                                  'KMXF',
                                  'KMYV',
                                  'KMZH',
                                  'KMZZ',
                                  'KNBC',
                                  'KNFE',
                                  'KNGU',
                                  'KNJK',
                                  'KNKA',
                                  'KNKX',
                                  'KNPA',
                                  'KNSE',
                                  'KNTU',
                                  'KNUQ',
                                  'KNXF',
                                  'KNYC',
                                  'KNYL',
                                  'KO86',
                                  'KOBE',
                                  'KOEO',
                                  'KOFP',
                                  'KOGD',
                                  'KOGS',
                                  'KOMH',
                                  'KOMN',
                                  'KONP',
                                  'KONX',
                                  'KOPF',
                                  'KOPL',
                                  'KOPN',
                                  'KOQN',
                                  'KORC',
                                  'KORD',
                                  'KORF',
                                  'KORH',
                                  'KOSH',
                                  'KOTH',
                                  'KOTM',
                                  'KOUN',
                                  'KOVL',
                                  'KOWP',
                                  'KOXR',
                                  'KOZW',
                                  'KPAE',
                                  'KPAN',
                                  'KPCM',
                                  'KPEO',
                                  'KPEZ',
                                  'KPGA',
                                  'KPGD',
                                  'KPHL',
                                  'KPIA',
                                  'KPIB',
                                  'KPLU',
                                  'KPMP',
                                  'KPNE',
                                  'KPNM',
                                  'KPNS',
                                  'KPOC',
                                  'KPOU',
                                  'KPQL',
                                  'KPQN',
                                  'KPRB',
                                  'KPRN',
                                  'KPRO',
                                  'KPTB',
                                  'KPTK',
                                  'KPTV',
                                  'KPUC',
                                  'KPUJ',
                                  'KPVD',
                                  'KPVG',
                                  'KPWK',
                                  'KPYM',
                                  'KRCE',
                                  'KRDD',
                                  'KRDG',
                                  'KRGK',
                                  'KRIC',
                                  'KRIV',
                                  'KRME',
                                  'KRMN',
                                  'KRMY',
                                  'KRND',
                                  'KRNM',
                                  'KROC',
                                  'KRPJ',
                                  'KRSP',
                                  'KRSW',
                                  'KRVS',
                                  'KRWF',
                                  'KRZL',
                                  'KSAT',
                                  'KSAV',
                                  'KSAZ',
                                  'KSBD',
                                  'KSBP',
                                  'KSBY',
                                  'KSDB',
                                  'KSEE',
                                  'KSEG',
                                  'KSEZ',
                                  'KSFM',
                                  'KSFO',
                                  'KSFQ',
                                  'KSFY',
                                  'KSGF',
                                  'KSGS',
                                  'KSGT',
                                  'KSGU',
                                  'KSHD',
                                  'KSHN',
                                  'KSJC',
                                  'KSLE',
                                  'KSLI',
                                  'KSLO',
                                  'KSMP',
                                  'KSMQ',
                                  'KSMS',
                                  'KSNA',
                                  'KSNS',
                                  'KSPA',
                                  'KSPI',
                                  'KSPS',
                                  'KSRB',
                                  'KSRC',
                                  'KSSC',
                                  'KSSF',
                                  'KSTL',
                                  'KSTP',
                                  'KSTS',
                                  'KSUA',
                                  'KSUX',
                                  'KSVH',
                                  'KSVN',
                                  'KSYN',
                                  'KTAN',
                                  'KTCL',
                                  'KTCM',
                                  'KTDZ',
                                  'KTEB',
                                  'KTHA',
                                  'KTHV',
                                  'KTIK',
                                  'KTIW',
                                  'KTKI',
                                  'KTME',
                                  'KTOA',
                                  'KTOC',
                                  'KTPA',
                                  'KTPF',
                                  'KTRI',
                                  'KTRL',
                                  'KTTA',
                                  'KTTS',
                                  'KTUL',
                                  'KTVI',
                                  'KTXK',
                                  'KTYS',
                                  'KTZR',
                                  'KU24',
                                  'KUAO',
                                  'KUKF',
                                  'KUKT',
                                  'KUNV',
                                  'KUZA',
                                  'KVBT',
                                  'KVCV',
                                  'KVES',
                                  'KVJI',
                                  'KVLD',
                                  'KVLL',
                                  'KVNC',
                                  'KVNY',
                                  'KVSH',
                                  'KVUO',
                                  'KW29',
                                  'KWBC',
                                  'KWST',
                                  'KWYS',
                                  'KY19',
                                  'KY51',
                                  'KY70',
                                  'KYIP',
                                  'KZPH',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_5",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K04W',
                                  'K14Y',
                                  'K19A',
                                  'K1H2',
                                  'K1II',
                                  'K1P1',
                                  'K2J9',
                                  'K3A1',
                                  'K3A6',
                                  'K3I2',
                                  'K40J',
                                  'K4A9',
                                  'K4I3',
                                  'K4SL',
                                  'K5SM',
                                  'K87Q',
                                  'K9A1',
                                  'K9MN',
                                  'KABE',
                                  'KABQ',
                                  'KACY',
                                  'KADW',
                                  'KAEG',
                                  'KAEX',
                                  'KAFF',
                                  'KAFJ',
                                  'KAFN',
                                  'KAFW',
                                  'KAGS',
                                  'KAIK',
                                  'KAKQ',
                                  'KALB',
                                  'KAMW',
                                  'KANB',
                                  'KAND',
                                  'KANK',
                                  'KAQW',
                                  'KART',
                                  'KARW',
                                  'KASH',
                                  'KASJ',
                                  'KATT',
                                  'KAUN',
                                  'KAUO',
                                  'KAUS',
                                  'KAWG',
                                  'KAWM',
                                  'KAWN',
                                  'KAWO',
                                  'KAXH',
                                  'KAZO',
                                  'KBAB',
                                  'KBAK',
                                  'KBAZ',
                                  'KBCB',
                                  'KBDG',
                                  'KBED',
                                  'KBEH',
                                  'KBFI',
                                  'KBFM',
                                  'KBIV',
                                  'KBIX',
                                  'KBJC',
                                  'KBJI',
                                  'KBJJ',
                                  'KBKW',
                                  'KBLF',
                                  'KBLH',
                                  'KBLI',
                                  'KBLU',
                                  'KBMC',
                                  'KBMG',
                                  'KBMQ',
                                  'KBNA',
                                  'KBNL',
                                  'KBOI',
                                  'KBTA',
                                  'KBTR',
                                  'KBUF',
                                  'KBWI',
                                  'KBXK',
                                  'KC29',
                                  'KCAK',
                                  'KCCA',
                                  'KCCR',
                                  'KCCU',
                                  'KCDW',
                                  'KCEC',
                                  'KCEF',
                                  'KCEU',
                                  'KCEW',
                                  'KCGC',
                                  'KCGS',
                                  'KCHD',
                                  'KCHJ',
                                  'KCHS',
                                  'KCIC',
                                  'KCID',
                                  'KCKB',
                                  'KCLT',
                                  'KCMS',
                                  'KCOE',
                                  'KCOF',
                                  'KCPK',
                                  'KCQF',
                                  'KCQT',
                                  'KCQW',
                                  'KCRE',
                                  'KCRW',
                                  'KCSV',
                                  'KCUB',
                                  'KCUH',
                                  'KCVB',
                                  'KCVG',
                                  'KCWC',
                                  'KCWF',
                                  'KCWV',
                                  'KD39',
                                  'KDAL',
                                  'KDAY',
                                  'KDCA',
                                  'KDED',
                                  'KDET',
                                  'KDFW',
                                  'KDKK',
                                  'KDLZ',
                                  'KDMA',
                                  'KDMW',
                                  'KDNL',
                                  'KDSM',
                                  'KDVT',
                                  'KDWH',
                                  'KE16',
                                  'KEBG',
                                  'KEDC',
                                  'KEHO',
                                  'KEKA',
                                  'KELM',
                                  'KELP',
                                  'KELZ',
                                  'KEMV',
                                  'KEOE',
                                  'KERI',
                                  'KESF',
                                  'KEUG',
                                  'KEVB',
                                  'KEVM',
                                  'KEZF',
                                  'KEZM',
                                  'KF70',
                                  'KFAF',
                                  'KFBG',
                                  'KFCI',
                                  'KFCM',
                                  'KFCS',
                                  'KFFC',
                                  'KFFT',
                                  'KFFZ',
                                  'KFHB',
                                  'KFKA',
                                  'KFKN',
                                  'KFNT',
                                  'KFOZ',
                                  'KFQD',
                                  'KFTK',
                                  'KFVX',
                                  'KFWN',
                                  'KFWS',
                                  'KFXE',
                                  'KFYG',
                                  'KFYJ',
                                  'KFYV',
                                  'KFZY',
                                  'KGAD',
                                  'KGAI',
                                  'KGBN',
                                  'KGDB',
                                  'KGDJ',
                                  'KGDP',
                                  'KGEG',
                                  'KGEU',
                                  'KGFA',
                                  'KGFK',
                                  'KGGE',
                                  'KGGI',
                                  'KGHG',
                                  'KGJT',
                                  'KGKY',
                                  'KGLE',
                                  'KGNV',
                                  'KGOO',
                                  'KGPI',
                                  'KGPM',
                                  'KGPT',
                                  'KGPZ',
                                  'KGRB',
                                  'KGRD',
                                  'KGRF',
                                  'KGSB',
                                  'KGSO',
                                  'KGSP',
                                  'KGVL',
                                  'KGWB',
                                  'KGWO',
                                  'KGYL',
                                  'KHAO',
                                  'KHBG',
                                  'KHBI',
                                  'KHFD',
                                  'KHFJ',
                                  'KHGR',
                                  'KHIB',
                                  'KHIE',
                                  'KHIO',
                                  'KHKS',
                                  'KHLG',
                                  'KHLN',
                                  'KHLX',
                                  'KHNZ',
                                  'KHPN',
                                  'KHRI',
                                  'KHRO',
                                  'KHRT',
                                  'KHST',
                                  'KHTO',
                                  'KHUA',
                                  'KHVN',
                                  'KHXD',
                                  'KHYA',
                                  'KHYX',
                                  'KHZY',
                                  'KI69',
                                  'KIAD',
                                  'KICT',
                                  'KIGM',
                                  'KIGQ',
                                  'KIJD',
                                  'KIKK',
                                  'KIKW',
                                  'KILG',
                                  'KIMM',
                                  'KIND',
                                  'KINT',
                                  'KIXA',
                                  'KIZA',
                                  'KJBR',
                                  'KJGG',
                                  'KJMS',
                                  'KJNW',
                                  'KJOT',
                                  'KJST',
                                  'KJXN',
                                  'KJYG',
                                  'KJYL',
                                  'KJZI',
                                  'KKLS',
                                  'KLAN',
                                  'KLAS',
                                  'KLAX',
                                  'KLBB',
                                  'KLBE',
                                  'KLBT',
                                  'KLCQ',
                                  'KLDJ',
                                  'KLEE',
                                  'KLFI',
                                  'KLFT',
                                  'KLGA',
                                  'KLGC',
                                  'KLGD',
                                  'KLHM',
                                  'KLIC',
                                  'KLIT',
                                  'KLKR',
                                  'KLKV',
                                  'KLLQ',
                                  'KLMO',
                                  'KLMT',
                                  'KLNK',
                                  'KLOM',
                                  'KLOU',
                                  'KLRF',
                                  'KLUF',
                                  'KLVJ',
                                  'KLVK',
                                  'KLYH',
                                  'KM16',
                                  'KMAE',
                                  'KMAI',
                                  'KMAO',
                                  'KMBS',
                                  'KMCC',
                                  'KMCE',
                                  'KMCI',
                                  'KMCJ',
                                  'KMCO',
                                  'KMDQ',
                                  'KMDW',
                                  'KMEH',
                                  'KMER',
                                  'KMFE',
                                  'KMFR',
                                  'KMGC',
                                  'KMGG',
                                  'KMGJ',
                                  'KMGM',
                                  'KMHT',
                                  'KMIA',
                                  'KMIE',
                                  'KMJX',
                                  'KMKC',
                                  'KMKE',
                                  'KMKJ',
                                  'KMKL',
                                  'KMKS',
                                  'KMLB',
                                  'KMLD',
                                  'KMLI',
                                  'KMMK',
                                  'KMMU',
                                  'KMNH',
                                  'KMNI',
                                  'KMOB',
                                  'KMOD',
                                  'KMQE',
                                  'KMQJ',
                                  'KMQS',
                                  'KMQY',
                                  'KMRB',
                                  'KMRC',
                                  'KMRN',
                                  'KMSN',
                                  'KMSO',
                                  'KMTH',
                                  'KMTN',
                                  'KMTV',
                                  'KMWC',
                                  'KMWO',
                                  'KMWS',
                                  'KMXF',
                                  'KMYR',
                                  'KMZH',
                                  'KMZZ',
                                  'KNAK',
                                  'KNBC',
                                  'KNEW',
                                  'KNFE',
                                  'KNID',
                                  'KNIP',
                                  'KNKX',
                                  'KNLC',
                                  'KNQA',
                                  'KNTU',
                                  'KNYG',
                                  'KO22',
                                  'KO54',
                                  'KO86',
                                  'KO87',
                                  'KOBE',
                                  'KOEO',
                                  'KOKC',
                                  'KOLM',
                                  'KOMA',
                                  'KOMN',
                                  'KONT',
                                  'KONX',
                                  'KOPL',
                                  'KOPN',
                                  'KOQT',
                                  'KORC',
                                  'KOSU',
                                  'KOTG',
                                  'KOTH',
                                  'KOUN',
                                  'KOVE',
                                  'KOVL',
                                  'KOWA',
                                  'KOXR',
                                  'KPAE',
                                  'KPAO',
                                  'KPCM',
                                  'KPEO',
                                  'KPEZ',
                                  'KPHF',
                                  'KPHX',
                                  'KPLU',
                                  'KPNE',
                                  'KPNM',
                                  'KPNS',
                                  'KPOU',
                                  'KPOV',
                                  'KPRN',
                                  'KPRO',
                                  'KPSF',
                                  'KPSP',
                                  'KPUB',
                                  'KPUJ',
                                  'KPVD',
                                  'KPVG',
                                  'KPVU',
                                  'KPWA',
                                  'KPYM',
                                  'KRAC',
                                  'KRBD',
                                  'KRBL',
                                  'KRDD',
                                  'KRDG',
                                  'KRDU',
                                  'KRIC',
                                  'KRIV',
                                  'KRJD',
                                  'KRMN',
                                  'KRMY',
                                  'KRNM',
                                  'KRNT',
                                  'KROA',
                                  'KROC',
                                  'KRSP',
                                  'KRSW',
                                  'KRUQ',
                                  'KRVS',
                                  'KRYT',
                                  'KS47',
                                  'KSBN',
                                  'KSBP',
                                  'KSBY',
                                  'KSCH',
                                  'KSCK',
                                  'KSDB',
                                  'KSEA',
                                  'KSEE',
                                  'KSFF',
                                  'KSFM',
                                  'KSFY',
                                  'KSGF',
                                  'KSGH',
                                  'KSGJ',
                                  'KSGS',
                                  'KSGU',
                                  'KSHD',
                                  'KSIY',
                                  'KSLC',
                                  'KSLI',
                                  'KSLO',
                                  'KSMF',
                                  'KSMP',
                                  'KSNA',
                                  'KSNC',
                                  'KSNS',
                                  'KSPB',
                                  'KSPG',
                                  'KSRB',
                                  'KSRC',
                                  'KSRQ',
                                  'KSSC',
                                  'KSSF',
                                  'KSSI',
                                  'KSTC',
                                  'KSTL',
                                  'KSTP',
                                  'KSTS',
                                  'KSUX',
                                  'KSVH',
                                  'KSWF',
                                  'KSXT',
                                  'KSYR',
                                  'KTCL',
                                  'KTEW',
                                  'KTHA',
                                  'KTHV',
                                  'KTIK',
                                  'KTIW',
                                  'KTIX',
                                  'KTMB',
                                  'KTNU',
                                  'KTOC',
                                  'KTOI',
                                  'KTOL',
                                  'KTPA',
                                  'KTSP',
                                  'KTTA',
                                  'KTTF',
                                  'KTTN',
                                  'KTVK',
                                  'KTXK',
                                  'KTYQ',
                                  'KTYS',
                                  'KTZR',
                                  'KU24',
                                  'KUAO',
                                  'KUES',
                                  'KUGN',
                                  'KUKF',
                                  'KUKI',
                                  'KUKT',
                                  'KVCB',
                                  'KVCV',
                                  'KVJI',
                                  'KVLL',
                                  'KVNC',
                                  'KVNY',
                                  'KVPZ',
                                  'KVQQ',
                                  'KVSF',
                                  'KVTA',
                                  'KWHP',
                                  'KWST',
                                  'KWYS',
                                  'KY70',
                                  'KYIP',
                                  'KZPH',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_6",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K04V',
                                  'K12N',
                                  'K19A',
                                  'K1II',
                                  'K1P1',
                                  'K20U',
                                  'K21D',
                                  'K36U',
                                  'K3TH',
                                  'K4BM',
                                  'K4I3',
                                  'K87Q',
                                  'K9A1',
                                  'K9MN',
                                  'KABQ',
                                  'KACQ',
                                  'KACY',
                                  'KADC',
                                  'KADS',
                                  'KADW',
                                  'KAEG',
                                  'KAEX',
                                  'KAFF',
                                  'KAFJ',
                                  'KAFN',
                                  'KAFW',
                                  'KAGC',
                                  'KAIT',
                                  'KAKR',
                                  'KAMW',
                                  'KANB',
                                  'KANK',
                                  'KAOO',
                                  'KAPA',
                                  'KAPC',
                                  'KAPF',
                                  'KAPG',
                                  'KAQW',
                                  'KARB',
                                  'KASD',
                                  'KASH',
                                  'KATL',
                                  'KATW',
                                  'KAUN',
                                  'KAVL',
                                  'KAVP',
                                  'KAWM',
                                  'KAXH',
                                  'KAXN',
                                  'KBAB',
                                  'KBAZ',
                                  'KBBB',
                                  'KBDL',
                                  'KBDR',
                                  'KBFM',
                                  'KBGF',
                                  'KBGM',
                                  'KBIF',
                                  'KBIX',
                                  'KBJC',
                                  'KBKE',
                                  'KBKF',
                                  'KBKL',
                                  'KBKW',
                                  'KBLI',
                                  'KBLM',
                                  'KBLU',
                                  'KBMC',
                                  'KBML',
                                  'KBNA',
                                  'KBOI',
                                  'KBTP',
                                  'KBUF',
                                  'KBVS',
                                  'KBVY',
                                  'KBWP',
                                  'KBZN',
                                  'KC09',
                                  'KC29',
                                  'KCBE',
                                  'KCCA',
                                  'KCCR',
                                  'KCCU',
                                  'KCDC',
                                  'KCDH',
                                  'KCDN',
                                  'KCDW',
                                  'KCEC',
                                  'KCEU',
                                  'KCFE',
                                  'KCFS',
                                  'KCGC',
                                  'KCGS',
                                  'KCGZ',
                                  'KCHD',
                                  'KCHJ',
                                  'KCHO',
                                  'KCIC',
                                  'KCID',
                                  'KCLE',
                                  'KCMH',
                                  'KCMI',
                                  'KCMS',
                                  'KCNI',
                                  'KCOE',
                                  'KCOF',
                                  'KCOS',
                                  'KCOU',
                                  'KCRE',
                                  'KCRQ',
                                  'KCRX',
                                  'KCSG',
                                  'KCTZ',
                                  'KCUB',
                                  'KCVH',
                                  'KCVO',
                                  'KCWC',
                                  'KCWF',
                                  'KCWV',
                                  'KCXO',
                                  'KCXP',
                                  'KCZK',
                                  'KCZZ',
                                  'KDAB',
                                  'KDAY',
                                  'KDET',
                                  'KDFW',
                                  'KDHN',
                                  'KDLS',
                                  'KDMA',
                                  'KDNL',
                                  'KDOV',
                                  'KDRA',
                                  'KDTL',
                                  'KDTN',
                                  'KDTO',
                                  'KDUH',
                                  'KDVN',
                                  'KDVO',
                                  'KDVT',
                                  'KDWH',
                                  'KDXR',
                                  'KEET',
                                  'KEFD',
                                  'KEHO',
                                  'KEKA',
                                  'KEKO',
                                  'KELM',
                                  'KELP',
                                  'KEMT',
                                  'KEOE',
                                  'KESF',
                                  'KETB',
                                  'KEUG',
                                  'KEVB',
                                  'KEVM',
                                  'KEVW',
                                  'KEZF',
                                  'KF46',
                                  'KFAR',
                                  'KFAY',
                                  'KFBL',
                                  'KFCI',
                                  'KFDK',
                                  'KFDW',
                                  'KFFO',
                                  'KFFT',
                                  'KFFZ',
                                  'KFIG',
                                  'KFKA',
                                  'KFKL',
                                  'KFLL',
                                  'KFLO',
                                  'KFME',
                                  'KFMH',
                                  'KFNT',
                                  'KFQD',
                                  'KFSM',
                                  'KFTK',
                                  'KFWA',
                                  'KFWS',
                                  'KFYG',
                                  'KFYV',
                                  'KFZY',
                                  'KGAD',
                                  'KGBN',
                                  'KGDJ',
                                  'KGDP',
                                  'KGEU',
                                  'KGFK',
                                  'KGGI',
                                  'KGJT',
                                  'KGKY',
                                  'KGNV',
                                  'KGPI',
                                  'KGPT',
                                  'KGRF',
                                  'KGSO',
                                  'KGVL',
                                  'KGWB',
                                  'KGWO',
                                  'KGYL',
                                  'KGYY',
                                  'KHAO',
                                  'KHBI',
                                  'KHCD',
                                  'KHFJ',
                                  'KHGR',
                                  'KHHR',
                                  'KHIF',
                                  'KHJO',
                                  'KHKS',
                                  'KHLX',
                                  'KHMZ',
                                  'KHOT',
                                  'KHOU',
                                  'KHPN',
                                  'KHRI',
                                  'KHRT',
                                  'KHUA',
                                  'KHVS',
                                  'KHWY',
                                  'KHXD',
                                  'KHYA',
                                  'KHYW',
                                  'KHYX',
                                  'KHZY',
                                  'KI69',
                                  'KIAG',
                                  'KICT',
                                  'KIKV',
                                  'KIKW',
                                  'KILG',
                                  'KIMM',
                                  'KINF',
                                  'KIRS',
                                  'KISM',
                                  'KISP',
                                  'KITR',
                                  'KIWA',
                                  'KIXD',
                                  'KIYK',
                                  'KJBR',
                                  'KJER',
                                  'KJMS',
                                  'KJNX',
                                  'KJOT',
                                  'KJQF',
                                  'KJZI',
                                  'KL38',
                                  'KLAN',
                                  'KLAS',
                                  'KLAX',
                                  'KLBB',
                                  'KLCQ',
                                  'KLDJ',
                                  'KLEE',
                                  'KLEX',
                                  'KLFI',
                                  'KLGB',
                                  'KLGD',
                                  'KLHM',
                                  'KLHZ',
                                  'KLIC',
                                  'KLKU',
                                  'KLKV',
                                  'KLNC',
                                  'KLNL',
                                  'KLNP',
                                  'KLNS',
                                  'KLOT',
                                  'KLPR',
                                  'KLRF',
                                  'KLRO',
                                  'KLRU',
                                  'KLUA',
                                  'KLUF',
                                  'KLUM',
                                  'KLUX',
                                  'KLVK',
                                  'KLVM',
                                  'KLWM',
                                  'KLXL',
                                  'KLXV',
                                  'KLZU',
                                  'KM16',
                                  'KM46',
                                  'KMAI',
                                  'KMAN',
                                  'KMBS',
                                  'KMDQ',
                                  'KMEB',
                                  'KMEI',
                                  'KMEM',
                                  'KMER',
                                  'KMFE',
                                  'KMFI',
                                  'KMFR',
                                  'KMGJ',
                                  'KMGW',
                                  'KMHT',
                                  'KMIA',
                                  'KMIC',
                                  'KMKE',
                                  'KMKL',
                                  'KMKS',
                                  'KMKT',
                                  'KMLD',
                                  'KMMK',
                                  'KMMV',
                                  'KMNH',
                                  'KMNI',
                                  'KMOD',
                                  'KMQJ',
                                  'KMQS',
                                  'KMQY',
                                  'KMRY',
                                  'KMSO',
                                  'KMSP',
                                  'KMUI',
                                  'KMUL',
                                  'KMWL',
                                  'KMWM',
                                  'KMXF',
                                  'KMYR',
                                  'KMYV',
                                  'KNEW',
                                  'KNFG',
                                  'KNFJ',
                                  'KNFW',
                                  'KNID',
                                  'KNJK',
                                  'KNKA',
                                  'KNPA',
                                  'KNQA',
                                  'KNTU',
                                  'KNYC',
                                  'KO54',
                                  'KO69',
                                  'KO86',
                                  'KO87',
                                  'KOAK',
                                  'KOKC',
                                  'KOKV',
                                  'KOMA',
                                  'KONO',
                                  'KONP',
                                  'KOPF',
                                  'KOPL',
                                  'KOPN',
                                  'KORL',
                                  'KOTG',
                                  'KOTM',
                                  'KOVE',
                                  'KOVL',
                                  'KOWP',
                                  'KOXB',
                                  'KOXR',
                                  'KOZW',
                                  'KPAE',
                                  'KPAN',
                                  'KPAO',
                                  'KPBI',
                                  'KPCM',
                                  'KPEX',
                                  'KPEZ',
                                  'KPGD',
                                  'KPHL',
                                  'KPIB',
                                  'KPIE',
                                  'KPIT',
                                  'KPLU',
                                  'KPMP',
                                  'KPNE',
                                  'KPOC',
                                  'KPOU',
                                  'KPOV',
                                  'KPQN',
                                  'KPRN',
                                  'KPRO',
                                  'KPSF',
                                  'KPTK',
                                  'KPUC',
                                  'KPUJ',
                                  'KPVD',
                                  'KPVF',
                                  'KPVG',
                                  'KPVU',
                                  'KPWK',
                                  'KPWM',
                                  'KPYM',
                                  'KRAC',
                                  'KRAL',
                                  'KRBD',
                                  'KRBL',
                                  'KRBW',
                                  'KRCE',
                                  'KRDD',
                                  'KRDG',
                                  'KRDU',
                                  'KRGK',
                                  'KRHV',
                                  'KRIC',
                                  'KRME',
                                  'KRMN',
                                  'KRND',
                                  'KROA',
                                  'KRSP',
                                  'KRST',
                                  'KRSW',
                                  'KRUQ',
                                  'KRWF',
                                  'KRWI',
                                  'KRXE',
                                  'KRYN',
                                  'KRYT',
                                  'KSAC',
                                  'KSAN',
                                  'KSAT',
                                  'KSAV',
                                  'KSBD',
                                  'KSBN',
                                  'KSBP',
                                  'KSBY',
                                  'KSCH',
                                  'KSCK',
                                  'KSDB',
                                  'KSDM',
                                  'KSEG',
                                  'KSEZ',
                                  'KSFB',
                                  'KSFO',
                                  'KSFY',
                                  'KSGH',
                                  'KSGJ',
                                  'KSGT',
                                  'KSGU',
                                  'KSHN',
                                  'KSJC',
                                  'KSLC',
                                  'KSLE',
                                  'KSLI',
                                  'KSMF',
                                  'KSMO',
                                  'KSMX',
                                  'KSNA',
                                  'KSNS',
                                  'KSPA',
                                  'KSPB',
                                  'KSPI',
                                  'KSPS',
                                  'KSQL',
                                  'KSRC',
                                  'KSRQ',
                                  'KSSC',
                                  'KSTC',
                                  'KSTL',
                                  'KSUS',
                                  'KSUX',
                                  'KT62',
                                  'KTAN',
                                  'KTCM',
                                  'KTDO',
                                  'KTDZ',
                                  'KTHV',
                                  'KTIK',
                                  'KTIW',
                                  'KTOB',
                                  'KTOI',
                                  'KTQE',
                                  'KTRK',
                                  'KTRL',
                                  'KTSP',
                                  'KTTD',
                                  'KTTN',
                                  'KTTS',
                                  'KTUS',
                                  'KTVI',
                                  'KTVK',
                                  'KTXK',
                                  'KTYR',
                                  'KU24',
                                  'KUDG',
                                  'KUGN',
                                  'KUKF',
                                  'KUKI',
                                  'KULM',
                                  'KUNV',
                                  'KVAY',
                                  'KVCB',
                                  'KVCV',
                                  'KVDF',
                                  'KVES',
                                  'KVLL',
                                  'KVNC',
                                  'KVPC',
                                  'KVPZ',
                                  'KVQQ',
                                  'KVSF',
                                  'KVSH',
                                  'KVTA',
                                  'KWDR',
                                  'KWHP',
                                  'KWST',
                                  'KWVI',
                                  'KXLL',
                                  'KY19',
                                  'KY51',
                                  'KY63',
                                  'KY70',
                                  'KYIP',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_7",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K04W',
                                  'K1H2',
                                  'K20U',
                                  'K21D',
                                  'K2J9',
                                  'K36U',
                                  'K3I2',
                                  'K3TH',
                                  'K40J',
                                  'K4I3',
                                  'K5SM',
                                  'K6A2',
                                  'K7R3',
                                  'K87Q',
                                  'K9A1',
                                  'K9MN',
                                  'KABE',
                                  'KADS',
                                  'KAEL',
                                  'KAFJ',
                                  'KAFK',
                                  'KAFN',
                                  'KAGS',
                                  'KAID',
                                  'KAIT',
                                  'KAKH',
                                  'KAKQ',
                                  'KALX',
                                  'KAMW',
                                  'KANB',
                                  'KAND',
                                  'KANE',
                                  'KAPA',
                                  'KAPC',
                                  'KAPG',
                                  'KARW',
                                  'KASD',
                                  'KASG',
                                  'KATW',
                                  'KAUN',
                                  'KAUS',
                                  'KAVC',
                                  'KAVL',
                                  'KAVP',
                                  'KAWM',
                                  'KAWO',
                                  'KAXN',
                                  'KAZO',
                                  'KBAB',
                                  'KBAD',
                                  'KBAZ',
                                  'KBCB',
                                  'KBDL',
                                  'KBDN',
                                  'KBDR',
                                  'KBFI',
                                  'KBGF',
                                  'KBGM',
                                  'KBIF',
                                  'KBIL',
                                  'KBIX',
                                  'KBJC',
                                  'KBJI',
                                  'KBKE',
                                  'KBKV',
                                  'KBLH',
                                  'KBLU',
                                  'KBMG',
                                  'KBML',
                                  'KBMQ',
                                  'KBNA',
                                  'KBNL',
                                  'KBNO',
                                  'KBOS',
                                  'KBOW',
                                  'KBTA',
                                  'KBTM',
                                  'KBUO',
                                  'KBXK',
                                  'KBZN',
                                  'KC29',
                                  'KCAE',
                                  'KCAK',
                                  'KCBE',
                                  'KCCA',
                                  'KCCR',
                                  'KCCU',
                                  'KCDC',
                                  'KCDN',
                                  'KCEC',
                                  'KCEF',
                                  'KCFS',
                                  'KCGC',
                                  'KCGE',
                                  'KCGF',
                                  'KCGS',
                                  'KCHS',
                                  'KCKB',
                                  'KCLT',
                                  'KCMH',
                                  'KCMS',
                                  'KCNI',
                                  'KCNO',
                                  'KCOF',
                                  'KCOQ',
                                  'KCPK',
                                  'KCPS',
                                  'KCQT',
                                  'KCRG',
                                  'KCRQ',
                                  'KCRW',
                                  'KCRX',
                                  'KCSV',
                                  'KCUB',
                                  'KCUH',
                                  'KCVB',
                                  'KCVG',
                                  'KCVH',
                                  'KCVO',
                                  'KCWF',
                                  'KCWI',
                                  'KCWV',
                                  'KCXO',
                                  'KCZZ',
                                  'KD39',
                                  'KDAA',
                                  'KDAL',
                                  'KDAW',
                                  'KDCM',
                                  'KDET',
                                  'KDFW',
                                  'KDKK',
                                  'KDMN',
                                  'KDNL',
                                  'KDOV',
                                  'KDPA',
                                  'KDPL',
                                  'KDRA',
                                  'KDSM',
                                  'KDTN',
                                  'KDTS',
                                  'KDTW',
                                  'KDUJ',
                                  'KDXR',
                                  'KDYB',
                                  'KE16',
                                  'KEBG',
                                  'KEDU',
                                  'KEET',
                                  'KEFD',
                                  'KEIK',
                                  'KEKM',
                                  'KELZ',
                                  'KEOE',
                                  'KERI',
                                  'KESF',
                                  'KEUG',
                                  'KEVM',
                                  'KEVW',
                                  'KEWB',
                                  'KEWR',
                                  'KEYE',
                                  'KF46',
                                  'KF70',
                                  'KFAT',
                                  'KFAY',
                                  'KFBG',
                                  'KFCI',
                                  'KFCS',
                                  'KFFC',
                                  'KFFO',
                                  'KFFX',
                                  'KFFZ',
                                  'KFIG',
                                  'KFKA',
                                  'KFKL',
                                  'KFME',
                                  'KFMH',
                                  'KFNT',
                                  'KFOZ',
                                  'KFPR',
                                  'KFRG',
                                  'KFTK',
                                  'KFTY',
                                  'KFUL',
                                  'KFVX',
                                  'KFWD',
                                  'KFWN',
                                  'KFWS',
                                  'KFYV',
                                  'KFZY',
                                  'KGBN',
                                  'KGEG',
                                  'KGEU',
                                  'KGFK',
                                  'KGGI',
                                  'KGHG',
                                  'KGJT',
                                  'KGNV',
                                  'KGOO',
                                  'KGPI',
                                  'KGRR',
                                  'KGSB',
                                  'KGTU',
                                  'KGYH',
                                  'KGYL',
                                  'KGYY',
                                  'KHAF',
                                  'KHAO',
                                  'KHCD',
                                  'KHEF',
                                  'KHFJ',
                                  'KHGR',
                                  'KHHR',
                                  'KHIE',
                                  'KHIF',
                                  'KHIO',
                                  'KHJO',
                                  'KHKS',
                                  'KHMM',
                                  'KHMZ',
                                  'KHNZ',
                                  'KHPN',
                                  'KHQM',
                                  'KHRO',
                                  'KHRT',
                                  'KHTO',
                                  'KHTS',
                                  'KHVN',
                                  'KHVS',
                                  'KHWD',
                                  'KHWO',
                                  'KHWY',
                                  'KHXD',
                                  'KHYA',
                                  'KHYW',
                                  'KI69',
                                  'KIAG',
                                  'KICT',
                                  'KIGM',
                                  'KIGX',
                                  'KIJD',
                                  'KIKV',
                                  'KILG',
                                  'KILM',
                                  'KIMM',
                                  'KINJ',
                                  'KINT',
                                  'KIRS',
                                  'KISM',
                                  'KISP',
                                  'KITR',
                                  'KIWA',
                                  'KIXA',
                                  'KIYK',
                                  'KJBR',
                                  'KJFK',
                                  'KJFX',
                                  'KJFZ',
                                  'KJGG',
                                  'KJOT',
                                  'KJST',
                                  'KJVL',
                                  'KJYG',
                                  'KJYO',
                                  'KJYR',
                                  'KKLS',
                                  'KL38',
                                  'KLAF',
                                  'KLBE',
                                  'KLBT',
                                  'KLCK',
                                  'KLFI',
                                  'KLGA',
                                  'KLGC',
                                  'KLHZ',
                                  'KLIC',
                                  'KLIT',
                                  'KLKR',
                                  'KLKU',
                                  'KLKV',
                                  'KLMO',
                                  'KLMT',
                                  'KLNL',
                                  'KLNP',
                                  'KLOU',
                                  'KLRF',
                                  'KLRJ',
                                  'KLRO',
                                  'KLUX',
                                  'KLVJ',
                                  'KLVK',
                                  'KLVN',
                                  'KLWM',
                                  'KLXL',
                                  'KLXT',
                                  'KM46',
                                  'KM89',
                                  'KMAE',
                                  'KMAI',
                                  'KMAN',
                                  'KMBS',
                                  'KMCC',
                                  'KMCE',
                                  'KMCF',
                                  'KMEH',
                                  'KMEI',
                                  'KMER',
                                  'KMFR',
                                  'KMGC',
                                  'KMGE',
                                  'KMGJ',
                                  'KMGW',
                                  'KMHR',
                                  'KMHV',
                                  'KMIA',
                                  'KMIC',
                                  'KMIE',
                                  'KMJQ',
                                  'KMJX',
                                  'KMKC',
                                  'KMKL',
                                  'KMLD',
                                  'KMLE',
                                  'KMLJ',
                                  'KMMH',
                                  'KMMK',
                                  'KMPO',
                                  'KMQY',
                                  'KMRB',
                                  'KMRC',
                                  'KMRY',
                                  'KMSO',
                                  'KMSP',
                                  'KMTH',
                                  'KMTV',
                                  'KMUI',
                                  'KMUL',
                                  'KMWO',
                                  'KMWS',
                                  'KMXF',
                                  'KMYF',
                                  'KMYR',
                                  'KN03',
                                  'KNAK',
                                  'KNEW',
                                  'KNFJ',
                                  'KNGU',
                                  'KNID',
                                  'KNKA',
                                  'KNLC',
                                  'KNPA',
                                  'KNRB',
                                  'KNYG',
                                  'KO54',
                                  'KOBE',
                                  'KOCF',
                                  'KOEO',
                                  'KOFF',
                                  'KOGS',
                                  'KOKB',
                                  'KOKC',
                                  'KOKV',
                                  'KOLV',
                                  'KOMH',
                                  'KOMN',
                                  'KONO',
                                  'KONP',
                                  'KOPL',
                                  'KOQT',
                                  'KOTG',
                                  'KOTM',
                                  'KOUN',
                                  'KOVE',
                                  'KOWD',
                                  'KOWP',
                                  'KOXR',
                                  'KP08',
                                  'KPAN',
                                  'KPAO',
                                  'KPCM',
                                  'KPDK',
                                  'KPDT',
                                  'KPDX',
                                  'KPEO',
                                  'KPEX',
                                  'KPEZ',
                                  'KPHL',
                                  'KPIB',
                                  'KPIT',
                                  'KPLU',
                                  'KPNE',
                                  'KPNS',
                                  'KPOU',
                                  'KPQN',
                                  'KPRO',
                                  'KPSP',
                                  'KPTB',
                                  'KPTV',
                                  'KPVD',
                                  'KPVF',
                                  'KPVU',
                                  'KPWA',
                                  'KPWK',
                                  'KPWT',
                                  'KRAL',
                                  'KRBL',
                                  'KRBW',
                                  'KRDD',
                                  'KRDG',
                                  'KRGK',
                                  'KRJD',
                                  'KRMY',
                                  'KRNO',
                                  'KROC',
                                  'KRPJ',
                                  'KRSP',
                                  'KRSW',
                                  'KRTS',
                                  'KRVS',
                                  'KRYT',
                                  'KRYW',
                                  'KRYY',
                                  'KSAC',
                                  'KSAT',
                                  'KSAV',
                                  'KSBN',
                                  'KSCH',
                                  'KSCK',
                                  'KSDB',
                                  'KSDF',
                                  'KSDM',
                                  'KSEE',
                                  'KSFY',
                                  'KSFZ',
                                  'KSGF',
                                  'KSGJ',
                                  'KSGR',
                                  'KSGS',
                                  'KSGU',
                                  'KSHD',
                                  'KSHN',
                                  'KSHV',
                                  'KSJC',
                                  'KSJN',
                                  'KSKF',
                                  'KSLI',
                                  'KSMF',
                                  'KSMO',
                                  'KSMP',
                                  'KSMQ',
                                  'KSMS',
                                  'KSMX',
                                  'KSNA',
                                  'KSNS',
                                  'KSPA',
                                  'KSQL',
                                  'KSRB',
                                  'KSRC',
                                  'KSRQ',
                                  'KSSF',
                                  'KSTP',
                                  'KSUA',
                                  'KT62',
                                  'KTCL',
                                  'KTCM',
                                  'KTEB',
                                  'KTEW',
                                  'KTHA',
                                  'KTIW',
                                  'KTIX',
                                  'KTME',
                                  'KTNU',
                                  'KTOB',
                                  'KTOI',
                                  'KTQE',
                                  'KTRI',
                                  'KTSP',
                                  'KTTA',
                                  'KTTD',
                                  'KTTS',
                                  'KTUL',
                                  'KTVI',
                                  'KTVL',
                                  'KTYQ',
                                  'KTYR',
                                  'KTYS',
                                  'KTZR',
                                  'KU42',
                                  'KUAO',
                                  'KUCP',
                                  'KUKF',
                                  'KUKI',
                                  'KUKT',
                                  'KULM',
                                  'KUZA',
                                  'KVAY',
                                  'KVDF',
                                  'KVPC',
                                  'KVPZ',
                                  'KVSF',
                                  'KVSH',
                                  'KVUO',
                                  'KVVG',
                                  'KW29',
                                  'KWJF',
                                  'KWST',
                                  'KWVI',
                                  'KWYS',
                                  'KXLL',
                                  'KY63',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_8",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K04V',
                                  'K04W',
                                  'K0CO',
                                  'K0VG',
                                  'K14Y',
                                  'K19A',
                                  'K1H2',
                                  'K40J',
                                  'K4BM',
                                  'K4SL',
                                  'K5C1',
                                  'K7R3',
                                  'K9A1',
                                  'K9MN',
                                  'KACQ',
                                  'KACY',
                                  'KADC',
                                  'KAEG',
                                  'KAEL',
                                  'KAEX',
                                  'KAFK',
                                  'KAFW',
                                  'KAGS',
                                  'KAID',
                                  'KAIK',
                                  'KAJO',
                                  'KAKH',
                                  'KAKQ',
                                  'KAMW',
                                  'KANK',
                                  'KAPF',
                                  'KAPG',
                                  'KAQW',
                                  'KART',
                                  'KARW',
                                  'KASJ',
                                  'KASL',
                                  'KATW',
                                  'KAUD',
                                  'KAVC',
                                  'KAVL',
                                  'KAWG',
                                  'KAWM',
                                  'KAWO',
                                  'KAXH',
                                  'KBAB',
                                  'KBAK',
                                  'KBAZ',
                                  'KBBB',
                                  'KBCT',
                                  'KBDL',
                                  'KBEH',
                                  'KBFD',
                                  'KBFI',
                                  'KBFL',
                                  'KBFM',
                                  'KBGF',
                                  'KBHM',
                                  'KBJI',
                                  'KBJJ',
                                  'KBKF',
                                  'KBKW',
                                  'KBLI',
                                  'KBLM',
                                  'KBMG',
                                  'KBML',
                                  'KBNA',
                                  'KBNO',
                                  'KBQK',
                                  'KBTA',
                                  'KBTM',
                                  'KBTP',
                                  'KBUF',
                                  'KBUR',
                                  'KBXK',
                                  'KBYH',
                                  'KC09',
                                  'KC29',
                                  'KCCR',
                                  'KCCU',
                                  'KCDW',
                                  'KCEW',
                                  'KCFE',
                                  'KCGC',
                                  'KCGE',
                                  'KCGF',
                                  'KCGZ',
                                  'KCHO',
                                  'KCID',
                                  'KCJR',
                                  'KCKB',
                                  'KCLS',
                                  'KCLT',
                                  'KCMH',
                                  'KCMS',
                                  'KCNI',
                                  'KCOE',
                                  'KCOS',
                                  'KCOU',
                                  'KCPS',
                                  'KCQW',
                                  'KCRG',
                                  'KCRQ',
                                  'KCUB',
                                  'KCVB',
                                  'KCVG',
                                  'KCVH',
                                  'KCVO',
                                  'KCWF',
                                  'KCXP',
                                  'KCXY',
                                  'KD39',
                                  'KDAA',
                                  'KDAB',
                                  'KDAN',
                                  'KDCU',
                                  'KDDH',
                                  'KDHN',
                                  'KDLS',
                                  'KDLZ',
                                  'KDMH',
                                  'KDOV',
                                  'KDPA',
                                  'KDSM',
                                  'KDTL',
                                  'KDTS',
                                  'KDUH',
                                  'KDVN',
                                  'KDVO',
                                  'KDVT',
                                  'KDYB',
                                  'KE16',
                                  'KEBG',
                                  'KEDU',
                                  'KEFD',
                                  'KEIK',
                                  'KEKA',
                                  'KEKM',
                                  'KELM',
                                  'KELO',
                                  'KEMT',
                                  'KEMV',
                                  'KEOE',
                                  'KEQY',
                                  'KETB',
                                  'KEUG',
                                  'KEVB',
                                  'KEVM',
                                  'KEVW',
                                  'KEWB',
                                  'KEZF',
                                  'KEZM',
                                  'KF70',
                                  'KFAF',
                                  'KFAR',
                                  'KFAY',
                                  'KFBG',
                                  'KFCI',
                                  'KFCM',
                                  'KFCS',
                                  'KFDW',
                                  'KFFZ',
                                  'KFHB',
                                  'KFIT',
                                  'KFKA',
                                  'KFKL',
                                  'KFKN',
                                  'KFLO',
                                  'KFMY',
                                  'KFPR',
                                  'KFRG',
                                  'KFSE',
                                  'KFSM',
                                  'KFTW',
                                  'KFTY',
                                  'KFUL',
                                  'KFWN',
                                  'KFWS',
                                  'KFXE',
                                  'KFYG',
                                  'KFYJ',
                                  'KFYV',
                                  'KFZY',
                                  'KGAD',
                                  'KGBN',
                                  'KGDB',
                                  'KGEG',
                                  'KGEU',
                                  'KGFA',
                                  'KGFL',
                                  'KGGI',
                                  'KGHG',
                                  'KGJT',
                                  'KGON',
                                  'KGPI',
                                  'KGPM',
                                  'KGPT',
                                  'KGRB',
                                  'KGRD',
                                  'KGTU',
                                  'KGVL',
                                  'KGWO',
                                  'KGYL',
                                  'KGYR',
                                  'KHAF',
                                  'KHAO',
                                  'KHBI',
                                  'KHCD',
                                  'KHEY',
                                  'KHFJ',
                                  'KHHR',
                                  'KHIE',
                                  'KHIF',
                                  'KHIO',
                                  'KHKS',
                                  'KHMM',
                                  'KHMZ',
                                  'KHPN',
                                  'KHRO',
                                  'KHSP',
                                  'KHTO',
                                  'KHVN',
                                  'KI69',
                                  'KIGQ',
                                  'KIGX',
                                  'KIJD',
                                  'KIKK',
                                  'KIKV',
                                  'KILM',
                                  'KINJ',
                                  'KIPT',
                                  'KIRS',
                                  'KISM',
                                  'KISP',
                                  'KITR',
                                  'KIWA',
                                  'KIYK',
                                  'KIZA',
                                  'KJBR',
                                  'KJFK',
                                  'KJXN',
                                  'KJYL',
                                  'KJYO',
                                  'KKLS',
                                  'KL35',
                                  'KL38',
                                  'KLAN',
                                  'KLAX',
                                  'KLBB',
                                  'KLBE',
                                  'KLBT',
                                  'KLCK',
                                  'KLDJ',
                                  'KLEX',
                                  'KLFT',
                                  'KLGB',
                                  'KLGD',
                                  'KLHM',
                                  'KLHZ',
                                  'KLIT',
                                  'KLJF',
                                  'KLKR',
                                  'KLLQ',
                                  'KLNK',
                                  'KLNP',
                                  'KLNS',
                                  'KLOT',
                                  'KLOU',
                                  'KLRU',
                                  'KLUA',
                                  'KLUK',
                                  'KLUX',
                                  'KLWM',
                                  'KLXT',
                                  'KLZU',
                                  'KM46',
                                  'KM89',
                                  'KMBS',
                                  'KMCE',
                                  'KMCF',
                                  'KMCJ',
                                  'KMDQ',
                                  'KMEB',
                                  'KMFR',
                                  'KMGC',
                                  'KMGE',
                                  'KMGJ',
                                  'KMGM',
                                  'KMGY',
                                  'KMHR',
                                  'KMHT',
                                  'KMHV',
                                  'KMIA',
                                  'KMIC',
                                  'KMIE',
                                  'KMIV',
                                  'KMKC',
                                  'KMKE',
                                  'KMKG',
                                  'KMKJ',
                                  'KMKL',
                                  'KMLB',
                                  'KMLD',
                                  'KMLE',
                                  'KMMU',
                                  'KMMV',
                                  'KMNH',
                                  'KMNI',
                                  'KMOB',
                                  'KMPO',
                                  'KMQJ',
                                  'KMQS',
                                  'KMRB',
                                  'KMRN',
                                  'KMRT',
                                  'KMRY',
                                  'KMSN',
                                  'KMTC',
                                  'KMTH',
                                  'KMTN',
                                  'KMUI',
                                  'KMUL',
                                  'KMWC',
                                  'KMWM',
                                  'KMWO',
                                  'KMZH',
                                  'KNAK',
                                  'KNGU',
                                  'KNIP',
                                  'KNKA',
                                  'KNKX',
                                  'KNLC',
                                  'KNPA',
                                  'KNQA',
                                  'KNTU',
                                  'KNUQ',
                                  'KNYC',
                                  'KO22',
                                  'KO69',
                                  'KO86',
                                  'KOAK',
                                  'KOEO',
                                  'KOFP',
                                  'KOGB',
                                  'KOGS',
                                  'KOJC',
                                  'KOKB',
                                  'KOKV',
                                  'KOLV',
                                  'KOMN',
                                  'KONO',
                                  'KONP',
                                  'KONT',
                                  'KOPL',
                                  'KOPN',
                                  'KORD',
                                  'KORF',
                                  'KORH',
                                  'KOSH',
                                  'KOVE',
                                  'KOWA',
                                  'KOXB',
                                  'KOXC',
                                  'KOXR',
                                  'KP08',
                                  'KPAN',
                                  'KPAO',
                                  'KPCM',
                                  'KPDT',
                                  'KPDX',
                                  'KPEX',
                                  'KPGA',
                                  'KPGD',
                                  'KPHX',
                                  'KPIE',
                                  'KPIT',
                                  'KPLU',
                                  'KPNE',
                                  'KPNM',
                                  'KPOC',
                                  'KPOU',
                                  'KPQL',
                                  'KPQN',
                                  'KPRN',
                                  'KPRO',
                                  'KPSF',
                                  'KPSP',
                                  'KPTB',
                                  'KPTK',
                                  'KPTV',
                                  'KPUC',
                                  'KPVD',
                                  'KPVG',
                                  'KPVU',
                                  'KPWT',
                                  'KPYM',
                                  'KRAC',
                                  'KRBG',
                                  'KRBL',
                                  'KRDG',
                                  'KRDU',
                                  'KRGK',
                                  'KRIC',
                                  'KRIV',
                                  'KRME',
                                  'KRMY',
                                  'KRNO',
                                  'KRNT',
                                  'KROA',
                                  'KRTS',
                                  'KRUQ',
                                  'KRVS',
                                  'KRWI',
                                  'KRXE',
                                  'KRYN',
                                  'KRYW',
                                  'KSAC',
                                  'KSAD',
                                  'KSAV',
                                  'KSAZ',
                                  'KSBA',
                                  'KSBN',
                                  'KSBP',
                                  'KSCH',
                                  'KSCK',
                                  'KSDF',
                                  'KSDL',
                                  'KSEE',
                                  'KSEG',
                                  'KSFB',
                                  'KSFF',
                                  'KSFO',
                                  'KSFQ',
                                  'KSFY',
                                  'KSGF',
                                  'KSGH',
                                  'KSGR',
                                  'KSHD',
                                  'KSHN',
                                  'KSIY',
                                  'KSJC',
                                  'KSLC',
                                  'KSLI',
                                  'KSMF',
                                  'KSMO',
                                  'KSMQ',
                                  'KSMS',
                                  'KSMX',
                                  'KSNS',
                                  'KSPA',
                                  'KSPB',
                                  'KSPG',
                                  'KSPI',
                                  'KSPS',
                                  'KSQL',
                                  'KSRB',
                                  'KSRC',
                                  'KSSC',
                                  'KSSF',
                                  'KSTJ',
                                  'KSTP',
                                  'KSTS',
                                  'KSUS',
                                  'KSUU',
                                  'KSWF',
                                  'KSXT',
                                  'KSYR',
                                  'KT62',
                                  'KTAN',
                                  'KTCL',
                                  'KTCM',
                                  'KTDO',
                                  'KTEB',
                                  'KTEW',
                                  'KTHA',
                                  'KTKI',
                                  'KTOC',
                                  'KTPA',
                                  'KTRI',
                                  'KTRK',
                                  'KTTD',
                                  'KTTF',
                                  'KTTS',
                                  'KTVI',
                                  'KTVK',
                                  'KTXK',
                                  'KTYQ',
                                  'KTZR',
                                  'KU42',
                                  'KUDG',
                                  'KUES',
                                  'KUGN',
                                  'KUKI',
                                  'KUZA',
                                  'KVAY',
                                  'KVBT',
                                  'KVCV',
                                  'KVES',
                                  'KVKS',
                                  'KVLD',
                                  'KVLL',
                                  'KVNC',
                                  'KVPC',
                                  'KVSH',
                                  'KVTA',
                                  'KW29',
                                  'KWBC',
                                  'KWJF',
                                  'KWYS',
                                  'KXLL',
                                  'KY51',
                                  'KZZV'
                                ) THEN 1
                                ELSE 0
                              END AS "Airport_Code_9",
                              CASE
                                WHEN "Airport_Code" in (
                                  'K04V',
                                  'K04W',
                                  'K0CO',
                                  'K12N',
                                  'K1II',
                                  'K20U',
                                  'K2J9',
                                  'K3TH',
                                  'K40J',
                                  'K4A9',
                                  'K4BM',
                                  'K5SM',
                                  'K9MN',
                                  'KABE',
                                  'KABQ',
                                  'KABY',
                                  'KACY',
                                  'KADC',
                                  'KADS',
                                  'KADW',
                                  'KAEG',
                                  'KAEL',
                                  'KAFN',
                                  'KAFW',
                                  'KAGC',
                                  'KAIK',
                                  'KAKH',
                                  'KAKQ',
                                  'KALB',
                                  'KANE',
                                  'KAPA',
                                  'KAQW',
                                  'KARB',
                                  'KART',
                                  'KASG',
                                  'KASJ',
                                  'KASL',
                                  'KAST',
                                  'KAUD',
                                  'KAUM',
                                  'KAUO',
                                  'KAUS',
                                  'KAVP',
                                  'KAWG',
                                  'KAWM',
                                  'KAWN',
                                  'KAXN',
                                  'KAZO',
                                  'KBAB',
                                  'KBBB',
                                  'KBDH',
                                  'KBDR',
                                  'KBDU',
                                  'KBFI',
                                  'KBIF',
                                  'KBIL',
                                  'KBIV',
                                  'KBKE',
                                  'KBKF',
                                  'KBKL',
                                  'KBLH',
                                  'KBMG',
                                  'KBML',
                                  'KBMQ',
                                  'KBNA',
                                  'KBOW',
                                  'KBQK',
                                  'KBTP',
                                  'KBUF',
                                  'KBUO',
                                  'KBUR',
                                  'KBVS',
                                  'KBWP',
                                  'KBZN',
                                  'KC09',
                                  'KCAE',
                                  'KCAK',
                                  'KCBE',
                                  'KCCR',
                                  'KCCU',
                                  'KCDN',
                                  'KCEC',
                                  'KCEF',
                                  'KCFS',
                                  'KCGC',
                                  'KCGE',
                                  'KCGF',
                                  'KCGZ',
                                  'KCHA',
                                  'KCHJ',
                                  'KCHO',
                                  'KCIC',
                                  'KCID',
                                  'KCMA',
                                  'KCMH',
                                  'KCMS',
                                  'KCOF',
                                  'KCOS',
                                  'KCPK',
                                  'KCPS',
                                  'KCQT',
                                  'KCQW',
                                  'KCRE',
                                  'KCRG',
                                  'KCRQ',
                                  'KCRW',
                                  'KCRX',
                                  'KCTZ',
                                  'KCVO',
                                  'KCWC',
                                  'KCWI',
                                  'KCWV',
                                  'KCZK',
                                  'KCZZ',
                                  'KDAA',
                                  'KDAB',
                                  'KDAG',
                                  'KDAL',
                                  'KDAY',
                                  'KDCA',
                                  'KDCM',
                                  'KDCU',
                                  'KDDH',
                                  'KDFW',
                                  'KDLZ',
                                  'KDMH',
                                  'KDMW',
                                  'KDNL',
                                  'KDOV',
                                  'KDTL',
                                  'KDTS',
                                  'KDTW',
                                  'KDVN',
                                  'KEAU',
                                  'KEDC',
                                  'KEDU',
                                  'KEFD',
                                  'KEGE',
                                  'KEIK',
                                  'KEKA',
                                  'KEKM',
                                  'KEKO',
                                  'KELO',
                                  'KELP',
                                  'KELZ',
                                  'KEMT',
                                  'KEMV',
                                  'KERI',
                                  'KESF',
                                  'KEUL',
                                  'KEVB',
                                  'KEVW',
                                  'KEYE',
                                  'KFAR',
                                  'KFAY',
                                  'KFBG',
                                  'KFBL',
                                  'KFCS',
                                  'KFDK',
                                  'KFDW',
                                  'KFFC',
                                  'KFFX',
                                  'KFFZ',
                                  'KFHB',
                                  'KFIG',
                                  'KFKA',
                                  'KFKL',
                                  'KFKN',
                                  'KFME',
                                  'KFMH',
                                  'KFMY',
                                  'KFNT',
                                  'KFOT',
                                  'KFPR',
                                  'KFQD',
                                  'KFRG',
                                  'KFSE',
                                  'KFTK',
                                  'KFUL',
                                  'KFWN',
                                  'KFWS',
                                  'KFYG',
                                  'KFYJ',
                                  'KGBN',
                                  'KGDB',
                                  'KGDJ',
                                  'KGDP',
                                  'KGEG',
                                  'KGFA',
                                  'KGFK',
                                  'KGFL',
                                  'KGJT',
                                  'KGKY',
                                  'KGON',
                                  'KGPI',
                                  'KGRF',
                                  'KGRR',
                                  'KGSB',
                                  'KGSO',
                                  'KGSP',
                                  'KGVL',
                                  'KGWB',
                                  'KGWO',
                                  'KGYH',
                                  'KGYL',
                                  'KGYR',
                                  'KH21',
                                  'KHAO',
                                  'KHBG',
                                  'KHBI',
                                  'KHEF',
                                  'KHFD',
                                  'KHIB',
                                  'KHIE',
                                  'KHIF',
                                  'KHJO',
                                  'KHLN',
                                  'KHLX',
                                  'KHMM',
                                  'KHOT',
                                  'KHOU',
                                  'KHQM',
                                  'KHRO',
                                  'KHSP',
                                  'KHST',
                                  'KHTO',
                                  'KHTS',
                                  'KHUF',
                                  'KHVN',
                                  'KHYA',
                                  'KICT',
                                  'KIGM',
                                  'KIJD',
                                  'KIMM',
                                  'KIND',
                                  'KINJ',
                                  'KINT',
                                  'KISP',
                                  'KIYK',
                                  'KIZA',
                                  'KJBR',
                                  'KJFZ',
                                  'KJMS',
                                  'KJOT',
                                  'KJRB',
                                  'KJVL',
                                  'KJYL',
                                  'KJYO',
                                  'KJYR',
                                  'KJZI',
                                  'KKLS',
                                  'KLAF',
                                  'KLAN',
                                  'KLBB',
                                  'KLCK',
                                  'KLFI',
                                  'KLGB',
                                  'KLGD',
                                  'KLHM',
                                  'KLJF',
                                  'KLKU',
                                  'KLLQ',
                                  'KLMT',
                                  'KLNK',
                                  'KLNS',
                                  'KLOT',
                                  'KLRO',
                                  'KLUA',
                                  'KLUM',
                                  'KLUX',
                                  'KLVN',
                                  'KLXL',
                                  'KLXT',
                                  'KLZU',
                                  'KM16',
                                  'KM46',
                                  'KM89',
                                  'KMAN',
                                  'KMAO',
                                  'KMBS',
                                  'KMCI',
                                  'KMCJ',
                                  'KMCN',
                                  'KMCO',
                                  'KMDQ',
                                  'KMDT',
                                  'KMEH',
                                  'KMEM',
                                  'KMER',
                                  'KMFI',
                                  'KMGC',
                                  'KMGG',
                                  'KMGM',
                                  'KMHT',
                                  'KMIC',
                                  'KMIE',
                                  'KMIV',
                                  'KMJX',
                                  'KMKC',
                                  'KMKG',
                                  'KMKJ',
                                  'KMLD',
                                  'KMLU',
                                  'KMNH',
                                  'KMOD',
                                  'KMQJ',
                                  'KMSO',
                                  'KMTN',
                                  'KMUI',
                                  'KMWC',
                                  'KMWK',
                                  'KMWL',
                                  'KMWO',
                                  'KMWS',
                                  'KMXF',
                                  'KMYF',
                                  'KMYV',
                                  'KNCA',
                                  'KNEW',
                                  'KNFG',
                                  'KNFJ',
                                  'KNFW',
                                  'KNGU',
                                  'KNID',
                                  'KNJK',
                                  'KNKA',
                                  'KNKX',
                                  'KNLC',
                                  'KNQA',
                                  'KNRS',
                                  'KNSE',
                                  'KNUQ',
                                  'KNYG',
                                  'KO54',
                                  'KO69',
                                  'KO86',
                                  'KO87',
                                  'KOAK',
                                  'KOBE',
                                  'KOEO',
                                  'KOFF',
                                  'KOGB',
                                  'KOGD',
                                  'KOKB',
                                  'KOLM',
                                  'KOMA',
                                  'KONX',
                                  'KOPF',
                                  'KORC',
                                  'KORD',
                                  'KORH',
                                  'KORL',
                                  'KOSH',
                                  'KOSU',
                                  'KOTH',
                                  'KOVE',
                                  'KOWA',
                                  'KOWD',
                                  'KOWP',
                                  'KOXB',
                                  'KOXC',
                                  'KOZW',
                                  'KPAN',
                                  'KPAO',
                                  'KPBI',
                                  'KPDT',
                                  'KPEX',
                                  'KPEZ',
                                  'KPGD',
                                  'KPHF',
                                  'KPHL',
                                  'KPHX',
                                  'KPIA',
                                  'KPIB',
                                  'KPIT',
                                  'KPNE',
                                  'KPNM',
                                  'KPNS',
                                  'KPOU',
                                  'KPQL',
                                  'KPQN',
                                  'KPRN',
                                  'KPRO',
                                  'KPSP',
                                  'KPTB',
                                  'KPTW',
                                  'KPUJ',
                                  'KPVG',
                                  'KPVU',
                                  'KPWA',
                                  'KPWM',
                                  'KRAC',
                                  'KRAL',
                                  'KRBL',
                                  'KRCE',
                                  'KRDD',
                                  'KRDM',
                                  'KRDU',
                                  'KRGK',
                                  'KRHV',
                                  'KRIV',
                                  'KRJD',
                                  'KRME',
                                  'KRMN',
                                  'KRMY',
                                  'KRNO',
                                  'KRNT',
                                  'KRSP',
                                  'KRTS',
                                  'KRVS',
                                  'KRYN',
                                  'KRYT',
                                  'KRYW',
                                  'KRYY',
                                  'KRZL',
                                  'KSAN',
                                  'KSAT',
                                  'KSBA',
                                  'KSBN',
                                  'KSBP',
                                  'KSBY',
                                  'KSCH',
                                  'KSCK',
                                  'KSDB',
                                  'KSDF',
                                  'KSDL',
                                  'KSEA',
                                  'KSEZ',
                                  'KSFB',
                                  'KSFF',
                                  'KSFM',
                                  'KSFY',
                                  'KSFZ',
                                  'KSGJ',
                                  'KSGR',
                                  'KSGS',
                                  'KSGT',
                                  'KSGU',
                                  'KSHD',
                                  'KSJC',
                                  'KSJN',
                                  'KSKF',
                                  'KSLC',
                                  'KSLI',
                                  'KSMO',
                                  'KSMX',
                                  'KSNS',
                                  'KSQL',
                                  'KSRB',
                                  'KSRQ',
                                  'KSSF',
                                  'KSSI',
                                  'KSTC',
                                  'KSTJ',
                                  'KSTS',
                                  'KSUA',
                                  'KSUU',
                                  'KSUX',
                                  'KSVH',
                                  'KSVN',
                                  'KSYN',
                                  'KSYR',
                                  'KT62',
                                  'KTAN',
                                  'KTCL',
                                  'KTCM',
                                  'KTEW',
                                  'KTHA',
                                  'KTKI',
                                  'KTNU',
                                  'KTOB',
                                  'KTOC',
                                  'KTOL',
                                  'KTPF',
                                  'KTQE',
                                  'KTRI',
                                  'KTRL',
                                  'KTSP',
                                  'KTTF',
                                  'KTTN',
                                  'KTTS',
                                  'KTUL',
                                  'KTVI',
                                  'KTVK',
                                  'KTVL',
                                  'KTXK',
                                  'KTYQ',
                                  'KTYS',
                                  'KU24',
                                  'KUDG',
                                  'KUKT',
                                  'KUZA',
                                  'KVAY',
                                  'KVCV',
                                  'KVES',
                                  'KVIS',
                                  'KVKS',
                                  'KVLD',
                                  'KVLL',
                                  'KVNY',
                                  'KVPZ',
                                  'KVQQ',
                                  'KVSF',
                                  'KVVG',
                                  'KWHP',
                                  'KWJF',
                                  'KWVI',
                                  'KWYS',
                                  'KXLL',
                                  'KY23',
                                  'KY51',
                                  'KZPH'
                                ) THEN 0
                                ELSE 1
                              END AS "Airport_Code_10",
                              "Zipcode",
                              "Timezone",
                              "Country",
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
                                  split_line("Description") AS "Description",
                                  "Airport_Code",
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
                                      "Airport_Code",
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
              ) AS data
          ) AS data
      ) AS F
  ) AS F