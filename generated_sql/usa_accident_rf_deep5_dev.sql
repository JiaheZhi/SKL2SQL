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
            WHEN "Timezone_3" <= 0.5 THEN CASE
              WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                WHEN "Source" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 2.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24237.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24197.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 26.118425369262695 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_1" <= 0.8936021625995636 THEN CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 0.0
                          ELSE 1.0
                        END
                        ELSE 1.0
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24242.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 26.088375091552734 THEN 1.0
                          ELSE 0.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 0.5489864945411682 THEN CASE
                      WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24237.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 66.04269745554808 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 29.904720306396484 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                        WHEN "Timezone_2" <= 24.645977020263672 THEN CASE
                          WHEN "Zipcode" <= 150.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 77.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24245.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 20.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                    WHEN "Zipcode" <= 5.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24223.5 THEN CASE
                        WHEN "Timezone_0" <= 2.839211344718933 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 4.987090587615967 THEN CASE
                          WHEN "Pressure(in)" <= 0.4413851350545883 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_1" <= 3.2474809885025024 THEN CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 151.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 7.5 THEN CASE
                      WHEN "Zipcode" <= 3.5 THEN CASE
                        WHEN "Zipcode" <= 1.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Description" <= 6.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 5.409278154373169 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 29.564154624938965 THEN CASE
                        WHEN "Timezone_1" <= 2.2013126611709595 THEN CASE
                          WHEN time_months("Start_Time") <= 24243.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 2.4192644357681274 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 1322.0 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 3.9885170459747314 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Source" <= 0.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN CASE
                    WHEN "Country_0" <= 0.5 THEN CASE
                      WHEN "Timezone_0" <= 4.08994197845459 THEN CASE
                        WHEN "Timezone_2" <= 29.834604263305664 THEN CASE
                          WHEN "Zipcode" <= 47.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.4679054021835327 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24269.5 THEN CASE
                          WHEN "Timezone_2" <= 29.774503707885742 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 34.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 16.5 THEN CASE
                          WHEN "Pressure(in)" <= 0.39020270109176636 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.9763087332248688 THEN CASE
                      WHEN "Zipcode" <= 17.5 THEN CASE
                        WHEN "Timezone_1" <= 1.6128429174423218 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN bad_count("Weather_Condition") <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 28.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 0.5523648858070374 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 23.82461166381836 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 10.5 THEN CASE
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Zipcode" <= 2.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24249.5 THEN CASE
                          WHEN "Timezone_1" <= 0.8936021327972412 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 26.679357528686523 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 65.71497090694359 THEN CASE
                          WHEN "Timezone_2" <= 26.46399974822998 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 1.2929494380950928 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 1547.0 THEN CASE
                        WHEN time_months("Start_Time") <= 24277.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.4611486494541168 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 1560.5 THEN CASE
                          WHEN "Timezone_2" <= 29.383854866027832 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24249.5 THEN CASE
                      WHEN "Description" <= 13.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.525337815284729 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.6756503880023956 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 0.3705179691314697 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 55.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Timezone_1" <= 3.160300374031067 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 14.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 36.5 THEN 1.0
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
                WHEN "Zipcode" <= 49.5 THEN CASE
                  WHEN "Pressure(in)" <= 0.5489864945411682 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.5456081032752991 THEN CASE
                          WHEN "Pressure(in)" <= 0.4949324280023575 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 0.3599662184715271 THEN CASE
                          WHEN "Timezone_0" <= 1.5225138664245605 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24259.5 THEN CASE
                          WHEN "Zipcode" <= 5.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 3.9580084085464478 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN bad_count("Weather_Condition") <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 29.92475414276123 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 29.95981216430664 THEN 1.0
                          ELSE 0.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 9.5 THEN CASE
                        WHEN "Timezone_3" <= 1.5 THEN CASE
                          WHEN "Timezone_1" <= 3.2038906812667847 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24268.0 THEN CASE
                        WHEN "Timezone_2" <= 24.014927864074707 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24266.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 1.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5666745454072952 THEN 0.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 789.5 THEN CASE
                    WHEN "Description" <= 8.5 THEN CASE
                      WHEN "Description" <= 7.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.5489864945411682 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_2" <= 29.914737701416016 THEN CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 29.704387664794922 THEN CASE
                        WHEN "Zipcode" <= 162.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 1.6333381533622742 THEN CASE
                          WHEN time_months("Start_Time") <= 24223.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24230.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 852.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 0.3417229652404785 THEN CASE
                          WHEN "Timezone_2" <= 30.63092803955078 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 1770.0 THEN CASE
                        WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 29.614237785339355 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 1387.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 11.5 THEN CASE
                  WHEN "Description" <= 15.5 THEN CASE
                    WHEN "Description" <= 13.5 THEN CASE
                      WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                        WHEN "Timezone_1" <= 3.770565152168274 THEN CASE
                          WHEN "Timezone_3" <= 1.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 2.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 5.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 5.095276117324829 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Country_0" <= 0.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24228.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24209.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 4.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 17.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 30.425586700439453 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 29.52408790588379 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Timezone_1" <= 3.944926619529724 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 1.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Source" <= 0.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24225.5 THEN CASE
                      WHEN "Zipcode" <= 67.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 68.33678332248616 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 67.27167204085691 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 373.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24210.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24206.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN bad_count("Weather_Condition") <= 0.5 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Timezone_1" <= 3.0295292139053345 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 17.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24231.5 THEN CASE
                          WHEN "Timezone_1" <= 2.462854743003845 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 500.5 THEN CASE
                      WHEN "Zipcode" <= 457.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.5456081032752991 THEN CASE
                          WHEN "Pressure(in)" <= 0.445777028799057 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 29.393871307373047 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_7" <= 0.5 THEN CASE
                        WHEN "Timezone_2" <= 29.634270668029785 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24223.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 570.0 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
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
              END
            END
          END AS tree_0,
          CASE
            WHEN "Description" <= 11.5 THEN CASE
              WHEN "Zipcode" <= 48.5 THEN CASE
                WHEN "Timezone_2" <= 29.514070510864258 THEN CASE
                  WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 27.76115608215332 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 2.063441753387451 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24248.0 THEN CASE
                          WHEN "Pressure(in)" <= 0.3837837874889374 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 66.04269745554808 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Zipcode" <= 17.5 THEN CASE
                          WHEN "Timezone_0" <= 3.4276353120803833 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24268.5 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 3.4038872718811035 THEN 1.0
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
                    WHEN "Zipcode" <= 1.5 THEN CASE
                      WHEN "Description" <= 6.5 THEN CASE
                        WHEN "Timezone_1" <= 1.0679635405540466 THEN CASE
                          WHEN "Humidity(%)" <= 67.02587714943355 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 28.67768096923828 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 25.176859855651855 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_0" <= 3.5094341039657593 THEN CASE
                        WHEN "Pressure(in)" <= 0.4746621549129486 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 0.6596680581569672 THEN 3.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 0.8064214587211609 THEN CASE
                          WHEN "Description" <= 6.5 THEN 0.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24246.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN CASE
                    WHEN "Description" <= 8.5 THEN CASE
                      WHEN "Source" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24246.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 18.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 3.5 THEN CASE
                          WHEN "Timezone_2" <= 30.064987182617188 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5012889951467514 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24248.0 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                      WHEN "Country_0" <= 0.5 THEN CASE
                        WHEN "Timezone_0" <= 1.3984963297843933 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 0.5778692066669464 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Zipcode" <= 10.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24271.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 65.71497090694359 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Country_0" <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 0.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Source" <= 0.5 THEN CASE
                  WHEN "Timezone_1" <= 0.6756503880023956 THEN CASE
                    WHEN "Pressure(in)" <= 0.5489864945411682 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24245.5 THEN CASE
                          WHEN "Zipcode" <= 1233.0 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 1290.5 THEN CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 25.687708854675293 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                        ELSE CASE
                          WHEN bad_count("Weather_Condition") <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Timezone_2" <= 24.796226501464844 THEN CASE
                          WHEN "Humidity(%)" <= 67.51746693228027 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 148.5 THEN CASE
                          WHEN "Timezone_0" <= 1.5884807109832764 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24248.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                        WHEN "Zipcode" <= 982.5 THEN CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5489864945411682 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 2.7679871320724487 THEN CASE
                          WHEN "Country_0" <= 0.5 THEN 0.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 1.5 THEN 0.0
                          ELSE 0.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 0.5456081032752991 THEN CASE
                    WHEN "Zipcode" <= 503.5 THEN CASE
                      WHEN "Timezone_0" <= 2.4645198583602905 THEN CASE
                        WHEN time_months("Start_Time") <= 24226.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 29.40388774871826 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 1.939770519733429 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24236.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 7.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.45236486196517944 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 2.1141319274902344 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24246.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 29.65430450439453 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 2.332083582878113 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24234.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24225.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 4.08994197845459 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 615.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Pressure(in)" <= 0.5489864945411682 THEN CASE
                        WHEN "Zipcode" <= 568.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 29.72442054748535 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Description" <= 17.5 THEN CASE
                WHEN "Timezone_2" <= 29.904720306396484 THEN CASE
                  WHEN "Timezone_2" <= 28.812905311584473 THEN CASE
                    WHEN "Pressure(in)" <= 0.4679054021835327 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 58.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 19.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Description" <= 12.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                          WHEN "Source" <= 0.5 THEN 1.0
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
                    WHEN "Description" <= 12.5 THEN CASE
                      WHEN "Zipcode" <= 42.5 THEN CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 5.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5456081032752991 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 29.5 THEN CASE
                          WHEN "Zipcode" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24247.5 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24232.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 0.5489864945411682 THEN CASE
                    WHEN "Zipcode" <= 37.5 THEN CASE
                      WHEN time_months("Start_Time") <= 24249.5 THEN CASE
                        WHEN "Source" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 24.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24230.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24272.5 THEN CASE
                          WHEN "Timezone_1" <= 3.29107129573822 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5084459483623505 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                      WHEN "Zipcode" <= 14.5 THEN CASE
                        WHEN "Timezone_2" <= 30.19520378112793 THEN CASE
                          WHEN "Description" <= 12.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 16.5 THEN 1.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 66.53428728112547 THEN 2.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 13.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24261.5 THEN CASE
                        WHEN "Zipcode" <= 99.5 THEN CASE
                          WHEN "Zipcode" <= 15.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                  WHEN "Country_0" <= 0.5 THEN CASE
                    WHEN "Timezone_3" <= 0.5 THEN CASE
                      WHEN "Timezone_0" <= 2.137324571609497 THEN CASE
                        WHEN "Timezone_2" <= 27.07000732421875 THEN CASE
                          WHEN "Timezone_2" <= 26.76950740814209 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 1.5038670301437378 THEN 2.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24236.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Source" <= 0.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                        WHEN "Source" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 23.413928985595703 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5726351141929626 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 3.902596354484558 THEN CASE
                          WHEN "Zipcode" <= 21.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24225.5 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Timezone_2" <= 30.014904022216797 THEN 3.0
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 19.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 28.12676429748535 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 26.829607009887695 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 4.315444707870483 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN CASE
                    WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                      WHEN "Source" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 3.8788483142852783 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 2.2956448793411255 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 31.5 THEN CASE
                        WHEN "Zipcode" <= 4.5 THEN CASE
                          WHEN "Pressure(in)" <= 0.5523648858070374 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 97.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
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
                    WHEN "Zipcode" <= 5.5 THEN CASE
                      WHEN "Country_0" <= 0.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 3.034473180770874 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.33952702581882477 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 1.700023591518402 THEN CASE
                          WHEN "Description" <= 18.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 1.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24259.5 THEN CASE
                          WHEN "Description" <= 20.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24262.5 THEN CASE
                          WHEN "Timezone_2" <= 29.093371391296387 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Timezone_3" <= 0.5 THEN CASE
              WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN "Source" <= 0.5 THEN CASE
                      WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24220.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_6" <= 0.5 THEN CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Description" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 1.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24199.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 14.5 THEN CASE
                      WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Description" <= 5.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 3.0
                          ELSE 3.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source" <= 0.5 THEN CASE
                        WHEN "Timezone_2" <= 29.55413818359375 THEN CASE
                          WHEN bad_count("Weather_Condition") <= 1.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 1.8840120434761047 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24226.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
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
                ELSE CASE
                  WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 626.5 THEN CASE
                      WHEN "Source" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                          WHEN "Timezone_2" <= 25.076693534851074 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 0.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_2" <= 29.934770584106445 THEN CASE
                          WHEN time_months("Start_Time") <= 24243.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 24.95148468017578 THEN CASE
                        WHEN bad_count("Weather_Condition") <= 1.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24242.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 66.32945820761002 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24241.5 THEN CASE
                          WHEN "Zipcode" <= 19.5 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24241.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5760135054588318 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 4.5 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 2.855167865753174 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
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
                WHEN "Description" <= 35.5 THEN CASE
                  WHEN "Description" <= 10.5 THEN CASE
                    WHEN "Zipcode" <= 302.5 THEN CASE
                      WHEN "Description" <= 7.5 THEN CASE
                        WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 65.53062472635807 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 4.075697660446167 THEN CASE
                          WHEN "Timezone_2" <= 29.734437942504883 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 67.02587714943355 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_0" <= 2.2428715229034424 THEN CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 0.44087837636470795 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 813.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 0.5422297120094299 THEN CASE
                          WHEN "Timezone_2" <= 30.545785903930664 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_2" <= 29.714404106140137 THEN CASE
                      WHEN "Timezone_0" <= 2.2428715229034424 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Description" <= 13.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 118.5 THEN CASE
                          WHEN "Description" <= 30.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 207.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 3.944926619529724 THEN CASE
                          WHEN "Pressure(in)" <= 0.42736487090587616 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 30.014904022216797 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Timezone_2" <= 30.054969787597656 THEN CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN CASE
                      WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                        WHEN "Description" <= 46.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 173.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 97.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24250.5 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 3.8141554594039917 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 56.5 THEN CASE
                        WHEN "Timezone_0" <= 3.298340320587158 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 3.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 67.02587714943355 THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 22.5 THEN CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 1.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5608108043670654 THEN 1.0
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Description" <= 53.0 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 40.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_8" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 469.0 THEN CASE
                          WHEN "Timezone_2" <= 30.3454532623291 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE 1.0
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24275.5 THEN CASE
                          WHEN "Timezone_0" <= 3.2455668449401855 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 1.4384815096855164 THEN 3.0
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
                WHEN "Zipcode" <= 49.5 THEN CASE
                  WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                    WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24267.5 THEN CASE
                          WHEN "Timezone_2" <= 28.802888870239258 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 1.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 15.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 18.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.35895270109176636 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 33.5 THEN CASE
                          WHEN bad_count("Weather_Condition") <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Timezone_2" <= 29.484021186828613 THEN CASE
                          WHEN "Source" <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 65.71497090694359 THEN 0.0
                        ELSE CASE
                          WHEN "Timezone_1" <= 3.9013363122940063 THEN 0.0
                          ELSE 0.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Humidity(%)" <= 67.02587714943355 THEN CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Timezone_2" <= 27.991539001464844 THEN 1.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 12.0 THEN 0.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 0.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 8.5 THEN CASE
                    WHEN "Country_0" <= 0.5 THEN CASE
                      WHEN "Timezone_2" <= 29.834604263305664 THEN CASE
                        WHEN "Timezone_1" <= 1.5474573969841003 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5152027010917664 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 7.5 THEN CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 847.5 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24270.5 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Country_0" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 525.5 THEN CASE
                          WHEN "Timezone_2" <= 29.67433738708496 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24231.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24231.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24209.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24224.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 3.2038906812667847 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 0.5456081032752991 THEN CASE
                  WHEN time_months("Start_Time") <= 24230.5 THEN CASE
                    WHEN "Description" <= 13.5 THEN CASE
                      WHEN "Airport_Code_5" <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.3967905342578888 THEN CASE
                          WHEN "Humidity(%)" <= 65.83786836867928 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24206.5 THEN CASE
                          WHEN "Timezone_0" <= 1.8549866080284119 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 14.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 10.5 THEN CASE
                        WHEN "Description" <= 17.5 THEN CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.3699324429035187 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Source" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 17.5 THEN CASE
                      WHEN "Timezone_2" <= 29.72442054748535 THEN CASE
                        WHEN "Timezone_3" <= 1.5 THEN CASE
                          WHEN "Timezone_2" <= 28.812905311584473 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 66.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 2.7679871320724487 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 21.5 THEN CASE
                        WHEN "Zipcode" <= 5.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_2" <= 29.03327178955078 THEN CASE
                          WHEN "Description" <= 25.5 THEN 2.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 24.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24225.5 THEN CASE
                    WHEN "Source" <= 0.5 THEN CASE
                      WHEN "Airport_Code_7" <= 0.5 THEN CASE
                        WHEN "Country_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 26.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_0" <= 3.118910551071167 THEN CASE
                        WHEN "Timezone_1" <= 1.591047763824463 THEN CASE
                          WHEN "Timezone_2" <= 30.26531982421875 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24223.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 500.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Timezone_1" <= 0.9807828366756439 THEN CASE
                          WHEN "Timezone_2" <= 25.332118034362793 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 13.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                          WHEN "Timezone_1" <= 3.4654327630996704 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24233.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_3" <= 1.5 THEN CASE
                        WHEN "Description" <= 13.5 THEN CASE
                          WHEN "Timezone_2" <= 28.752805709838867 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Country_0" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24272.5 THEN CASE
                          WHEN "Zipcode" <= 45.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN bad_count("Weather_Condition") <= 0.5 THEN 0.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "Timezone_2" <= 29.904720306396484 THEN CASE
              WHEN "Zipcode" <= 20.5 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Airport_Code_1" <= 0.5 THEN CASE
                    WHEN "Source" <= 0.5 THEN CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24246.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.47804054617881775 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_10" <= 0.5 THEN CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Timezone_1" <= 4.337239742279053 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24270.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_2" <= 29.684353828430176 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 1.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Timezone_2" <= 23.20357894897461 THEN CASE
                          WHEN "Timezone_0" <= 1.5304298996925354 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 3.118910551071167 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Country_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 29.1033878326416 THEN CASE
                        WHEN time_months("Start_Time") <= 24246.5 THEN CASE
                          WHEN "Timezone_1" <= 3.509023070335388 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 3.000170350074768 THEN CASE
                          WHEN "Humidity(%)" <= 65.50604523534626 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Source" <= 0.5 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                          WHEN "Timezone_2" <= 27.801223754882812 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24277.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 5.5 THEN CASE
                          WHEN "Pressure(in)" <= 0.5827702879905701 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24249.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Country_0" <= 0.5 THEN CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Description" <= 15.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.3923131376504898 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 0.9763087332248688 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 29.03327178955078 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 2.462854743003845 THEN CASE
                      WHEN time_months("Start_Time") <= 24249.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 4.3010358810424805 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 6.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 4.459356307983398 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Humidity(%)" <= 65.78051621452796 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 5.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 0.5456081032752991 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 208.5 THEN CASE
                    WHEN "Source" <= 0.5 THEN CASE
                      WHEN "Timezone_1" <= 0.6320600509643555 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 5.018754720687866 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Timezone_1" <= 1.8961801528930664 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 21.99657154083252 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Pressure(in)" <= 0.5456081032752991 THEN CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 3.8260748386383057 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5489864945411682 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Wind_Chill(F)" <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 0.5456081032752991 THEN CASE
                          WHEN "Timezone_2" <= 28.873004913330078 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_2" <= 24.81626033782959 THEN CASE
                          WHEN time_months("Start_Time") <= 24248.0 THEN 2.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.8936021625995636 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN time_months("Start_Time") <= 24247.0 THEN CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24242.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Source" <= 0.5 THEN 3.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Source" <= 0.5 THEN CASE
                          WHEN "Description" <= 13.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                    WHEN time_months("Start_Time") <= 24231.5 THEN CASE
                      WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                        WHEN "Source" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 1209.0 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 1.9499788284301758 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN bad_count("Weather_Condition") <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 28.822921752929688 THEN CASE
                        WHEN bad_count("Weather_Condition") <= 0.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5658783912658691 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 10.5 THEN CASE
                      WHEN "Airport_Code_9" <= 0.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.4141083210706711 THEN 1.0
                          ELSE 0.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 0.0
                          ELSE 0.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 66.86201384575396 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_9" <= 0.5 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 29.664320945739746 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 1020.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 0.5185810923576355 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Source" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN time_months("Start_Time") <= 24248.5 THEN CASE
                WHEN time_months("Start_Time") <= 24235.5 THEN CASE
                  WHEN "Zipcode" <= 31.5 THEN CASE
                    WHEN "Source" <= 0.5 THEN CASE
                      WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 2.037055015563965 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24212.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 0.40692567825317383 THEN CASE
                          WHEN "Zipcode" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_10" <= 0.5 THEN CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 0.5726351141929626 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 7.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 23.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 3.857745885848999 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN CASE
                      WHEN "Airport_Code_7" <= 0.5 THEN CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 13.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 567.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_3" <= 0.5 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 18.5 THEN CASE
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 0.4485742896795273 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 30.21523666381836 THEN CASE
                        WHEN time_months("Start_Time") <= 24242.5 THEN CASE
                          WHEN "Timezone_0" <= 0.7124415040016174 THEN 3.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 3.034473180770874 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 11.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.5489864945411682 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 3.7205278873443604 THEN CASE
                      WHEN "Source" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 505.5 THEN CASE
                          WHEN "Zipcode" <= 99.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 2.680806517601013 THEN 2.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 500.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 516.0 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_2" <= 30.02492046356201 THEN CASE
                        WHEN "Source" <= 0.5 THEN CASE
                          WHEN "Description" <= 11.5 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 29.914737701416016 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Timezone_1" <= 1.1115539073944092 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 57.5 THEN CASE
                  WHEN "Pressure(in)" <= 0.42736487090587616 THEN CASE
                    WHEN "Description" <= 11.5 THEN CASE
                      WHEN "Humidity(%)" <= 67.51746693228027 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 1.7679104208946228 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                        ELSE CASE
                          WHEN "Zipcode" <= 1.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 1.9790042042732239 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 6.5 THEN CASE
                          WHEN "Timezone_2" <= 30.570828437805176 THEN 1.0
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 35.5 THEN CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24249.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN time_months("Start_Time") <= 24272.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN bad_count("Weather_Condition") <= 0.5 THEN CASE
                        WHEN "Timezone_2" <= 30.135103225708008 THEN CASE
                          WHEN "Timezone_2" <= 29.984853744506836 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 65.71497090694359 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 3.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 3.726974844932556 THEN 3.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Country_0" <= 0.5 THEN CASE
                    WHEN "Airport_Code_3" <= 0.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Description" <= 17.5 THEN CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 298.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN ("Visibility(mi)" -0.0) * 0.007142857142857143 + 0.0 <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_9" <= 0.5 THEN CASE
                        WHEN "Timezone_1" <= 2.070541501045227 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 67.02587714943355 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Source" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE 2.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 3.8260748386383057 THEN CASE
                      WHEN "Description" <= 11.5 THEN CASE
                        WHEN "Zipcode" <= 578.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24266.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.8936021625995636 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24272.5 THEN CASE
                          WHEN time_months("Start_Time") <= 24256.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN "Timezone_0" <= 4.775996685028076 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 0.6165540516376495 THEN 1.0
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN time_months("Start_Time") <= 24268.5 THEN CASE
                          WHEN "Description" <= 11.5 THEN 1.0
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 835.5 THEN 1.0
                          ELSE 0.0
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
              "Timezone_0",
              "Timezone_1",
              "Timezone_2",
              "Timezone_3",
              "Country_0",
              "Source",
              "Temperature(F)",
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
              "Weather_Condition",
              "Visibility(mi)"
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
                  "Wind_Chill(F)",
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
                      "Wind_Chill(F)",
                      "Visibility(mi)",
                      "Description",
                      "Start_Time",
                      "Weather_Condition"
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
                          "Source",
                          "Timezone",
                          "Country",
                          "Wind_Chill(F)",
                          "Visibility(mi)",
                          "Description",
                          "Start_Time",
                          "Weather_Condition",
                          "Temperature(F)",
                          "Humidity(%)"
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