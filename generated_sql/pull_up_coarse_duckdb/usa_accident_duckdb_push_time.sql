-- CREATE temp table t_table as 
set threads= 4;
EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "class_0" >= "class_1"
    AND "class_0" >= "class_2"
    AND "class_0" >= "class_3" THEN 1
    WHEN "class_1" >= "class_0"
    AND "class_1" >= "class_2"
    AND "class_1" >= "class_3" THEN 2
    WHEN "class_2" >= "class_0"
    AND "class_2" >= "class_1"
    AND "class_2" >= "class_3" THEN 3
    WHEN "class_3" >= "class_0"
    AND "class_3" >= "class_1"
    AND "class_3" >= "class_2" THEN 4
  END AS "Score"
FROM
  (
    SELECT
      (
        CASE
          WHEN "tree_0" = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_1" = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_2" = 1 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_3" = 1 THEN 1
          ELSE 0
        END
      ) AS "class_0",
      (
        CASE
          WHEN "tree_0" = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_1" = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_2" = 2 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_3" = 2 THEN 1
          ELSE 0
        END
      ) AS "class_1",
      (
        CASE
          WHEN "tree_0" = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_1" = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_2" = 3 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_3" = 3 THEN 1
          ELSE 0
        END
      ) AS "class_2",
      (
        CASE
          WHEN "tree_0" = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_1" = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_2" = 4 THEN 1
          ELSE 0
        END + CASE
          WHEN "tree_3" = 4 THEN 1
          ELSE 0
        END
      ) AS "class_3"
    FROM
      (
        SELECT
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN "Source_2" <= 0.5 THEN CASE
                WHEN "Description" <= 8.5 THEN CASE
                  WHEN "Pressure(in)" <= 24.756160736083984 THEN CASE
                    WHEN "Zipcode" <= 146.0 THEN CASE
                      WHEN "Airport_Code_6" <= 0.5 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 21.53580665588379 THEN CASE
                            WHEN "Description" <= 4.5 THEN 1.0
                            ELSE CASE
                              WHEN "Pressure(in)" <= 20.584223747253418 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 4.195488929748535 THEN 1.0
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.248262405395508 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 23.82461166381836 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 24.004910469055176 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 7.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 23.50407886505127 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 3.19243061542511 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE 1.0
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24244.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 2.2534804344177246 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 189.0 THEN 0.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE 1.0
                      END
                      ELSE CASE
                        WHEN "Timezone_2" <= 0.5 THEN 1.0
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.0245821475982666 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                            ELSE 3.0
                          END
                          ELSE CASE
                            WHEN "Description" <= 7.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.137324571609497 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Timezone_1" <= 0.5 THEN CASE
                          WHEN "Description" <= 3.5 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 631.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 97.5 THEN CASE
                              WHEN "Description" <= 5.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 96.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.5 THEN CASE
                              WHEN "Pressure(in)" <= 27.861323356628418 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.772838592529297 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.6677544116973877 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 7.5 THEN CASE
                            WHEN "Zipcode" <= 38.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 28.066664695739746 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 71.5 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 4.547697305679321 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.14512062072754 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                              WHEN "Zipcode" <= 33.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.022534804418683052 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 3.087246537208557 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.220261335372925 THEN CASE
                              WHEN "Pressure(in)" <= 29.644287109375 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 1.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 30.155137062072754 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.0280271768569946 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.6873221397399902 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 6.5 THEN CASE
                              WHEN "Zipcode" <= 1174.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Weather_Condition" <= 1.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.433938026428223 THEN CASE
                            WHEN "Description" <= 7.5 THEN CASE
                              WHEN "Zipcode" <= 82.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.1710970401763916 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.5500353574752808 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Weather_Condition" <= 2.5 THEN CASE
                    WHEN "Description" <= 15.5 THEN CASE
                      WHEN "Zipcode" <= 134.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 3.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.155144214630127 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 22.557504653930664 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.86465358734131 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 407.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.644287109375 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24277.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.0491642951965332 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Visibility(mi)" <= 6.572651147842407 THEN CASE
                            WHEN "Pressure(in)" <= 30.27533721923828 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 14.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.029929161071777 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24220.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Humidity(%)" <= 3.944926619529724 THEN CASE
                          WHEN "Description" <= 35.5 THEN CASE
                            WHEN "Description" <= 30.5 THEN CASE
                              WHEN "Zipcode" <= 3.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 3.19243061542511 THEN CASE
                              WHEN "Humidity(%)" <= 1.7436139583587646 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 3.4276353120803833 THEN CASE
                              WHEN "Description" <= 31.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24245.0 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN CASE
                          WHEN "Temperature(F)" <= 2.5568734407424927 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.9542807340621948 THEN 3.0
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.509023070335388 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 8.628458023071289 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.8928253650665283 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE 3.0
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 3.5 THEN CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 28.477347373962402 THEN 3.0
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 3.0
                            END
                          END
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 4.092580556869507 THEN CASE
                            WHEN "Pressure(in)" <= 30.14512062072754 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.0 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                      ELSE 3.0
                    END
                    ELSE CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24226.0 THEN 3.0
                      ELSE CASE
                        WHEN "Temperature(F)" <= 3.570123553276062 THEN CASE
                          WHEN "Wind_Chill(F)" <= 1.6765024662017822 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE 2.0
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                  WHEN "Temperature(F)" <= 2.6729750633239746 THEN CASE
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Pressure(in)" <= 29.764487266540527 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.075697541236877 THEN CASE
                              WHEN "Humidity(%)" <= 3.879541039466858 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE 1.0
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Visibility(mi)" <= 3.568010687828064 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.4503467082977295 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 6.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24216.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 19.0 THEN CASE
                          WHEN "Temperature(F)" <= 2.612285614013672 THEN CASE
                            WHEN "Timezone_3" <= 0.5 THEN 1.0
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.293649435043335 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.784521102905273 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.023604154586792 THEN CASE
                              WHEN "Temperature(F)" <= -0.395800843834877 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 20.5 THEN CASE
                        WHEN "Humidity(%)" <= 3.770565152168274 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24203.5 THEN 2.0
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= -0.46706080436706543 THEN CASE
                              WHEN "Zipcode" <= 5.0 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 1.3145302534103394 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24214.5 THEN CASE
                            WHEN "Pressure(in)" <= 30.185187339782715 THEN 2.0
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 1.0963637828826904 THEN CASE
                              WHEN "Temperature(F)" <= 1.6465314626693726 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 15.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.5 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.552613377571106 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 275.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 4.20646858215332 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 475.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.17350482940674 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.54746437072754 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                      WHEN "Airport_Code_7" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 4.240346193313599 THEN CASE
                              WHEN "Zipcode" <= 117.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 5.148049592971802 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 0.6320600509643555 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.6397942304611206 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.09503746032715 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 522.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 248.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 4.252711534500122 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24234.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.84462070465088 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                              WHEN "Pressure(in)" <= 30.115070343017578 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 4.131380796432495 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 30.255303382873535 THEN CASE
                              WHEN "Zipcode" <= 764.0 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.515247106552124 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 55.5 THEN CASE
                        WHEN "Zipcode" <= 9.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 2.876152753829956 THEN CASE
                              WHEN "Zipcode" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.7469146251678467 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.654871940612793 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 5.0398640632629395 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 526.5 THEN CASE
                              WHEN "Zipcode" <= 280.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 2.8168505430221558 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 0.283337265253067 THEN CASE
                            WHEN "Wind_Chill(F)" <= 4.891847372055054 THEN 1.0
                            ELSE 2.0
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.764487266540527 THEN CASE
                              WHEN "Zipcode" <= 1293.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
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
                    WHEN "Description" <= 9.5 THEN CASE
                      WHEN "Zipcode" <= 603.0 THEN CASE
                        WHEN "Humidity(%)" <= 3.944926619529724 THEN CASE
                          WHEN "Timezone_2" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 404.5 THEN CASE
                              WHEN "Visibility(mi)" <= 3.19243061542511 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 21.0 THEN 1.0
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.154382944107056 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 4.032107353210449 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 0.0
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 307.5 THEN CASE
                              WHEN "Visibility(mi)" <= 1.3145302534103394 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 325.0 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 3.087246537208557 THEN 0.0
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 1516.0 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.819579124450684 THEN CASE
                              WHEN "Temperature(F)" <= 5.198184490203857 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Weather_Condition" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 4.252711534500122 THEN CASE
                          WHEN "Temperature(F)" <= 3.8788483142852783 THEN CASE
                            WHEN "Humidity(%)" <= 3.5962038040161133 THEN CASE
                              WHEN "Temperature(F)" <= 3.2455668449401855 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 1071.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.33877944946289 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.383854866027832 THEN CASE
                            WHEN "Wind_Chill(F)" <= 4.523115158081055 THEN CASE
                              WHEN "Zipcode" <= 4.0 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.462322235107422 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                              WHEN "Humidity(%)" <= 0.6538552194833755 THEN 0.0
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
                        WHEN "Pressure(in)" <= 29.1033878326416 THEN 0.0
                        ELSE 1.0
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_1" <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 20.5 THEN CASE
                        WHEN "Zipcode" <= 1.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.92475414276123 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 4.793518781661987 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 0.0
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 1.155144214630127 THEN CASE
                            WHEN "Humidity(%)" <= 0.4794938266277313 THEN 1.0
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.432969570159912 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.206468820571899 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Weather_Condition" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.664320945739746 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 1109.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 20.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Visibility(mi)" <= 3.19243061542511 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.119287967681885 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 3.19243061542511 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE 2.0
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 78.0 THEN CASE
                        WHEN "Wind_Chill(F)" <= 4.2281293869018555 THEN CASE
                          WHEN "Wind_Chill(F)" <= 4.056054353713989 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 19.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.228596687316895 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.223588943481445 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN "Temperature(F)" <= 4.8023834228515625 THEN CASE
                            WHEN "Temperature(F)" <= 4.037168502807617 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.056054353713989 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 4.449368715286255 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 758.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 15.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.984853744506836 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 0.5 THEN CASE
                WHEN "Description" <= 11.5 THEN CASE
                  WHEN "Airport_Code_7" <= 0.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 56.5 THEN CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Temperature(F)" <= 3.4276353120803833 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 0.9562455415725708 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.5633701086044312 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 1.3984963297843933 THEN CASE
                            WHEN "Zipcode" <= 8.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 0.8707618415355682 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Pressure(in)" <= 30.716069221496582 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 13.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.67433738708496 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 813.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 653.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.4169185161590576 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.534104347229004 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 430.0 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.459356307983398 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 2.4412704706192017 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Temperature(F)" <= 1.314058780670166 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.075697660446167 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24229.5 THEN CASE
                              WHEN "Zipcode" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.547697305679321 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 15.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.974439859390259 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 2.4192644357681274 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.957725763320923 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.0594905614852905 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.377557277679443 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                      WHEN "Timezone_0" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24230.5 THEN CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24228.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24239.5 THEN CASE
                              WHEN "Zipcode" <= 43.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 43.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Zipcode" <= 69.5 THEN 1.0
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
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24209.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 47.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.72442054748535 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24240.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.9242887496948242 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_1" <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 29.57417106628418 THEN CASE
                          WHEN "Temperature(F)" <= 2.612285614013672 THEN 0.0
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.572505950927734 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 4.564903020858765 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 4.547697305679321 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 3.6833845376968384 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                              WHEN "Humidity(%)" <= 3.552613377571106 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 32.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.773301362991333 THEN CASE
                              WHEN "Zipcode" <= 5.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 93.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.318589925765991 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.2369754314422607 THEN CASE
                              WHEN "Pressure(in)" <= 29.834603309631348 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 11.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 0.24827969074249268 THEN CASE
                      WHEN "Zipcode" <= 4.5 THEN CASE
                        WHEN "Visibility(mi)" <= 3.19243061542511 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Description" <= 12.5 THEN 1.0
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= -0.6883001327514648 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 2.8168505430221558 THEN CASE
                              WHEN "Visibility(mi)" <= 0.19717954099178314 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 2.0
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 0.9261739552021027 THEN CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 3.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.9231313467025757 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 30.681011199951172 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24259.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.010311961174011 THEN CASE
                              WHEN "Zipcode" <= 9.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE 1.0
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 3.6397942304611206 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24264.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= -0.614553689956665 THEN 2.0
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.141083240509033 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_5" <= 0.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 2.0656903982162476 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 14.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 2.0269511938095093 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 3.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.92475414276123 THEN CASE
                              WHEN "Zipcode" <= 5.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.2745922803878784 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 2.0009868144989014 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.433938026428223 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.562150716781616 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24227.5 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 16.5 THEN CASE
                              WHEN "Zipcode" <= 4.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.8450551629066467 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                        WHEN "Pressure(in)" <= 30.395536422729492 THEN CASE
                          WHEN "Wind_Chill(F)" <= 1.6691278219223022 THEN CASE
                            WHEN "Zipcode" <= 74.5 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.664320945739746 THEN CASE
                              WHEN "Zipcode" <= 40.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.315487265586853 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN CASE
                            WHEN "Description" <= 17.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.052886962890625 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 17.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 31.0 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN CASE
                          WHEN "Description" <= 14.5 THEN CASE
                            WHEN "Zipcode" <= 72.5 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 0.6756503880023956 THEN CASE
                              WHEN "Description" <= 16.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 239.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.67433738708496 THEN CASE
                            WHEN "Zipcode" <= 40.5 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 5.409278154373169 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 332.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.514070510864258 THEN CASE
                              WHEN "Temperature(F)" <= 1.029082179069519 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 70.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.373838424682617 THEN CASE
                              WHEN "Humidity(%)" <= 1.7872043251991272 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.131453026086092 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 20.5 THEN CASE
                            WHEN "Zipcode" <= 20.5 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 16.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24261.5 THEN CASE
                              WHEN "Pressure(in)" <= 27.5057315826416 THEN 3.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.33877944946289 THEN 2.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 19.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.286139726638794 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 28.612571716308594 THEN CASE
                            WHEN "Visibility(mi)" <= 2.6290605068206787 THEN CASE
                              WHEN "Description" <= 16.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.421842336654663 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 14.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Wind_Chill(F)" <= 3.1710970401763916 THEN CASE
                  WHEN "Visibility(mi)" <= 0.29107455909252167 THEN CASE
                    WHEN "Zipcode" <= 283.5 THEN CASE
                      WHEN "Zipcode" <= 17.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Visibility(mi)" <= 0.2591502517461777 THEN 1.0
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.105052947998047 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 0.3392336368560791 THEN 2.0
                            ELSE CASE
                              WHEN "Pressure(in)" <= 24.009920120239258 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE 0.0
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 3.9013363122940063 THEN CASE
                          WHEN "Zipcode" <= 40.5 THEN 2.0
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.328763008117676 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.0324501991271973 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.08450551703572273 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 2.974439859390259 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                            ELSE 1.0
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.16515350341797 THEN CASE
                            WHEN "Visibility(mi)" <= 0.08450551703572273 THEN CASE
                              WHEN "Pressure(in)" <= 29.889695167541504 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.20646858215332 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.425586700439453 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 24.455660820007324 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.0570323467254639 THEN 2.0
                            ELSE 3.0
                          END
                          ELSE CASE
                            WHEN "Description" <= 21.0 THEN CASE
                              WHEN "Visibility(mi)" <= 0.2347375452518463 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.271896779537201 THEN 3.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 1.926230788230896 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24216.5 THEN 2.0
                          ELSE CASE
                            WHEN "Zipcode" <= 705.0 THEN CASE
                              WHEN "Temperature(F)" <= 1.889289379119873 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.56581974029541 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.79453754425049 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24241.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.949857711791992 THEN CASE
                              WHEN "Zipcode" <= 1011.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.2347375452518463 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Humidity(%)" <= 3.552613377571106 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.192793369293213 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.526551365852356 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 30.655969619750977 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.8450551629066467 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                            ELSE CASE
                              WHEN "Zipcode" <= 46.0 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Description" <= 11.5 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.207476854324341 THEN CASE
                              WHEN "Zipcode" <= 154.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.552613377571106 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 784.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.241891860961914 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.01323890686035 THEN CASE
                              WHEN "Zipcode" <= 106.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24229.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Pressure(in)" <= 25.687708854675293 THEN CASE
                        WHEN "Description" <= 6.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.3766002655029297 THEN 1.0
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.0317776799201965 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 24.340468406677246 THEN 1.0
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.9816997051239014 THEN CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 22.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Weather_Condition" <= 1.5 THEN CASE
                          WHEN "Description" <= 15.5 THEN CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24217.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.9665718078613281 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Airport_Code_3" <= 0.5 THEN CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN CASE
                      WHEN "Airport_Code_9" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24195.5 THEN CASE
                            WHEN "Temperature(F)" <= 3.1426585912704468 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 96.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 496.5 THEN CASE
                            WHEN "Zipcode" <= 6.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.764487266540527 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 5.358908176422119 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 2007.0 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 1731.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.155144214630127 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 160.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.1987345814704895 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24265.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 570.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 53.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.0 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.704387664794922 THEN CASE
                              WHEN "Zipcode" <= 108.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 8.5 THEN CASE
                          WHEN "Zipcode" <= 848.5 THEN CASE
                            WHEN "Humidity(%)" <= 2.4192644357681274 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24266.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 6.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.515247106552124 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.9473968744277954 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.2013126611709595 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.8577388525009155 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Description" <= 13.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Visibility(mi)" <= 2.8168505430221558 THEN CASE
                      WHEN "Zipcode" <= 501.5 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.075697660446167 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 3.8141554594039917 THEN CASE
                              WHEN "Humidity(%)" <= 2.5936256647109985 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.874670028686523 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 15.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 121.0 THEN CASE
                              WHEN "Pressure(in)" <= 30.085020065307617 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 14.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.638157844543457 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 1734.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.874670028686523 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 4.941011667251587 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.855167865753174 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.984853744506836 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24259.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Description" <= 7.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.0461683869361877 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24234.5 THEN CASE
                            WHEN "Zipcode" <= 525.0 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 625.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 159.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                            WHEN "Zipcode" <= 89.0 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.4169185161590576 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 4.449368715286255 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS "tree_0",
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                WHEN "Airport_Code_0" <= 0.5 THEN CASE
                  WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                    WHEN "Timezone_0" <= 0.5 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 25.18687629699707 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 23.50407886505127 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 2.876152753829956 THEN CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.41223907470703 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.5 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 157.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 438.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.8141554594039917 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.89470386505127 THEN CASE
                              WHEN "Humidity(%)" <= 2.4192644357681274 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.178513526916504 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 1.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 1.8264535665512085 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.463987350463867 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 51.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24211.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 46.0 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Source_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24212.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24213.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.063322067260742 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.6623635292053223 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.270328521728516 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_2" <= 0.5 THEN CASE
                      WHEN "Timezone_0" <= 0.5 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 1.3145302534103394 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 26.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 271.0 THEN CASE
                            WHEN "Description" <= 11.5 THEN 1.0
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.269425630569458 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24244.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 28.702722549438477 THEN CASE
                              WHEN "Zipcode" <= 344.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 20.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 2.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Temperature(F)" <= 3.5094341039657593 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 708.0 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24245.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 180.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.876152753829956 THEN CASE
                              WHEN "Description" <= 5.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24244.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 28.69270610809326 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 24.901402473449707 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 2.4192644357681274 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.462854743003845 THEN 3.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 7.5 THEN CASE
                          WHEN "Pressure(in)" <= 25.89305019378662 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 25.04664421081543 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 25.57251739501953 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24245.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24244.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.24362087249756 THEN 3.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN CASE
                    WHEN "Timezone_1" <= 0.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.5 THEN CASE
                            WHEN "Zipcode" <= 121.0 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.1774848699569702 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.032107353210449 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.638157844543457 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24245.5 THEN CASE
                              WHEN "Temperature(F)" <= 3.377500534057617 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.7469146251678467 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_2" <= 0.5 THEN CASE
                          WHEN "Temperature(F)" <= -0.2665058970451355 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                              WHEN "Zipcode" <= 33.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.854637145996094 THEN 3.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 3.5962038040161133 THEN 1.0
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 27.03995704650879 THEN 1.0
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.23026180267334 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Temperature(F)" <= 2.694084405899048 THEN CASE
                          WHEN "Zipcode" <= 129.0 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 1.8497092723846436 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.5936256647109985 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Visibility(mi)" <= 0.6572651267051697 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.195679187774658 THEN CASE
                              WHEN "Visibility(mi)" <= 0.32863256335258484 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24241.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 17.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_2" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 7.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24219.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 21.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 2.0 THEN CASE
                              WHEN "Zipcode" <= 5.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE 2.0
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.10078680515289307 THEN 2.0
                          ELSE CASE
                            WHEN "Temperature(F)" <= 1.6227834224700928 THEN 1.0
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.898758292198181 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24229.5 THEN CASE
                      WHEN "Zipcode" <= 120.0 THEN CASE
                        WHEN "Wind_Chill(F)" <= 2.9252755641937256 THEN CASE
                          WHEN "Zipcode" <= 1.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.325420379638672 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24220.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 76.0 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 0.850011795759201 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24207.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.308894991874695 THEN CASE
                              WHEN "Zipcode" <= 1.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24207.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 148.0 THEN CASE
                          WHEN "Humidity(%)" <= 1.0025780498981476 THEN 1.0
                          ELSE 3.0
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 3.591233015060425 THEN CASE
                            WHEN "Temperature(F)" <= 2.533125400543213 THEN 2.0
                            ELSE 1.0
                          END
                          ELSE 2.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_9" <= 0.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Visibility(mi)" <= 3.568010687828064 THEN 1.0
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_2" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 26.373849868774414 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE 1.0
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 28.767830848693848 THEN CASE
                            WHEN "Pressure(in)" <= 27.009906768798828 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 3.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 27.650973320007324 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.0 THEN CASE
                              WHEN "Description" <= 12.0 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.332083582878113 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN CASE
                          WHEN "Pressure(in)" <= 26.24363422393799 THEN 1.0
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 2.0
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 11.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24245.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 25.567509651184082 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Source_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 2.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Source_2" <= 0.5 THEN CASE
                  WHEN "Timezone_1" <= 0.5 THEN CASE
                    WHEN "Pressure(in)" <= 25.35715961456299 THEN CASE
                      WHEN "Airport_Code_8" <= 0.5 THEN CASE
                        WHEN "Temperature(F)" <= 3.034473180770874 THEN CASE
                          WHEN "Timezone_2" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 25.337125778198242 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.0818556249141693 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 23.023279190063477 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 167.0 THEN CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 4.08994197845459 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 107.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24256.5 THEN CASE
                              WHEN "Temperature(F)" <= 4.195488929748535 THEN 1.0
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
                        WHEN "Pressure(in)" <= 23.103412628173828 THEN CASE
                          WHEN "Temperature(F)" <= 2.453965187072754 THEN CASE
                            WHEN "Description" <= 39.5 THEN CASE
                              WHEN "Humidity(%)" <= 0.5666745156049728 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 33.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 22.822946548461914 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 47.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 30.5 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 1.6470038890838623 THEN CASE
                          WHEN "Humidity(%)" <= 1.7654091119766235 THEN CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 362.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 25.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24262.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24277.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Pressure(in)" <= 26.869674682617188 THEN CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 1.6623635292053223 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 289.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Description" <= 13.5 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 147.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.0737464427947998 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                              WHEN "Humidity(%)" <= 0.5884697139263153 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.6650590896606445 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Description" <= 33.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Description" <= 30.5 THEN CASE
                          WHEN "Description" <= 7.5 THEN CASE
                            WHEN "Humidity(%)" <= 1.242324948310852 THEN CASE
                              WHEN "Description" <= 5.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Pressure(in)" <= 29.25363826751709 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 14.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 4.006890058517456 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.153470993041992 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 1.5474573969841003 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.898758292198181 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.6627399921417236 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.293704986572266 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.8593971729278564 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 12.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.564154624938965 THEN CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.04495334625244 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 3.034473180770874 THEN 1.0
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
                    ELSE CASE
                      WHEN "Zipcode" <= 97.5 THEN CASE
                        WHEN "Pressure(in)" <= 30.155137062072754 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.7453324794769287 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 1.1115539073944092 THEN CASE
                              WHEN "Humidity(%)" <= 0.6320600509643555 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.288493275642395 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 52.0 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.023604154586792 THEN CASE
                              WHEN "Temperature(F)" <= 1.3984962701797485 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24275.5 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.6470038890838623 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 44.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 2.559512138366699 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.071672439575195 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 0.8971485793590546 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24278.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Temperature(F)" <= 3.5622074604034424 THEN CASE
                    WHEN "Description" <= 11.5 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Visibility(mi)" <= 5.258120775222778 THEN CASE
                          WHEN "Temperature(F)" <= 3.034473180770874 THEN CASE
                            WHEN "Wind_Chill(F)" <= 2.4827969074249268 THEN CASE
                              WHEN "Pressure(in)" <= 24.6810359954834 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 849.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.67433738708496 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE 0.0
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 2.6794540882110596 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.0 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24252.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 0.0
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.032107353210449 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.581125497817993 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.2369754314422607 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 2.8761112689971924 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 1028.0 THEN CASE
                              WHEN "Temperature(F)" <= 3.1400198936462402 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.92475414276123 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 20.5 THEN CASE
                        WHEN "Pressure(in)" <= 30.125086784362793 THEN CASE
                          WHEN "Zipcode" <= 1.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.3484182357788086 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 3.568010687828064 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.14512062072754 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.250059127807617 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.9990220069885254 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE 2.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 646.0 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24253.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24264.5 THEN CASE
                            WHEN "Temperature(F)" <= 1.583203375339508 THEN 2.0
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.6302897930145264 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.777782678604126 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
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
                  ELSE CASE
                    WHEN "Temperature(F)" <= 4.406582832336426 THEN CASE
                      WHEN "Visibility(mi)" <= 1.3145302534103394 THEN CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.18017864227295 THEN CASE
                            WHEN "Weather_Condition" <= 1.5 THEN CASE
                              WHEN "Zipcode" <= 14.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 115.0 THEN 0.0
                              ELSE 2.0
                            END
                          END
                          ELSE 2.0
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.075003623962402 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.588993549346924 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 15.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE 2.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 11.5 THEN CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.86799716949463 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 1393.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 483.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 28.80288791656494 THEN CASE
                              WHEN "Zipcode" <= 553.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 93.0 THEN CASE
                              WHEN "Zipcode" <= 5.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                        WHEN "Pressure(in)" <= 25.617592811584473 THEN 2.0
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 1.591047763824463 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 32.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24258.5 THEN 1.0
                            ELSE 2.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 3.073119640350342 THEN CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.79453754425049 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_2" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 3.5744086503982544 THEN CASE
                              WHEN "Pressure(in)" <= 29.869662284851074 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 244.0 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_3" <= 0.5 THEN CASE
                WHEN "Weather_Condition" <= 0.5 THEN CASE
                  WHEN "Airport_Code_6" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 23.5 THEN CASE
                      WHEN "Description" <= 12.5 THEN CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Zipcode" <= 8.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.773301362991333 THEN CASE
                              WHEN "Description" <= 10.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 9.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24208.5 THEN CASE
                          WHEN "Description" <= 17.5 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24195.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 16.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 5.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.5934165716171265 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Description" <= 15.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
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
                    ELSE CASE
                      WHEN "Humidity(%)" <= 3.0295292139053345 THEN CASE
                        WHEN "Temperature(F)" <= 3.902596354484558 THEN CASE
                          WHEN "Zipcode" <= 397.5 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 99.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                              WHEN "Zipcode" <= 1513.0 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Zipcode" <= 817.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.60422134399414 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.213571548461914 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24230.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 64.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.03327178955078 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                      WHEN "Zipcode" <= 31.5 THEN CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 16.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.764487266540527 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.855167865753174 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 17.5 THEN CASE
                            WHEN "Temperature(F)" <= 1.7784650921821594 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.60422134399414 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 4.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24203.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 62.5 THEN CASE
                            WHEN "Description" <= 12.5 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 50.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_2" <= 0.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24256.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Humidity(%)" <= 3.0731195211410522 THEN CASE
                        WHEN "Temperature(F)" <= 3.773301362991333 THEN CASE
                          WHEN "Zipcode" <= 54.0 THEN CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 3.380220651626587 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 0.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Temperature(F)" <= 5.409278154373169 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 20.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 14.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 11.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.135103225708008 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24272.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN "Zipcode" <= 37.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 17.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.57417106628418 THEN CASE
                              WHEN "Weather_Condition" <= 1.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.08450551703572273 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.8450551629066467 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.075697660446167 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 5.5 THEN CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.726974844932556 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.512129783630371 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.9013363122940063 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.770565152168274 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.8530005216598511 THEN CASE
                            WHEN "Pressure(in)" <= 27.140124320983887 THEN 2.0
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.512072801589966 THEN CASE
                              WHEN "Humidity(%)" <= 4.20646858215332 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.333770751953125 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                        WHEN "Description" <= 9.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.914737701416016 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.032107353210449 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.774503707885742 THEN CASE
                              WHEN "Pressure(in)" <= 25.412251472473145 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.1607707738876343 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Temperature(F)" <= 3.902596354484558 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.534104347229004 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 141.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                      WHEN "Visibility(mi)" <= 3.19243061542511 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 5.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24229.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24205.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24263.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 0.8923319578170776 THEN CASE
                            WHEN "Visibility(mi)" <= 0.29107455909252167 THEN CASE
                              WHEN "Temperature(F)" <= 1.6333381533622742 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.183521270751953 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.207476854324341 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 8.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 4.008143186569214 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Description" <= 14.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 0.8064214587211609 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 0.6756503880023956 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 4.319170713424683 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 0.6320600509643555 THEN CASE
                              WHEN "Description" <= 16.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 5.25095796585083 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 2.332083582878113 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 14.5 THEN CASE
                        WHEN "Description" <= 17.5 THEN CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Visibility(mi)" <= 0.04131380841135979 THEN 2.0
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24252.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 21.5 THEN CASE
                            WHEN "Humidity(%)" <= 4.119287967681885 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.5858988761901855 THEN CASE
                              WHEN "Pressure(in)" <= 29.834603309631348 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.974439859390259 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 3.515247106552124 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 30.125086784362793 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.48067855834961 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 30.355469703674316 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 3.9817564487457275 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.954803466796875 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.7891334295272827 THEN CASE
                              WHEN "Temperature(F)" <= 2.971144914627075 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 21.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24232.5 THEN CASE
                  WHEN "Temperature(F)" <= 2.8524047136306763 THEN CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN "Wind_Chill(F)" <= 1.143069863319397 THEN CASE
                        WHEN "Humidity(%)" <= 3.312866449356079 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 288.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.315403938293457 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 0.8874155282974243 THEN CASE
                              WHEN "Zipcode" <= 3.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.182095527648926 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 1.2428146004676819 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24217.0 THEN 1.0
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24218.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Temperature(F)" <= 1.314058780670166 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 17.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 89.5 THEN CASE
                          WHEN "Pressure(in)" <= 28.622589111328125 THEN CASE
                            WHEN "Zipcode" <= 28.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.184673547744751 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 15.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.056337011978030205 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 43.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 525.5 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Zipcode" <= 278.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24201.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.4192644357681274 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_10" <= 0.5 THEN CASE
                        WHEN "Humidity(%)" <= 2.048746347427368 THEN CASE
                          WHEN "Pressure(in)" <= 25.642634391784668 THEN CASE
                            WHEN "Temperature(F)" <= 2.796992540359497 THEN 2.0
                            ELSE 1.0
                          END
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.8115774393081665 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 12.0 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 36.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.22024440765381 THEN 1.0
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 1.9690300226211548 THEN CASE
                              WHEN "Pressure(in)" <= 30.240278244018555 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                        ELSE CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 2.615420937538147 THEN CASE
                              WHEN "Temperature(F)" <= 2.6676976680755615 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.841696262359619 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 1.5014045238494873 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.5070330984890461 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_2" <= 0.5 THEN CASE
                      WHEN "Airport_Code_7" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24200.5 THEN CASE
                          WHEN "Temperature(F)" <= 5.61245584487915 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 23.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 10.0 THEN 2.0
                            ELSE CASE
                              WHEN "Zipcode" <= 845.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 39.5 THEN CASE
                            WHEN "Zipcode" <= 10.5 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24227.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24195.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 43.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 224.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 312.0 THEN CASE
                              WHEN "Humidity(%)" <= 0.5012889951467514 THEN 1.0
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
                    ELSE CASE
                      WHEN "Airport_Code_5" <= 0.5 THEN CASE
                        WHEN "Pressure(in)" <= 30.064987182617188 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 415.5 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 150.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 44.0 THEN CASE
                            WHEN "Humidity(%)" <= 0.7192407548427582 THEN CASE
                              WHEN "Visibility(mi)" <= 3.19243061542511 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24228.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24223.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 621.5 THEN CASE
                          WHEN "Description" <= 12.5 THEN CASE
                            WHEN "Zipcode" <= 216.5 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.103135347366333 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 88.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24197.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.004886627197266 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 3.568010687828064 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
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
                  END
                END
                ELSE CASE
                  WHEN "Description" <= 10.5 THEN CASE
                    WHEN "Zipcode" <= 525.5 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Pressure(in)" <= 30.14512062072754 THEN CASE
                          WHEN "Description" <= 7.5 THEN CASE
                            WHEN "Pressure(in)" <= 23.388887405395508 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.6627399921417236 THEN CASE
                              WHEN "Weather_Condition" <= 1.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Visibility(mi)" <= 0.011267402209341526 THEN CASE
                            WHEN "Wind_Chill(F)" <= 2.286139726638794 THEN 1.0
                            ELSE 2.0
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 14.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.4503467082977295 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 26.73945713043213 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24239.5 THEN CASE
                            WHEN "Temperature(F)" <= 4.828770160675049 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.3028538227081299 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 26.323766708374023 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 1.7654091119766235 THEN CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Temperature(F)" <= 5.673145294189453 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.004886627197266 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.251972198486328 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_8" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 1495.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24234.0 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 28.352139472961426 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24239.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.7178324460983276 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.1710970401763916 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.742789268493652 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.9013363122940063 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24240.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Description" <= 6.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 0.8718069791793823 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.466082811355591 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 0.45769865810871124 THEN CASE
                            WHEN "Zipcode" <= 654.0 THEN 1.0
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 1298.0 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_3" <= 0.5 THEN CASE
                      WHEN "Visibility(mi)" <= 6.572651147842407 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 389.5 THEN CASE
                            WHEN "Zipcode" <= 8.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.9252755641937256 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Description" <= 13.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.2347375452518463 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 185.0 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.884687423706055 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE 1.0
                    END
                    ELSE CASE
                      WHEN "Pressure(in)" <= 29.023255348205566 THEN CASE
                        WHEN "Zipcode" <= 44.5 THEN CASE
                          WHEN "Description" <= 13.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 0.7192407548427582 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 28.00656509399414 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.7364864349365234 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.851529121398926 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN CASE
                            WHEN "Zipcode" <= 1294.0 THEN CASE
                              WHEN "Zipcode" <= 1272.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 667.0 THEN CASE
                              WHEN "Description" <= 16.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 1024.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
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
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 770.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.814570426940918 THEN CASE
                              WHEN "Pressure(in)" <= 29.113405227661133 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.353809356689453 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS "tree_1",
          CASE
            WHEN "Zipcode" <= 33.5 THEN CASE
              WHEN "Airport_Code_3" <= 0.5 THEN CASE
                WHEN "Zipcode" <= 9.5 THEN CASE
                  WHEN "Source_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                      WHEN "Source_1" <= 0.5 THEN CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN "Pressure(in)" <= 30.054969787597656 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.1219327449798584 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.4827969074249268 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.59420394897461 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 4.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN CASE
                            WHEN "Description" <= 21.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.1874592900276184 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 3.6397942304611206 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.318589925765991 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                            WHEN "Zipcode" <= 5.5 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 3.841906785964966 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 2.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 0.26794540882110596 THEN CASE
                              WHEN "Zipcode" <= 3.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 0.7414669096469879 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source_1" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 4.646025896072388 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Humidity(%)" <= 4.293649435043335 THEN CASE
                              WHEN "Pressure(in)" <= 30.275336265563965 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.89470386505127 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 4.617676258087158 THEN CASE
                              WHEN "Description" <= 11.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.904720306396484 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE 1.0
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Description" <= 12.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 17.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.784521102905273 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.093372344970703 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN CASE
                          WHEN "Humidity(%)" <= 0.8936021625995636 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 5.6337010860443115 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Description" <= 31.5 THEN CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 35.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 28.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.183521270751953 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 30.02492046356201 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Pressure(in)" <= 24.781201362609863 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.083354949951172 THEN CASE
                              WHEN "Zipcode" <= 3.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Description" <= 5.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.889289379119873 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.777782678604126 THEN CASE
                              WHEN "Description" <= 13.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN CASE
                            WHEN "Pressure(in)" <= 26.96984100341797 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.8233792781829834 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.6095900535583496 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.954803466796875 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.1577223539352417 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24202.5 THEN CASE
                              WHEN "Temperature(F)" <= 3.6176196336746216 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 30.085020065307617 THEN CASE
                              WHEN "Temperature(F)" <= 3.8260748386383057 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 3.0
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
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24246.5 THEN CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Airport_Code_6" <= 0.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.31540298461914 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.72442054748535 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.90305519104004 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Source_1" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.6175053119659424 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24224.5 THEN CASE
                          WHEN "Description" <= 9.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 1.3145302534103394 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.7300897836685181 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                            WHEN "Pressure(in)" <= 23.87469482421875 THEN CASE
                              WHEN "Temperature(F)" <= 2.058164417743683 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Source_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 31.5 THEN CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 32.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source_0" <= 0.5 THEN CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.484021186828613 THEN CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Timezone_3" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.7178324460983276 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.926230788230896 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 3.9843950271606445 THEN CASE
                          WHEN "Pressure(in)" <= 20.504090309143066 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN 3.0
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 1.3295056223869324 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.7620465755462646 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN 2.0
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.01031219959259 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24277.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.373838424682617 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.6627399921417236 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_0" <= 0.5 THEN CASE
                      WHEN "Temperature(F)" <= 3.4276353120803833 THEN CASE
                        WHEN "Source_1" <= 0.5 THEN CASE
                          WHEN "Description" <= 14.5 THEN CASE
                            WHEN "Pressure(in)" <= 30.225253105163574 THEN CASE
                              WHEN "Description" <= 13.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.3457228541374207 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 1.28810453414917 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.328763008117676 THEN 1.0
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
                        WHEN "Temperature(F)" <= 4.103135347366333 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.4169185161590576 THEN CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.6782284379005432 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Source_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.913207769393921 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.84462070465088 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Source_0" <= 0.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24240.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 17.5 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 4.818100929260254 THEN 2.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.4011824131011963 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.0 THEN CASE
                          WHEN "Pressure(in)" <= 30.14512062072754 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24218.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.909728050231934 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE 3.0
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 24.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24261.5 THEN 1.0
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
                END
              END
              ELSE CASE
                WHEN "Airport_Code_5" <= 0.5 THEN CASE
                  WHEN "Description" <= 11.5 THEN CASE
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24246.5 THEN CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 16.5 THEN CASE
                              WHEN "Pressure(in)" <= 25.717759132385254 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24196.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.395536422729492 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.2718541622161865 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.69437026977539 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= -0.1597839593887329 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Visibility(mi)" <= 1.3145302534103394 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.533926010131836 THEN 2.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 2.506445050239563 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.40388774871826 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 12.5 THEN CASE
                            WHEN "Visibility(mi)" <= 2.4412704706192017 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 21.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 25.312085151672363 THEN CASE
                            WHEN "Pressure(in)" <= 25.277026176452637 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.515247106552124 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.7178325057029724 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 25.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 27.22025775909424 THEN CASE
                            WHEN "Humidity(%)" <= 3.7923604249954224 THEN 3.0
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Source_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.552613377571106 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 4.250058889389038 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 4.449368715286255 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.614980936050415 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source_1" <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 2.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 1.7035428285598755 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.0 THEN CASE
                              WHEN "Description" <= 15.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 27.89137363433838 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 1.5568166375160217 THEN CASE
                              WHEN "Temperature(F)" <= 1.5040432214736938 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 25.477359771728516 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.2956448793411255 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.08450551703572273 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.0 THEN CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.86799716949463 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 32.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.0317776203155518 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 0.283337265253067 THEN 3.0
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
                    ELSE CASE
                      WHEN "Zipcode" <= 11.5 THEN CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN "Temperature(F)" <= 0.5013477355241776 THEN CASE
                            WHEN "Pressure(in)" <= 30.22525405883789 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.9665718078613281 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.89470386505127 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                              WHEN "Humidity(%)" <= 1.0679635405540466 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Temperature(F)" <= 1.3905802965164185 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.2045252323150635 THEN CASE
                              WHEN "Visibility(mi)" <= 0.4131380766630173 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Weather_Condition" <= 1.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 4.1052186489105225 THEN CASE
                            WHEN "Humidity(%)" <= 3.83595073223114 THEN CASE
                              WHEN "Pressure(in)" <= 29.854637145996094 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 25.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE 1.0
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Wind_Chill(F)" <= 3.466082811355591 THEN CASE
                    WHEN "Source_0" <= 0.5 THEN CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN "Visibility(mi)" <= 1.3145302534103394 THEN CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 13.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24217.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.734437942504883 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.984853744506836 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 2.7286183834075928 THEN CASE
                              WHEN "Humidity(%)" <= 4.119287967681885 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.3844683170318604 THEN CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.855167865753174 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 6.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 30.325420379638672 THEN CASE
                              WHEN "Zipcode" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.072768449783325 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 4.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.4143283367156982 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24226.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24204.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.16014575958252 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 0.08450551703572273 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Description" <= 30.5 THEN CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24277.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.453965187072754 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Description" <= 47.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 0.5162250995635986 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.118412971496582 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN CASE
                      WHEN "Airport_Code_0" <= 0.5 THEN CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN "Description" <= 6.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Zipcode" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.075697660446167 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.52408790588379 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                              WHEN "Source_1" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 33.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.45062828063965 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Humidity(%)" <= 3.1167099475860596 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24247.5 THEN CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 28.642621994018555 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.684354782104492 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Airport_Code_0" <= 0.5 THEN CASE
                          WHEN "Description" <= 5.5 THEN CASE
                            WHEN "Temperature(F)" <= 1.2665627002716064 THEN CASE
                              WHEN "Pressure(in)" <= 30.115070343017578 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Source_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.5962038040161133 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 2.699361801147461 THEN 1.0
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.337239742279053 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 3.74427592754364 THEN CASE
                          WHEN "Source_0" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 3.593871593475342 THEN CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.19520378112793 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 1.635976791381836 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_2" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24245.5 THEN CASE
                            WHEN "Zipcode" <= 13.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 2.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 2.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Description" <= 8.5 THEN CASE
                    WHEN "Pressure(in)" <= 25.076693534851074 THEN CASE
                      WHEN "Zipcode" <= 146.0 THEN CASE
                        WHEN "Source_1" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 21.846322059631348 THEN CASE
                            WHEN "Pressure(in)" <= 10.131845686584711 THEN 1.0
                            ELSE CASE
                              WHEN "Pressure(in)" <= 20.89974880218506 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24238.5 THEN CASE
                            WHEN "Zipcode" <= 39.5 THEN CASE
                              WHEN "Pressure(in)" <= 24.555827140808105 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 0.8707618415355682 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 137.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_2" <= 0.5 THEN CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Visibility(mi)" <= 1.6901103258132935 THEN 1.0
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 2.2534804344177246 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 6.5 THEN 1.0
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.892002671957016 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Source_0" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 153.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.301875829696655 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Description" <= 7.5 THEN CASE
                            WHEN "Description" <= 6.5 THEN CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 1.8525898456573486 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.0496577024459839 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 6.5 THEN CASE
                            WHEN "Visibility(mi)" <= 4.037485599517822 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.44610595703125 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Source_1" <= 0.5 THEN 1.0
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
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 25.18687629699707 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Source_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Source_0" <= 0.5 THEN CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24246.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Zipcode" <= 525.5 THEN CASE
                      WHEN "Temperature(F)" <= 1.5277912616729736 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24223.0 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 301.0 THEN CASE
                              WHEN "Pressure(in)" <= 30.285353660583496 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.1843661069869995 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= -2.3820101022720337 THEN 2.0
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.285353660583496 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24241.0 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Visibility(mi)" <= 2.8168505430221558 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24224.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24209.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 1.6322546005249023 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Source_2" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24228.5 THEN CASE
                              WHEN "Source_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.233604431152344 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24238.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24210.0 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24230.5 THEN CASE
                        WHEN "Source_1" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 526.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 2208.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 4.068832635879517 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 5.406639575958252 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                          WHEN "Humidity(%)" <= 1.5038670301437378 THEN CASE
                            WHEN "Pressure(in)" <= 29.023255348205566 THEN CASE
                              WHEN "Pressure(in)" <= 28.98318862915039 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.056054353713989 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.974439859390259 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.203547239303589 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24246.5 THEN CASE
                            WHEN "Zipcode" <= 715.5 THEN CASE
                              WHEN "Source_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.7178324460983276 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 4.3010358810424805 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24229.5 THEN CASE
                    WHEN "Timezone_1" <= 0.5 THEN CASE
                      WHEN "Source_1" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24208.5 THEN CASE
                          WHEN "Visibility(mi)" <= 0.33802206814289093 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 103.5 THEN CASE
                              WHEN "Humidity(%)" <= 1.808999478816986 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Humidity(%)" <= 2.462854743003845 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Source_0" <= 0.5 THEN 2.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 492.0 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 346.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.468996047973633 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 1294.0 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 570.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24211.5 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 13.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24209.5 THEN CASE
                          WHEN "Temperature(F)" <= 4.116328716278076 THEN CASE
                            WHEN "Wind_Chill(F)" <= 1.3003956079483032 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.2413984537124634 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 1.5474573969841003 THEN CASE
                              WHEN "Zipcode" <= 268.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 2.8168505430221558 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 1.020159125328064 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 0.9636201858520508 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 210.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN CASE
                          WHEN "Source_2" <= 0.5 THEN CASE
                            WHEN "Source_1" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.552613377571106 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 1.808999478816986 THEN CASE
                              WHEN "Pressure(in)" <= 30.075003623962402 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 16.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.67433738708496 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.860377550125122 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Timezone_3" <= 0.5 THEN CASE
                      WHEN "Zipcode" <= 334.0 THEN CASE
                        WHEN "Source_1" <= 0.5 THEN CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 25.15682601928711 THEN CASE
                              WHEN "Source_2" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_2" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 2.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 12.5 THEN CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.4169185161590576 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Description" <= 18.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Source_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.40388774871826 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.466082811355591 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
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
                    ELSE CASE
                      WHEN "Source_1" <= 0.5 THEN CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 28.512405395507812 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Description" <= 21.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 573.0 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.65430450439453 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 17.5 THEN CASE
                            WHEN "Zipcode" <= 233.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.20646858215332 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 1.6901103258132935 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.99487018585205 THEN CASE
                              WHEN "Temperature(F)" <= 2.137324571609497 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 11.5 THEN CASE
                          WHEN "Zipcode" <= 492.0 THEN CASE
                            WHEN "Humidity(%)" <= 1.5474573969841003 THEN CASE
                              WHEN "Humidity(%)" <= 0.9807828366756439 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 24.696060180664062 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.8141554594039917 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.293649435043335 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Source_1" <= 0.5 THEN CASE
                  WHEN "Zipcode" <= 208.5 THEN CASE
                    WHEN "Airport_Code_1" <= 0.5 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 3.6627399921417236 THEN CASE
                          WHEN "Description" <= 35.5 THEN CASE
                            WHEN "Pressure(in)" <= 25.297060012817383 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Source_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 50.5 THEN CASE
                              WHEN "Zipcode" <= 36.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24257.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 25.241968154907227 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 98.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 176.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24257.5 THEN CASE
                          WHEN "Pressure(in)" <= 27.460657119750977 THEN CASE
                            WHEN "Pressure(in)" <= 27.45064067840576 THEN CASE
                              WHEN "Pressure(in)" <= 26.489041328430176 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.286139726638794 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 4.744354486465454 THEN CASE
                              WHEN "Source_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 2.137324571609497 THEN CASE
                            WHEN "Temperature(F)" <= 2.0845510959625244 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24275.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                          WHEN "Visibility(mi)" <= 0.2591502517461777 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.515247106552124 THEN CASE
                              WHEN "Wind_Chill(F)" <= 0.9095394611358643 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.92308807373047 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.913071632385254 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Source_2" <= 0.5 THEN CASE
                              WHEN "Description" <= 6.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_2" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.29107129573822 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 14.5 THEN CASE
                          WHEN "Zipcode" <= 34.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 0.4178965091705322 THEN CASE
                              WHEN "Humidity(%)" <= 3.3782520294189453 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24275.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.52408790588379 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 0.8064214587211609 THEN CASE
                            WHEN "Source_2" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 3.6677544116973877 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 3.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.8788483142852783 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source_0" <= 0.5 THEN CASE
                      WHEN "Airport_Code_5" <= 0.5 THEN CASE
                        WHEN "Temperature(F)" <= 3.034473180770874 THEN CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.9816997051239014 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.7286183834075928 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 18.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.8761112689971924 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_1" <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 0.5012889951467514 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.392336368560791 THEN 1.0
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.819579124450684 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.1400198936462402 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 4.154382944107056 THEN CASE
                              WHEN "Humidity(%)" <= 2.070541501045227 THEN 2.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.4739508628845215 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Temperature(F)" <= 2.3484182357788086 THEN CASE
                        WHEN "Timezone_1" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 428.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 1.6623635292053223 THEN CASE
                              WHEN "Humidity(%)" <= 2.724396824836731 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Description" <= 7.5 THEN CASE
                              WHEN "Temperature(F)" <= 1.4512697458267212 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 221.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= -0.2374805063009262 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.373838424682617 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 3.944926619529724 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.754470825195312 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 453.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Zipcode" <= 428.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.06165599822998 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Description" <= 36.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                    WHEN "Airport_Code_5" <= 0.5 THEN CASE
                      WHEN "Wind_Chill(F)" <= 3.466082811355591 THEN CASE
                        WHEN "Humidity(%)" <= 2.288493275642395 THEN CASE
                          WHEN "Pressure(in)" <= 24.46567726135254 THEN CASE
                            WHEN "Zipcode" <= 126.0 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24261.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.4995110034942627 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.69437026977539 THEN CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
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
                      ELSE CASE
                        WHEN "Pressure(in)" <= 25.327109336853027 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN 1.0
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.91797536611557 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 77.0 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.248262405395508 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_8" <= 0.5 THEN CASE
                        WHEN "Description" <= 10.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 4.3510401248931885 THEN CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24257.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 1984.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.807896614074707 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.860375165939331 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 186.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.9419896602630615 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 28.2319393157959 THEN CASE
                          WHEN "Description" <= 12.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Description" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 2.4412704706192017 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.3484182357788086 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 207.0 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Timezone_3" <= 0.5 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 429.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 729.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Temperature(F)" <= 4.353809356689453 THEN CASE
                      WHEN "Pressure(in)" <= 29.60422134399414 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Timezone_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.6627399921417236 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Visibility(mi)" <= 2.8168505430221558 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN CASE
                              WHEN "Weather_Condition" <= 1.5 THEN 2.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.8233792781829834 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 0.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Weather_Condition" <= 0.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.032107353210449 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.2718541622161865 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.684353828430176 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 3.3782520294189453 THEN CASE
                            WHEN "Temperature(F)" <= 3.192793369293213 THEN CASE
                              WHEN "Pressure(in)" <= 30.31540298461914 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 3.034473180770874 THEN 1.0
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
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Humidity(%)" <= 1.7654091119766235 THEN CASE
                              WHEN "Pressure(in)" <= 25.527442932128906 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 140.0 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 1.1987345814704895 THEN CASE
                              WHEN "Pressure(in)" <= 29.3738374710083 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Description" <= 7.5 THEN CASE
                              WHEN "Temperature(F)" <= 4.406582832336426 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 5.6203718185424805 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 0.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 12.5 THEN CASE
                          WHEN "Temperature(F)" <= 4.987090587615967 THEN CASE
                            WHEN "Pressure(in)" <= 29.393871307373047 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 350.5 THEN CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Humidity(%)" <= 3.334661602973938 THEN CASE
                              WHEN "Description" <= 17.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.978179931640625 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS "tree_2",
          CASE
            WHEN "Source_1" <= 0.5 THEN CASE
              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24248.5 THEN CASE
                WHEN "Description" <= 9.5 THEN CASE
                  WHEN "Timezone_0" <= 0.5 THEN CASE
                    WHEN "Wind_Chill(F)" <= 3.711904287338257 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 6.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Pressure(in)" <= 24.75115203857422 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.29107455909252167 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.874670028686523 THEN CASE
                          WHEN "Temperature(F)" <= 4.08202600479126 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                              WHEN "Pressure(in)" <= 29.423921585083008 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.7944107055664062 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 4.108412742614746 THEN 2.0
                            ELSE CASE
                              WHEN "Temperature(F)" <= 5.002922534942627 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                            WHEN "Zipcode" <= 1314.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.29107455909252167 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 7.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_8" <= 0.5 THEN CASE
                        WHEN "Wind_Chill(F)" <= 4.793518781661987 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                            WHEN "Humidity(%)" <= 2.37567400932312 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.064987182617188 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24245.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24241.0 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24236.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 637.0 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.941011667251587 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                            WHEN "Pressure(in)" <= 24.585877418518066 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.7218188047409058 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 86.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 7.5 THEN CASE
                            WHEN "Humidity(%)" <= 0.6756503880023956 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.76106858253479 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 526.5 THEN 1.0
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
                    WHEN "Pressure(in)" <= 29.03327178955078 THEN CASE
                      WHEN "Temperature(F)" <= 2.2956448793411255 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24241.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.752805709838867 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.1637113094329834 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 1.2929494380950928 THEN 1.0
                            ELSE CASE
                              WHEN "Weather_Condition" <= 1.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Zipcode" <= 254.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.85297203063965 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.782855987548828 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 28.55247211456299 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 339.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 3.351113796234131 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 199.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 107.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24239.0 THEN CASE
                              WHEN "Humidity(%)" <= 1.0461683571338654 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.2038906812667847 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 5.5 THEN CASE
                              WHEN "Zipcode" <= 188.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_4" <= 0.5 THEN CASE
                        WHEN "Temperature(F)" <= 1.8602639436721802 THEN CASE
                          WHEN "Pressure(in)" <= 29.644287109375 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Description" <= 7.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 520.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 0.8450551629066467 THEN CASE
                              WHEN "Description" <= 4.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.4192644357681274 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                            WHEN "Source_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 4.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.8206838369369507 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.504054069519043 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Weather_Condition" <= 1.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 737.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Timezone_3" <= 0.5 THEN CASE
                    WHEN "Zipcode" <= 50.5 THEN CASE
                      WHEN "Zipcode" <= 3.5 THEN CASE
                        WHEN "Source_2" <= 0.5 THEN CASE
                          WHEN "Visibility(mi)" <= 24.412704467773438 THEN CASE
                            WHEN "Zipcode" <= 1.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.018779003992676735 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE 1.0
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 30.620911598205566 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24217.5 THEN 2.0
                            ELSE 1.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 12.5 THEN CASE
                            WHEN "Temperature(F)" <= 1.8497092723846436 THEN CASE
                              WHEN "Pressure(in)" <= 30.325420379638672 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.534104347229004 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 13.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.63927936553955 THEN CASE
                              WHEN "Zipcode" <= 40.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.56581974029541 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.3748050928115845 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.6691278219223022 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.8525897860527039 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 176.5 THEN CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Source_2" <= 0.5 THEN CASE
                            WHEN "Description" <= 12.5 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.105053901672363 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 12.5 THEN CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.195679187774658 THEN 3.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Source_0" <= 0.5 THEN 2.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.475669860839844 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 14.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Source_2" <= 0.5 THEN CASE
                            WHEN "Timezone_2" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 16.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.27367115020752 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Source_0" <= 0.5 THEN CASE
                      WHEN "Airport_Code_2" <= 0.5 THEN CASE
                        WHEN "Airport_Code_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.5 THEN CASE
                              WHEN "Zipcode" <= 155.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 592.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.1710970401763916 THEN CASE
                              WHEN "Zipcode" <= 63.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 3.087246537208557 THEN CASE
                              WHEN "Humidity(%)" <= 4.293649435043335 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 51.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 716.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.0 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.004886627197266 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 28.933104515075684 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24239.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN CASE
                            WHEN "Humidity(%)" <= 1.808999478816986 THEN CASE
                              WHEN "Zipcode" <= 478.0 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 1101.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.704387664794922 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_5" <= 0.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN CASE
                          WHEN "Wind_Chill(F)" <= 2.4827969074249268 THEN CASE
                            WHEN "Temperature(F)" <= 2.1900980472564697 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24203.5 THEN 2.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.65931224822998 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 3.4654327630996704 THEN CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 4.293649435043335 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.964820861816406 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 14.5 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.6914457082748413 THEN 0.0
                            ELSE CASE
                              WHEN "Description" <= 16.0 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Wind_Chill(F)" <= 1.526551365852356 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 1.3747482299804688 THEN CASE
                              WHEN "Zipcode" <= 72.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 1.1406116485595703 THEN CASE
                              WHEN "Pressure(in)" <= 27.560823440551758 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 8.5 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Description" <= 17.5 THEN CASE
                              WHEN "Visibility(mi)" <= 2.8168505430221558 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24234.0 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 102.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 29.744454383850098 THEN CASE
                  WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                    WHEN "Humidity(%)" <= 1.5474573969841003 THEN CASE
                      WHEN "Source_2" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 166.5 THEN CASE
                          WHEN "Visibility(mi)" <= 0.32863256335258484 THEN CASE
                            WHEN "Pressure(in)" <= 28.95814609527588 THEN 1.0
                            ELSE 3.0
                          END
                          ELSE CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 53.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.6095900535583496 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE 3.0
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 129.0 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 2.335304021835327 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.443954467773438 THEN CASE
                              WHEN "Temperature(F)" <= 3.7205278873443604 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.4740047454834 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN CASE
                            WHEN "Temperature(F)" <= 3.2455668449401855 THEN CASE
                              WHEN "Zipcode" <= 695.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24266.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Timezone_1" <= 0.5 THEN CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 4.154382944107056 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 4.547697305679321 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 2.0
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 42.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 78.0 THEN CASE
                              WHEN "Description" <= 50.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 4.353809356689453 THEN CASE
                          WHEN "Zipcode" <= 86.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.893038749694824 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.03327178955078 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 7.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.56749725341797 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.527430534362793 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.400204420089722 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_0" <= 0.5 THEN CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24272.5 THEN CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.072768449783325 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.8761112689971924 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 112.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 29.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 24.17519474029541 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.584187507629395 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Source_0" <= 0.5 THEN CASE
                          WHEN "Timezone_2" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 4.7232232093811035 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.46027672290802 THEN 0.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 4.7232232093811035 THEN 1.0
                            ELSE 0.0
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 109.5 THEN CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 200.5 THEN 1.0
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
                    ELSE CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN "Airport_Code_10" <= 0.5 THEN CASE
                          WHEN "Timezone_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.143454551696777 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 82.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.119287967681885 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.28202247619629 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 28.878013610839844 THEN CASE
                            WHEN "Description" <= 2.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 3.568010687828064 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.250059127807617 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Timezone_0" <= 0.5 THEN CASE
                          WHEN "Visibility(mi)" <= 1.3145302534103394 THEN CASE
                            WHEN "Temperature(F)" <= 3.6677544116973877 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.466082811355591 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.133438110351562 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 11.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 27.480690002441406 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 25.4673433303833 THEN 3.0
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24275.5 THEN 1.0
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
                    WHEN "Source_0" <= 0.5 THEN CASE
                      WHEN "Humidity(%)" <= 3.334661602973938 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.1851863861084 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 2.74619197845459 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Temperature(F)" <= 4.512129783630371 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 269.0 THEN 0.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN 2.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 100.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.424786567687988 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Temperature(F)" <= 3.1400198936462402 THEN CASE
                          WHEN "Airport_Code_4" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 221.0 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.4011824131011963 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.8761112689971924 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 137.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 3.76106858253479 THEN CASE
                            WHEN "Timezone_0" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 319.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
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
                    ELSE CASE
                      WHEN "Airport_Code_1" <= 0.5 THEN CASE
                        WHEN "Timezone_3" <= 0.5 THEN CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 30.014904022216797 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.6650590896606445 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 3.5 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.988516926765442 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 4.032107353210449 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.05821491219103336 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 36.5 THEN CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 2.4336326122283936 THEN CASE
                              WHEN "Zipcode" <= 73.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 17.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 1.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.635976791381836 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Timezone_3" <= 0.5 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.7286183834075928 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.784521102905273 THEN 3.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 1.8436610698699951 THEN CASE
                              WHEN "Humidity(%)" <= 3.5744086503982544 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 38.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_3" <= 0.5 THEN CASE
                      WHEN "Timezone_3" <= 0.5 THEN CASE
                        WHEN "Source_2" <= 0.5 THEN CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Description" <= 7.5 THEN CASE
                              WHEN "Timezone_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Description" <= 15.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 44.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.0 THEN CASE
                              WHEN "Humidity(%)" <= 4.1628782749176025 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 0.0
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 59.0 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 86.0 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN "Temperature(F)" <= 1.6623635292053223 THEN 3.0
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Source_0" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.869662284851074 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 29.954803466796875 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.883979320526123 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24276.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 0.0
                          END
                          ELSE 1.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Temperature(F)" <= 2.876152753829956 THEN CASE
                        WHEN "Zipcode" <= 20.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24256.5 THEN CASE
                            WHEN "Timezone_1" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.5633701086044312 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24264.5 THEN CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.029929161071777 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN 1.0
                          ELSE CASE
                            WHEN "Description" <= 14.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.4011917114257812 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 17.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 29.5 THEN CASE
                          WHEN "Description" <= 14.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 4.547697305679321 THEN 1.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Timezone_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Source_2" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 2.0
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 26.0 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.8102328777313232 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 3.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 7.0 THEN 3.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 46.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone_0" <= 0.5 THEN CASE
                WHEN "Timezone_3" <= 0.5 THEN CASE
                  WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN CASE
                      WHEN "Visibility(mi)" <= 1.3145302534103394 THEN CASE
                        WHEN "Humidity(%)" <= 4.1628782749176025 THEN CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 27.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.048746347427368 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 84.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN CASE
                            WHEN "Zipcode" <= 26.5 THEN CASE
                              WHEN "Weather_Condition" <= 2.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.928982973098755 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 30.23526954650879 THEN CASE
                              WHEN "Humidity(%)" <= 4.20646858215332 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 67.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 31.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Weather_Condition" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_5" <= 0.5 THEN CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Humidity(%)" <= 0.4141083210706711 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.897248387336731 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Airport_Code_3" <= 0.5 THEN CASE
                        WHEN "Zipcode" <= 37.5 THEN CASE
                          WHEN "Airport_Code_0" <= 0.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.867749810218811 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 1.1971505880355835 THEN CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 231.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 157.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 22.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24267.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_0" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 0.7836856544017792 THEN CASE
                              WHEN "Zipcode" <= 4.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Timezone_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 426.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
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
                    WHEN "Temperature(F)" <= 4.195488929748535 THEN CASE
                      WHEN "Humidity(%)" <= 3.1167099475860596 THEN CASE
                        WHEN "Airport_Code_9" <= 0.5 THEN CASE
                          WHEN "Temperature(F)" <= 3.8788483142852783 THEN CASE
                            WHEN "Zipcode" <= 71.5 THEN CASE
                              WHEN "Description" <= 12.5 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 135.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 2.0656903982162476 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 4.5 THEN 0.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Visibility(mi)" <= 2.8168505430221558 THEN CASE
                            WHEN "Zipcode" <= 280.5 THEN 0.0
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.9580084085464478 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.466082811355591 THEN CASE
                              WHEN "Description" <= 11.5 THEN 0.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.163488388061523 THEN CASE
                              WHEN "Humidity(%)" <= 3.3782520294189453 THEN 0.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.037168502807617 THEN 0.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.014904022216797 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 8.5 THEN 0.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Visibility(mi)" <= 2.8168505430221558 THEN CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 2.2956448793411255 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 4.075697660446167 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Zipcode" <= 110.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 3.19243061542511 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Zipcode" <= 37.5 THEN CASE
                        WHEN "Weather_Condition" <= 1.5 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 5.039340257644653 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Timezone_2" <= 0.5 THEN 0.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE 1.0
                      END
                      ELSE CASE
                        WHEN "Humidity(%)" <= 3.0295292139053345 THEN CASE
                          WHEN "Humidity(%)" <= 1.6346380710601807 THEN CASE
                            WHEN "Pressure(in)" <= 25.65765953063965 THEN CASE
                              WHEN "Description" <= 9.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.3510401248931885 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 699.0 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 766.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 360.0 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.957725763320923 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 30.019911766052246 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
                ELSE CASE
                  WHEN "Zipcode" <= 133.0 THEN CASE
                    WHEN "Airport_Code_3" <= 0.5 THEN CASE
                      WHEN "Wind_Chill(F)" <= 5.039340257644653 THEN CASE
                        WHEN "Zipcode" <= 11.5 THEN CASE
                          WHEN "Zipcode" <= 5.5 THEN CASE
                            WHEN "Zipcode" <= 1.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.884687423706055 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_8" <= 0.5 THEN CASE
                            WHEN "Description" <= 12.5 THEN CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24211.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 62.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Temperature(F)" <= 5.4620513916015625 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                            ELSE CASE
                              WHEN "Airport_Code_7" <= 0.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 5.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 1.0
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN CASE
                            WHEN "Pressure(in)" <= 27.881357192993164 THEN 1.0
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 5.285161733627319 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE 0.0
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 13.5 THEN CASE
                        WHEN "Zipcode" <= 66.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Zipcode" <= 6.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.2045252323150635 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 3.160300374031067 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Wind_Chill(F)" <= 1.352018117904663 THEN CASE
                            WHEN "Temperature(F)" <= 1.459185779094696 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Zipcode" <= 110.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24209.5 THEN CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN "Description" <= 22.5 THEN CASE
                              WHEN "Temperature(F)" <= 1.635976791381836 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 2.0
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 0.6009281128644943 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 20.5 THEN CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 2.844488739967346 THEN CASE
                              WHEN "Description" <= 19.5 THEN 1.0
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
                    WHEN "Temperature(F)" <= 3.0133637189865112 THEN CASE
                      WHEN "Description" <= 8.5 THEN CASE
                        WHEN "Description" <= 7.5 THEN CASE
                          WHEN "Zipcode" <= 625.0 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.854637145996094 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24237.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24220.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24243.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_10" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.5 THEN CASE
                              WHEN "Humidity(%)" <= 4.141083002090454 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.0 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.195679187774658 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 475.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_2" <= 0.5 THEN CASE
                          WHEN "Zipcode" <= 500.5 THEN CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.195679187774658 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN CASE
                            WHEN "Humidity(%)" <= 4.337239742279053 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 2.010819673538208 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_6" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Visibility(mi)" <= 3.19243061542511 THEN CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24262.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 615.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 10.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24241.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24235.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 30.205220222473145 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24242.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Pressure(in)" <= 29.804553985595703 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Zipcode" <= 667.0 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_3" <= 0.5 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 499.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 1.0
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
                END
              END
              ELSE CASE
                WHEN "Zipcode" <= 16.5 THEN CASE
                  WHEN "Airport_Code_0" <= 0.5 THEN CASE
                    WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24250.5 THEN CASE
                        WHEN "Pressure(in)" <= 29.79453754425049 THEN CASE
                          WHEN "Zipcode" <= 9.5 THEN CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.988516926765442 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24207.0 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.837946891784668 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 1.2876720428466797 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 4.021336555480957 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24246.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 1.7182921171188354 THEN CASE
                              WHEN "Humidity(%)" <= 4.032107353210449 THEN 1.0
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
                        WHEN "Airport_Code_1" <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 2.506445050239563 THEN CASE
                            WHEN "Humidity(%)" <= 0.6756503880023956 THEN CASE
                              WHEN "Humidity(%)" <= 0.6320600509643555 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 1.0570323467254639 THEN CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 9.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 5.5 THEN CASE
                            WHEN "Temperature(F)" <= 4.406582832336426 THEN CASE
                              WHEN "Humidity(%)" <= 2.7679871320724487 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 2.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
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
                      WHEN "Description" <= 9.5 THEN CASE
                        WHEN "Zipcode" <= 15.5 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24269.5 THEN CASE
                            WHEN "Pressure(in)" <= 29.764487266540527 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.141083002090454 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 3.568010687828064 THEN 0.0
                              ELSE 0.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_1" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.9331436157226562 THEN 0.0
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                            ELSE 0.0
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Zipcode" <= 9.5 THEN CASE
                          WHEN "Description" <= 15.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.52408790588379 THEN 1.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 3.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_2" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 4.326457977294922 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.515247106552124 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Humidity(%)" <= 2.5500353574752808 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 4.116328716278076 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Airport_Code_7" <= 0.5 THEN CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24249.5 THEN CASE
                        WHEN "Zipcode" <= 3.5 THEN CASE
                          WHEN "Visibility(mi)" <= 0.7136021256446838 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24233.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24216.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE 1.0
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 4.006890058517456 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.32375431060791 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Pressure(in)" <= 28.121755599975586 THEN CASE
                            WHEN "Zipcode" <= 6.5 THEN CASE
                              WHEN "Pressure(in)" <= 27.76115608215332 THEN 2.0
                              ELSE 3.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.1987345814704895 THEN 3.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 1.511959195137024 THEN CASE
                              WHEN "Visibility(mi)" <= 0.6197071075439453 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Weather_Condition" <= 0.5 THEN CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Airport_Code_8" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 1.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 10.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_6" <= 0.5 THEN CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 28.42726421356201 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24251.0 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 3.3782520294189453 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 0.9095394611358643 THEN 3.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24246.5 THEN CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 4.670608043670654 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE 2.0
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24234.5 THEN CASE
                              WHEN "Visibility(mi)" <= 3.19243061542511 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 9.5 THEN CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.964820861816406 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.515247106552124 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.4169185161590576 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_4" <= 0.5 THEN CASE
                          WHEN "Humidity(%)" <= 4.293649435043335 THEN CASE
                            WHEN "Zipcode" <= 2.5 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 10.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN CASE
                              WHEN "Zipcode" <= 12.0 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE 0.0
                          END
                        END
                        ELSE CASE
                          WHEN "Description" <= 11.5 THEN CASE
                            WHEN "Zipcode" <= 1.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 28.862988471984863 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_9" <= 0.5 THEN CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
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
                  WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24268.5 THEN CASE
                    WHEN "Description" <= 10.5 THEN CASE
                      WHEN "Temperature(F)" <= 1.5277912616729736 THEN CASE
                        WHEN "Zipcode" <= 367.0 THEN CASE
                          WHEN "Airport_Code_2" <= 0.5 THEN CASE
                            WHEN "Airport_Code_7" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 2.0656903982162476 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24223.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24223.5 THEN CASE
                              WHEN "Pressure(in)" <= 30.085020065307617 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 248.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_7" <= 0.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24238.5 THEN CASE
                              WHEN "Description" <= 8.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.313737869262695 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 0.04178965091705322 THEN CASE
                              WHEN "Zipcode" <= 900.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_7" <= 0.5 THEN CASE
                          WHEN "Description" <= 8.5 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.498533010482788 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 9.5 THEN CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 280.0 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Zipcode" <= 252.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.5644114017486572 THEN 1.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Pressure(in)" <= 29.704387664794922 THEN CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Pressure(in)" <= 28.943121910095215 THEN CASE
                        WHEN "Temperature(F)" <= 2.612285614013672 THEN CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24253.5 THEN CASE
                            WHEN "Humidity(%)" <= 4.075697660446167 THEN CASE
                              WHEN "Wind_Chill(F)" <= 1.794496774673462 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Wind_Chill(F)" <= 2.1386468410491943 THEN CASE
                              WHEN "Description" <= 12.5 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_3" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Weather_Condition" <= 0.5 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_8" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_9" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_3" <= 0.5 THEN CASE
                              WHEN "Visibility(mi)" <= 3.19243061542511 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_5" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Description" <= 13.5 THEN CASE
                          WHEN "Zipcode" <= 1068.0 THEN CASE
                            WHEN "Airport_Code_6" <= 0.5 THEN CASE
                              WHEN "Airport_Code_2" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 11.5 THEN CASE
                              WHEN "Airport_Code_4" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Humidity(%)" <= 2.462854743003845 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24225.5 THEN CASE
                            WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24210.5 THEN CASE
                              WHEN "Visibility(mi)" <= 5.258120775222778 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 1051.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_5" <= 0.5 THEN CASE
                              WHEN "Description" <= 17.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Pressure(in)" <= 29.69437026977539 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                  ELSE CASE
                    WHEN "Humidity(%)" <= 2.7679871320724487 THEN CASE
                      WHEN "Pressure(in)" <= 28.71273899078369 THEN CASE
                        WHEN "Temperature(F)" <= 4.564903020858765 THEN CASE
                          WHEN "Pressure(in)" <= 28.537447929382324 THEN CASE
                            WHEN "Humidity(%)" <= 1.5692525506019592 THEN 1.0
                            ELSE 0.0
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 2.702601671218872 THEN CASE
                              WHEN "Zipcode" <= 59.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE 0.0
                          END
                        END
                        ELSE CASE
                          WHEN "Airport_Code_9" <= 0.5 THEN CASE
                            WHEN "Airport_Code_1" <= 0.5 THEN CASE
                              WHEN "Humidity(%)" <= 1.5256622433662415 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Zipcode" <= 65.0 THEN 0.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN 0.0
                            ELSE CASE
                              WHEN "Humidity(%)" <= 1.830794632434845 THEN 1.0
                              ELSE 0.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_8" <= 0.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.904720306396484 THEN CASE
                            WHEN "Airport_Code_10" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 11.5 THEN 1.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Airport_Code_4" <= 0.5 THEN CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 4.498533010482788 THEN 1.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 1046.5 THEN CASE
                            WHEN "Humidity(%)" <= 1.5038670301437378 THEN CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_1" <= 0.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Visibility(mi)" <= 3.568010687828064 THEN CASE
                              WHEN "Description" <= 12.0 THEN 0.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 9.5 THEN 0.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                    ELSE CASE
                      WHEN "Description" <= 10.5 THEN CASE
                        WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN CASE
                          WHEN "Pressure(in)" <= 29.443954467773438 THEN CASE
                            WHEN "Wind_Chill(F)" <= 3.1219327449798584 THEN CASE
                              WHEN "Zipcode" <= 1094.0 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Visibility(mi)" <= 0.9389501810073853 THEN 1.0
                              ELSE 0.0
                            END
                          END
                          ELSE CASE
                            WHEN "Temperature(F)" <= 3.298340320587158 THEN CASE
                              WHEN "Pressure(in)" <= 29.504054069519043 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.8102328777313232 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN CASE
                            WHEN "Description" <= 8.5 THEN CASE
                              WHEN "Zipcode" <= 1560.0 THEN 0.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Airport_Code_10" <= 0.5 THEN 0.0
                              ELSE 1.0
                            END
                          END
                          ELSE CASE
                            WHEN "Weather_Condition" <= 0.5 THEN CASE
                              WHEN "Temperature(F)" <= 4.1427154541015625 THEN 0.0
                              ELSE 0.0
                            END
                            ELSE CASE
                              WHEN "Wind_Chill(F)" <= 3.6135756969451904 THEN 0.0
                              ELSE 1.0
                            END
                          END
                        END
                      END
                      ELSE CASE
                        WHEN "Airport_Code_5" <= 0.5 THEN CASE
                          WHEN "Description" <= 12.5 THEN CASE
                            WHEN "Airport_Code_0" <= 0.5 THEN CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24271.5 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN date_part('year',"Start_Time"::DATE)*12+date_part('month',"Start_Time"::DATE) <= 24270.5 THEN 2.0
                              ELSE 2.0
                            END
                          END
                          ELSE CASE
                            WHEN "Humidity(%)" <= 4.1628782749176025 THEN CASE
                              WHEN "Description" <= 16.5 THEN 2.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 2.7178324460983276 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                        ELSE CASE
                          WHEN "Zipcode" <= 58.5 THEN CASE
                            WHEN "Humidity(%)" <= 3.4654327630996704 THEN CASE
                              WHEN "Pressure(in)" <= 29.70939540863037 THEN 1.0
                              ELSE 1.0
                            END
                            ELSE CASE
                              WHEN "Description" <= 25.5 THEN 2.0
                              ELSE 3.0
                            END
                          END
                          ELSE CASE
                            WHEN "Description" <= 13.5 THEN CASE
                              WHEN "Pressure(in)" <= 29.92475414276123 THEN 1.0
                              ELSE 2.0
                            END
                            ELSE CASE
                              WHEN "Temperature(F)" <= 3.7205278873443604 THEN 2.0
                              ELSE 2.0
                            END
                          END
                        END
                      END
                    END
                  END
                END
              END
            END
          END AS "tree_3"
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
              "Visibility(mi)",
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
                  (COALESCE("Temperature(F)", 77.0) -0.0) / (18.948923924075153) AS "Temperature(F)",
                  (COALESCE("Wind_Chill(F)", 73.0) -0.0) / (20.33996354611891) AS "Wind_Chill(F)",
                  (COALESCE("Humidity(%)", 93.0) -0.0) / (22.940857900228604) AS "Humidity(%)",
                  (COALESCE("Pressure(in)", 29.96) -0.0) / (0.9983373681781709) AS "Pressure(in)",
                  (COALESCE("Visibility(mi)", 10.0) -0.0) / (2.6625480852767667) AS "Visibility(mi)",
                  airport_code_0 AS "Airport_Code_0",
                   airport_code_1 AS "Airport_Code_1",
                   airport_code_2 AS "Airport_Code_2",
                   airport_code_3 AS "Airport_Code_3",
                   airport_code_4 AS "Airport_Code_4",
                   airport_code_5 AS "Airport_Code_5",
                   airport_code_6 AS "Airport_Code_6",
                   airport_code_7 AS "Airport_Code_7",
                   airport_code_8 AS "Airport_Code_8",
                   airport_code_9 AS "Airport_Code_9",
                   airport_code_10 AS "Airport_Code_10",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K01M','K06D','K08D','K0A9','K0E0','K0F2','K0J4','K11R','K1A5','K1A6','K1F0','K1J0','K1M4','K1R7','K1V4','K1V6','K1YT','K20V','K27A','K2C8','K2D5','K2I0','K2V5','K2W6','K2WX','K33V','K3DU','K3HT','K3J7','K3LF','K3MW','K3R7','K3T5','K42J','K46D','K48I','K4A6','K4BL','K4CR','K4HV','K4M9','K4MR','K4O4','K54J','K5H4','K5M9','K5T6','K5W8','K65S','K6A1','K6B0','K6R3','K6R6','K77M','K79J','K7L2','K82V','K8A0','K8D3','K8S0','K9A4','K9BB','K9D7','K9L2','K9V9','KAAA','KAAF','KAAO','KAAT','KABH','KABI','KABR','KACB','KACJ','KACP','KACT','KACV','KADG','KADH','KADM','KADU','KAEJ','KAFO','KAFP','KAHN','KAHQ','KAIA','KAIB','KAIG','KAIO','KAIZ','KAJG','KAJZ','KAKO','KALI','KALK','KALM','KALN','KALO','KALS','KALW','KAMA','KAMG','KAMN','KANJ','KANQ','KAOH','KAPN','KAPY','KAQO','KAQP','KAQR','KAQV','KARA','KARG','KARL','KARM','KARR','KARV','KASE','KASW','KASX','KATS','KAUG','KAUH','KAUW','KAVK','KAWH','KAXA','KAXS','KAXX','KAYS','KAZC','KAZE','KB23','KBAC','KBAF','KBAN','KBBD','KBBG','KBBP','KBBW','KBCE','KBCK','KBDE','KBEA','KBFF','KBFW','KBGD','KBGE','KBGR','KBHB','KBHK','KBIE','KBIH','KBIJ','KBIS','KBKD','KBKN','KBKS','KBLV','KBMI','KBMT','KBNW','KBOK','KBPG','KBPK','KBPP','KBPT','KBQP','KBRD','KBRL','KBRO','KBRX','KBTL','KBTV','KBUU','KBVI','KBVN','KBVO','KBVR','KBVU','KBVX','KBWD','KBWG','KBXA','KBYG','KBYI','KBYS','KBYY','KC35','KC75','KCAD','KCAG','KCAO','KCAV','KCBF','KCBG','KCBK','KCBM','KCCO','KCCY','KCDA','KCDJ','KCDR','KCDS','KCEY','KCEZ','KCFD','KCFV','KCGI','KCHK','KCIN','KCIR','KCIU','KCKF','KCKI','KCKM','KCKN','KCKP','KCKV','KCLI','KCLK','KCLL','KCLM','KCMR','KCMX','KCMY','KCNB','KCNC','KCNM','KCNU','KCNW','KCNY','KCOD','KCOM','KCOT','KCPR','KCPT','KCPW','KCQB','KCQC','KCQM','KCQV','KCQX','KCRP','KCRS','KCRV','KCSM','KCSQ','KCTD','KCTJ','KCTY','KCUL','KCUT','KCVN','KCVS','KCVX','KCWA','KCWN','KCYS','KD25','KD50','KD57','KD60','KD95','KDBN','KDBQ','KDCY','KDDC','KDEC','KDEH','KDEN','KDEQ','KDEW','KDFI','KDGW','KDHT','KDIJ','KDIK','KDKB','KDKR','KDLF','KDLH','KDLL','KDLN','KDMO','KDNN','KDNS','KDNV','KDPG','KDQH','KDRC','KDRI','KDRO','KDRT','KDSV','KDUA','KDUB','KDUC','KDUG','KDUX','KDVK','KDVL','KDVP','KDWX','KDXX','KDYA','KDYR','KDYS','KDYT','KDZB','KDZJ','KE11','KE33','KE80','KEAR','KEAT','KEBS','KECG','KECP','KECU','KEDE','KEDJ','KEDW','KEED','KEEN','KEEO','KEFC','KEFK','KEFT','KEGV','KEHA','KEHR','KEHY','KEKN','KEKQ','KELD','KELN','KELY','KEMM','KEMP','KEND','KENL','KENV','KENW','KEOK','KEPH','KEPZ','KERV','KERY','KESC','KESN','KEST','KETC','KEUF','KEVV','KEWK','KEWN','KEXX','KEYF','KEYW','KEZS','KF05','KF44','KFAM','KFBR','KFDR','KFDY','KFEP','KFET','KFEW','KFFA','KFFL','KFFM','KFHU','KFKS','KFLD','KFLG','KFLP','KFLY','KFMM','KFMN','KFNB','KFOD','KFOE','KFOK','KFPK','KFRI','KFRM','KFSD','KFSI','KFSK','KFSO','KFST','KFSW','KFTG','KFTN','KFVE','KFWB','KFWC','KFXY','KFZG','KGAF','KGAO','KGBD','KGBG','KGCC','KGCD','KGCK','KGCM','KGCN','KGDV','KGED','KGEV','KGEY','KGEZ','KGGG','KGGP','KGGW','KGHW','KGIC','KGKJ','KGLD','KGLH','KGLR','KGLS','KGLW','KGLY','KGMJ','KGNA','KGNC','KGNR','KGNT','KGOK','KGOP','KGOV','KGPH','KGRI','KGRK','KGSH','KGTB','KGTF','KGTR','KGUC','KGUN','KGUP','KGUS','KGUY','KGVT','KGWR','KGWW','KGXF','KGXY','KGYB','KGYI','KGZH','KGZL','KHAE','KHAI','KHBR','KHBV','KHCO','KHDC','KHDE','KHDN','KHDO','KHEI','KHEQ','KHEZ','KHFF','KHHF','KHHW','KHJH','KHKA','KHKY','KHLC','KHLR','KHMS','KHNB','KHND','KHNR','KHOB','KHOE','KHON','KHOP','KHQU','KHRJ','KHRL','KHRX','KHSA','KHSB','KHSE','KHSI','KHSV','KHTL','KHUF','KHUL','KHUM','KHUT','KHVR','KHWV','KHYI','KHYR','KHYS','KHZE','KHZR','KHZX','KI16','KI35','KI39','KI75','KIAB','KIBM','KICL','KICR','KIDA','KIDI','KIDP','KIDV','KIER','KIFA','KIFP','KIIB','KIIY','KIJX','KIKA','KILE','KILN','KIML','KIMT','KINK','KINL','KINS','KINW','KIOB','KIOW','KIPJ','KIPL','KIRK','KISN','KISO','KISQ','KISW','KITH','KIWD','KIWI','KIYA','KIZG','KJAC','KJAN','KJAS','KJCT','KJDD','KJDN','KJEF','KJES','KJHW','KJKA','KJKJ','KJKL','KJLN','KJSO','KJSV','KJWG','KJWY','KJXI','KJYM','KK22','KLAA','KLAL','KLAM','KLAR','KLAW','KLBF','KLBL','KLBR','KLBX','KLCG','KLCH','KLCI','KLDM','KLEB','KLEW','KLFK','KLHB','KLHQ','KLHW','KLHX','KLLJ','KLNR','KLOL','KLOR','KLPC','KLRD','KLSB','KLSE','KLSF','KLSV','KLUD','KLVS','KLWA','KLWB','KLWC','KLWD','KLWS','KLWT','KLWV','KLXN','KLXY','KLYV','KLZK','KLZZ','KM19','KM25','KM40','KMBG','KMBL','KMCB','KMCD','KMCK','KMCW','KMDD','KMDH','KMDS','KMDZ','KMEZ','KMFD','KMFV','KMGN','KMGR','KMHE','KMHK','KMHS','KMIB','KMIW','KMKN','KMKO','KMKY','KMLC','KMLF','KMLP','KMLS','KMLT','KMMI','KMML','KMMT','KMNE','KMNM','KMNN','KMNZ','KMOP','KMOT','KMOX','KMPV','KMPZ','KMQB','KMQI','KMRF','KMRH','KMRJ','KMSL','KMSS','KMSV','KMSY','KMTJ','KMTO','KMTP','KMTR','KMTW','KMUO','KMUT','KMVE','KMVL','KMVY','KMWA','KMWH','KMWN','KMWT','KMXO','KMYL','KMYP','KN60','KNBG','KNBJ','KNBT','KNDZ','KNEL','KNFL','KNGP','KNHK','KNHZ','KNJM','KNKT','KNMM','KNOG','KNQI','KNQX','KNSI','KNUI','KNUW','KNXP','KNZY','KOAJ','KOCH','KOCQ','KOCW','KODO','KODX','KOEB','KOFK','KOGA','KOJA','KOKH','KOKK','KOKM','KOKZ','KOLE','KOLF','KOLS','KOLU','KOLY','KOLZ','KOMK','KONL','KONM','KONZ','KOOA','KOQU','KORB','KORE','KORG','KOSA','KOSC','KOVS','KOWB','KOXI','KOXV','KOZA','KOZR','KP28','KP38','KP58','KP67','KP68','KP69','KPAH','KPBF','KPBG','KPBH','KPCW','KPCZ','KPDC','KPEA','KPEQ','KPGV','KPHD','KPHN','KPHP','KPIH','KPIL','KPIN','KPIR','KPKB','KPKD','KPKV','KPLN','KPMV','KPNA','KPNC','KPNT','KPOB','KPOF','KPPA','KPPF','KPPO','KPPQ','KPQI','KPRC','KPRG','KPRX','KPRZ','KPSC','KPSK','KPSM','KPSN','KPSO','KPTN','KPTS','KPTT','KPUM','KPUW','KPVB','KPVC','KPVJ','KPVW','KPWC','KPWG','KPYX','KPZQ','KRAP','KRBO','KRCA','KRCM','KRCR','KRCX','KRCZ','KRDK','KRDR','KREO','KRFD','KRFI','KRHI','KRHP','KRIL','KRIM','KRIW','KRKD','KRKP','KRKS','KRMG','KRNH','KRNP','KRNV','KROG','KROW','KROX','KRPD','KRPH','KRQB','KRQO','KRRL','KRRT','KRSL','KRSN','KRSV','KRTN','KRUE','KRUG','KRUT','KRWL','KRWV','KRYV','KRZN','KRZR','KRZZ','KS14','KS25','KS32','KSAA','KSAR','KSAW','KSBM','KSBO','KSBS','KSDA','KSDY','KSEP','KSET','KSGE','KSHL','KSHR','KSIB','KSIF','KSJT','KSKA','KSKX','KSLB','KSLG','KSLH','KSLK','KSLN','KSLR','KSME','KSMN','KSNK','KSNL','KSNT','KSNY','KSOA','KSOP','KSPD','KSPF','KSPW','KSQI','KSRE','KSRR','KSTE','KSTF','KSTK','KSUE','KSUN','KSUT','KSUW','KSVC','KSWO','KSWW','KSYF','KSZL','KSZT','KT20','KT35','KT43','KT65','KT82','KTAD','KTAZ','KTBN','KTBR','KTBX','KTCC','KTCS','KTDF','KTDR','KTEX','KTIP','KTKC','KTKV','KTMA','KTMH','KTMK','KTNB','KTOP','KTOR','KTPH','KTPL','KTQH','KTRM','KTUP','KTVC','KTVF','KTVR','KTWF','KTWM','KU28','KU31','KU78','KUBE','KUCY','KUIL','KUIN','KUKL','KUNI','KUNO','KUNR','KUNU','KUOX','KUSE','KUTA','KUTS','KUUU','KUVA','KUXL','KVAD','KVCT','KVDI','KVDW','KVEL','KVER','KVGT','KVIH','KVOK','KVPS','KVRB','KVTI','KVTP','KVUJ','KVWU','KVYS','KW22','KW43','KW99','KWAL','KWDG','KWEY','KWLD','KWMC','KWRB','KWRI','KWVL','KWWD','KWWR','KXFL','KXMR','KXNA','KXSA','KXVG','KXVW','KY22','KY50','KYKM','KYKN','KYNG') THEN 1 ELSE 0 END AS "Airport_Code_0",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K04V','K04W','K06D','K08D','K0F2','K0J4','K0VG','K11R','K12N','K14Y','K19A','K1F0','K1H2','K1II','K1P1','K1R7','K1V4','K20U','K27A','K2C8','K2D5','K2G4','K2I0','K2V5','K2WX','K33V','K3A1','K3HT','K3I2','K3TH','K40J','K46D','K48I','K4A9','K4BM','K4CR','K4M9','K4MR','K4O4','K4SL','K5C1','K5H4','K5SM','K5T6','K6R6','K79J','K7L2','K7R3','K82V','K87Q','K8D3','K8S0','K9A1','K9D7','KABE','KABH','KABQ','KABR','KACB','KACJ','KACP','KACQ','KACT','KADC','KADH','KADM','KAEG','KAEL','KAEX','KAFJ','KAFK','KAFN','KAFO','KAFW','KAGC','KAGS','KAHQ','KAIA','KAIB','KAIK','KAIZ','KAKQ','KAKR','KALI','KALK','KALM','KALX','KAMG','KAMW','KANB','KANJ','KANK','KAPY','KAQO','KAQR','KAQV','KAQW','KARA','KARG','KARM','KARR','KART','KARV','KASD','KASG','KASH','KASJ','KASL','KAST','KASX','KATS','KATW','KAUM','KAVK','KAVP','KAWG','KAWH','KAWM','KAWN','KAWO','KAXA','KAXX','KAZO','KBAD','KBAK','KBAZ','KBBB','KBBD','KBBG','KBDE','KBDG','KBDH','KBDL','KBDU','KBEA','KBFD','KBFF','KBFW','KBGD','KBGE','KBGF','KBGM','KBHB','KBHK','KBIE','KBIF','KBIL','KBIS','KBIV','KBIX','KBJI','KBKN','KBKS','KBLF','KBLH','KBLI','KBLM','KBLU','KBMG','KBML','KBNO','KBOI','KBOW','KBPK','KBPP','KBQK','KBQP','KBRO','KBTM','KBTP','KBTV','KBUO','KBUY','KBVN','KBVO','KBVR','KBVS','KBVX','KBVY','KBWD','KBXA','KBXK','KBYH','KBYS','KC09','KC29','KC35','KCAG','KCAK','KCAO','KCBK','KCBM','KCCA','KCCY','KCDA','KCDC','KCDH','KCDJ','KCDN','KCDR','KCDS','KCEF','KCEW','KCFD','KCFV','KCGC','KCGE','KCGZ','KCHJ','KCHK','KCIN','KCJR','KCKM','KCKN','KCKP','KCLE','KCLK','KCLL','KCLM','KCMS','KCMX','KCNB','KCNI','KCNO','KCOE','KCOM','KCON','KCOS','KCOT','KCOU','KCPC','KCPR','KCPT','KCQB','KCQF','KCQW','KCRE','KCRP','KCRV','KCRW','KCRX','KCSG','KCSV','KCTB','KCUH','KCUT','KCVB','KCVN','KCVO','KCVS','KCVX','KCWA','KCWC','KCWF','KCWI','KCWV','KCXP','KCXY','KCYS','KCZZ','KD25','KD39','KD50','KD60','KDAN','KDAW','KDCM','KDCU','KDDC','KDDH','KDEC','KDED','KDEH','KDEQ','KDEW','KDFW','KDGW','KDHN','KDKK','KDMN','KDNS','KDPL','KDRA','KDRC','KDRI','KDRO','KDRT','KDSV','KDTL','KDTN','KDTO','KDTS','KDUA','KDUB','KDUC','KDUG','KDUH','KDUJ','KDUX','KDVK','KDVL','KDVN','KDWX','KDXX','KDYR','KDZB','KE16','KE33','KEAU','KEBG','KEBS','KECU','KEDU','KEDW','KEFC','KEFK','KEFT','KEGE','KEHO','KEIK','KEKA','KEKM','KEKN','KEKO','KEKQ','KELD','KELM','KELN','KELZ','KEMM','KEMP','KEMV','KEND','KEOK','KEPH','KEPZ','KERV','KERY','KESC','KEST','KETB','KEUL','KEVB','KEVW','KEWB','KEWK','KEZM','KEZS','KF05','KF44','KF46','KFAF','KFAR','KFBL','KFCS','KFDR','KFEP','KFFA','KFFC','KFFT','KFFX','KFHU','KFIG','KFIT','KFKA','KFKL','KFKN','KFMH','KFMN','KFNB','KFOE','KFOZ','KFPR','KFQD','KFRI','KFSE','KFSI','KFSK','KFSO','KFTK','KFTN','KFTW','KFVE','KFWB','KFWC','KFWS','KFXY','KFYG','KFZY','KGAF','KGAO','KGBD','KGBG','KGBN','KGCC','KGCK','KGCN','KGDJ','KGFA','KGFK','KGGE','KGGI','KGGP','KGGW','KGHG','KGIC','KGIF','KGJT','KGKY','KGLD','KGLE','KGLH','KGLY','KGNA','KGNC','KGOK','KGOP','KGOV','KGPM','KGRB','KGRI','KGRK','KGSB','KGSH','KGSO','KGTB','KGTR','KGTU','KGUC','KGUS','KGUY','KGVL','KGWR','KGYI','KGYL','KGYR','KGYY','KGZL','KH21','KHAF','KHAO','KHBG','KHBR','KHBV','KHCO','KHDN','KHDO','KHEI','KHEQ','KHFJ','KHHF','KHHW','KHIB','KHJH','KHJO','KHLC','KHLG','KHLR','KHLX','KHMM','KHND','KHNZ','KHOE','KHON','KHOT','KHRL','KHRO','KHRT','KHRX','KHSA','KHSB','KHSE','KHTL','KHTO','KHUT','KHXD','KHYA','KHYR','KHYX','KHZE','KHZR','KHZX','KHZY','KI16','KI35','KI39','KI75','KIAG','KIBM','KICL','KICR','KIDP','KIDV','KIGX','KIIY','KIJX','KIKA','KIKK','KIKV','KIKW','KILE','KILM','KIML','KIMT','KINJ','KINL','KINS','KIOB','KISQ','KISW','KITH','KITR','KIWA','KIWD','KIWI','KIXA','KIXD','KIYA','KIYK','KIZA','KJAC','KJAS','KJBR','KJCT','KJDD','KJER','KJES','KJFZ','KJGG','KJKJ','KJKL','KJMR','KJMS','KJNW','KJSO','KJVL','KJWG','KJXI','KJYL','KK22','KKLS','KL35','KL38','KLAF','KLAM','KLAN','KLAS','KLAW','KLAX','KLBB','KLBE','KLBL','KLBR','KLBT','KLCG','KLCK','KLCQ','KLDM','KLEW','KLFI','KLFK','KLFT','KLGC','KLHB','KLIC','KLJF','KLLJ','KLLQ','KLMO','KLNK','KLNL','KLNP','KLNR','KLOL','KLOZ','KLRF','KLRO','KLRU','KLSB','KLUD','KLUF','KLUM','KLUX','KLVJ','KLVM','KLVN','KLWC','KLWD','KLWV','KLXL','KLXV','KLXY','KLZZ','KM16','KM30','KM46','KM89','KMAI','KMBG','KMBL','KMBS','KMCF','KMCI','KMCK','KMCN','KMDQ','KMDS','KMDZ','KMEB','KMEH','KMEI','KMFE','KMFI','KMGG','KMGJ','KMGN','KMHE','KMHK','KMHT','KMHV','KMIB','KMIV','KMJX','KMKE','KMKG','KMKL','KMKN','KMKO','KMKS','KMLB','KMLC','KMLD','KMLI','KMLJ','KMLT','KMMH','KMML','KMMV','KMNH','KMNM','KMNZ','KMOB','KMPV','KMQB','KMQI','KMQJ','KMRB','KMRF','KMRH','KMRN','KMRT','KMRY','KMSN','KMSO','KMTH','KMTP','KMTR','KMTV','KMUI','KMUL','KMVE','KMVL','KMVN','KMWK','KMWL','KMWM','KMWN','KMWT','KMYL','KMYP','KMZH','KMZZ','KN03','KNAK','KNBT','KNCA','KNFW','KNGP','KNGU','KNHK','KNHZ','KNJK','KNJM','KNKT','KNLC','KNOG','KNPA','KNQI','KNRB','KNRS','KNSE','KNSI','KNUI','KNUW','KNXF','KNXP','KNYL','KOBE','KOCF','KOCQ','KOCW','KODO','KODX','KOEB','KOEO','KOFF','KOFK','KOGS','KOJA','KOKB','KOKM','KOKV','KOLF','KOLM','KOLS','KOLU','KOLY','KOLZ','KOMH','KOMK','KONL','KONX','KOPL','KOPN','KORC','KORG','KOSA','KOSC','KOSH','KOSU','KOTG','KOTH','KOTM','KOUN','KOVE','KOVL','KOVS','KOWA','KOWP','KOXC','KOXV','KOZA','KOZR','KOZW','KP08','KP28','KP38','KP58','KP67','KP68','KP69','KPAH','KPAM','KPAN','KPBH','KPCM','KPDC','KPDT','KPEA','KPEX','KPEZ','KPGA','KPGD','KPHF','KPHP','KPIB','KPIL','KPIN','KPIR','KPIT','KPLN','KPLU','KPNA','KPNC','KPNM','KPOB','KPOF','KPPA','KPQI','KPQL','KPQN','KPRG','KPRN','KPRO','KPRX','KPRZ','KPSF','KPSN','KPSO','KPSP','KPTK','KPTS','KPUB','KPUC','KPUJ','KPUM','KPVB','KPVJ','KPWM','KPWT','KPYM','KPYX','KRAC','KRAP','KRBO','KRBW','KRCA','KRCE','KRCR','KRCX','KRCZ','KRDD','KRDK','KREO','KRGK','KRHI','KRIM','KRIW','KRJD','KRKD','KRKP','KRME','KRMY','KRND','KRNT','KRNV','KROS','KROW','KROX','KRPH','KRPJ','KRQB','KRQE','KRRT','KRSL','KRSP','KRSV','KRTN','KRTS','KRUQ','KRUT','KRWF','KRWI','KRWV','KRYT','KRYW','KRYY','KRZL','KRZN','KS25','KS47','KSAA','KSAD','KSAF','KSAR','KSAZ','KSBA','KSBN','KSBO','KSBY','KSDA','KSDB','KSDM','KSEE','KSET','KSEZ','KSFM','KSFY','KSGE','KSGU','KSHL','KSHN','KSIB','KSJN','KSLE','KSLH','KSLK','KSLN','KSLO','KSLR','KSME','KSMF','KSMN','KSMP','KSMQ','KSNC','KSNT','KSNY','KSPB','KSRC','KSRE','KSSC','KSSF','KSSI','KSUE','KSUN','KSUT','KSUX','KSVN','KSWO','KSXT','KSYF','KSZT','KT20','KT35','KT43','KTAD','KTBX','KTCC','KTDO','KTDZ','KTEX','KTHA','KTIW','KTKI','KTKV','KTMA','KTME','KTMH','KTMK','KTNU','KTOB','KTOI','KTOR','KTQE','KTQH','KTRK','KTRL','KTTA','KTTD','KTTF','KTTN','KTTS','KTUP','KTUS','KTVI','KTVL','KTVR','KTWM','KTXK','KTYQ','KTYR','KU31','KU78','KUAO','KUBE','KUCP','KUDG','KUIN','KUKF','KUKL','KUKT','KULM','KUNI','KUNR','KUNU','KUSE','KUVA','KVAD','KVAY','KVBT','KVCB','KVER','KVES','KVJI','KVKS','KVLD','KVNC','KVPZ','KVSF','KVSH','KVTA','KVVG','KVWU','KW29','KW99','KWBC','KWDG','KWLD','KWST','KWVL','KWWR','KWYS','KXVW','KY19','KY22','KY23','KY51','KY63','KY70','KYKN','KZPH','KZZV') THEN 1 ELSE 0 END AS "Airport_Code_1",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K01M','K04V','K06D','K0A9','K0CO','K0F2','K11R','K14Y','K19A','K1H2','K1II','K1J0','K1P1','K1YT','K20U','K20V','K2C8','K2D5','K2G4','K2J9','K2V5','K2WX','K36U','K3A1','K3I2','K3LF','K3MW','K3R7','K46D','K4A6','K4A9','K4BM','K4CR','K4HV','K4MR','K4O4','K4SL','K5H4','K5M9','K5SM','K5T6','K6A2','K6B0','K6R6','K77M','K7R3','K82V','K87Q','K8D3','K9A4','K9D7','K9MN','KAAO','KABH','KACB','KACQ','KACT','KACY','KADC','KADH','KADM','KADU','KAEG','KAEJ','KAEL','KAFF','KAFJ','KAFK','KAFN','KAFO','KAFP','KAFW','KAHQ','KAIB','KAIO','KAIT','KAIZ','KAJG','KAJZ','KAKH','KAKO','KAKQ','KALI','KALK','KALN','KALS','KALX','KAMA','KAMW','KANE','KANJ','KANK','KAOH','KAOO','KAPF','KAPG','KAPN','KAPY','KAQO','KAQP','KAQR','KAQV','KART','KARV','KASE','KASG','KASH','KASJ','KAST','KAUH','KAUM','KAUN','KAUO','KAUS','KAVC','KAVK','KAVL','KAVP','KAWH','KAWM','KAWO','KAXH','KAXN','KAXS','KAXX','KAZC','KAZE','KBAC','KBAF','KBBB','KBBD','KBBG','KBBW','KBCB','KBCE','KBCK','KBCT','KBDG','KBDR','KBEA','KBED','KBEH','KBFD','KBGR','KBHK','KBIJ','KBKD','KBKL','KBKN','KBKV','KBKW','KBLF','KBLH','KBLV','KBML','KBMQ','KBNL','KBOS','KBPP','KBQK','KBRO','KBRX','KBTA','KBTM','KBUF','KBUY','KBVN','KBVR','KBVU','KBVY','KBWD','KBWG','KBWI','KBWP','KBYG','KBYH','KBYI','KBYY','KBZN','KC09','KC35','KC75','KCAD','KCAO','KCAV','KCBE','KCBF','KCBK','KCBM','KCCA','KCCU','KCDA','KCDH','KCDR','KCDS','KCDW','KCEC','KCEU','KCEW','KCEY','KCEZ','KCFE','KCFS','KCFV','KCGI','KCGZ','KCHA','KCHJ','KCHK','KCID','KCIR','KCJR','KCKB','KCKF','KCKM','KCKN','KCKP','KCLI','KCLK','KCLL','KCLS','KCMA','KCMX','KCMY','KCNB','KCNC','KCNI','KCNM','KCNO','KCNW','KCOD','KCOE','KCOM','KCON','KCOU','KCPS','KCPT','KCQC','KCQF','KCQM','KCQV','KCQW','KCQX','KCRS','KCSG','KCSV','KCTD','KCTY','KCUH','KCUL','KCUT','KCVB','KCVG','KCVN','KCVS','KCVX','KCWC','KCWF','KCWI','KCWN','KCWV','KCXO','KCZK','KCZZ','KD25','KD39','KD50','KD57','KD95','KDAB','KDAG','KDAN','KDBN','KDBQ','KDCY','KDDH','KDED','KDFI','KDHN','KDHT','KDIJ','KDKB','KDKK','KDLF','KDMW','KDOV','KDPG','KDPL','KDQH','KDRA','KDTL','KDUB','KDUC','KDUG','KDUJ','KDVK','KDVL','KDVT','KDWX','KDYA','KDYB','KDZJ','KEAU','KECG','KECU','KEEO','KEET','KEFC','KEFD','KEGE','KEGV','KEHA','KEHR','KEHY','KEKA','KEKM','KEKO','KEKQ','KELM','KELP','KEMM','KEND','KEOE','KEPH','KEPZ','KERI','KESF','KETB','KEUF','KEUG','KEUL','KEVM','KEVW','KEYE','KF05','KF44','KF70','KFAF','KFAT','KFBG','KFBL','KFCM','KFCS','KFDR','KFDW','KFDY','KFET','KFEW','KFFA','KFFC','KFFL','KFFO','KFFT','KFFX','KFHB','KFIT','KFKL','KFKS','KFLP','KFMN','KFMY','KFNL','KFOK','KFOT','KFOZ','KFPR','KFQD','KFSI','KFSK','KFSM','KFSO','KFST','KFSW','KFTK','KFTN','KFVX','KFWA','KFWD','KFWN','KFWS','KFYG','KFYV','KFZG','KGAD','KGAI','KGAO','KGBD','KGBN','KGCK','KGCM','KGDB','KGDP','KGDV','KGEG','KGEV','KGFK','KGFL','KGGE','KGGI','KGHG','KGHW','KGIC','KGIF','KGLD','KGLS','KGLW','KGMJ','KGNA','KGNC','KGNT','KGNV','KGON','KGOO','KGOP','KGPM','KGRD','KGRF','KGRI','KGRK','KGSB','KGSO','KGTF','KGTR','KGTU','KGUP','KGUY','KGWO','KGXA','KGXY','KGYB','KGYL','KGZL','KH21','KHAF','KHAI','KHBG','KHBI','KHBR','KHBV','KHCD','KHCO','KHDN','KHDO','KHEI','KHEY','KHEZ','KHHF','KHHW','KHIB','KHIE','KHIO','KHJH','KHKA','KHKS','KHLC','KHLN','KHLR','KHMM','KHMS','KHMZ','KHNB','KHOB','KHOP','KHOT','KHQM','KHRT','KHSB','KHSI','KHSP','KHTL','KHTO','KHTS','KHUA','KHUM','KHUT','KHVR','KHWY','KHYA','KHYR','KHYS','KHYW','KHZE','KHZX','KHZY','KI16','KI35','KI69','KIAB','KIAD','KIAG','KIAH','KICR','KICT','KIDI','KIDV','KIER','KIGM','KIKA','KIKK','KILN','KIML','KIMM','KIMT','KIND','KINJ','KINS','KIPL','KIPT','KISP','KISQ','KITR','KIWA','KIWD','KIXA','KIXD','KIYK','KIZA','KIZG','KJAS','KJAX','KJCT','KJDN','KJER','KJFK','KJFX','KJFZ','KJLN','KJOT','KJSO','KJST','KJWG','KJWY','KJXN','KJYL','KK22','KL35','KL38','KLAF','KLAR','KLAS','KLAW','KLBE','KLBF','KLBT','KLCQ','KLEE','KLEX','KLGC','KLHB','KLHX','KLJF','KLKR','KLKV','KLLJ','KLLQ','KLNK','KLNL','KLOT','KLPR','KLRD','KLRJ','KLRU','KLSB','KLSV','KLUA','KLUD','KLUM','KLUX','KLVK','KLVM','KLVN','KLWB','KLWT','KLXL','KLXN','KLXY','KLYH','KLYV','KLZZ','KM16','KM19','KM25','KM30','KM40','KM89','KMAE','KMAI','KMAN','KMAO','KMBG','KMBS','KMCB','KMCI','KMCK','KMDH','KMDS','KMDZ','KMEH','KMEI','KMEM','KMEZ','KMFE','KMFV','KMGC','KMGJ','KMGR','KMGW','KMHR','KMHV','KMIB','KMIW','KMJX','KMKC','KMKJ','KMKO','KMKT','KMLB','KMLC','KMLD','KMLE','KMLJ','KMLS','KMLU','KMMH','KMMK','KMNE','KMNH','KMNI','KMNN','KMOD','KMOT','KMOX','KMPO','KMPZ','KMQB','KMQE','KMQS','KMQY','KMRC','KMRH','KMRJ','KMSL','KMTC','KMTH','KMTJ','KMTN','KMTO','KMTP','KMTR','KMUL','KMUO','KMUT','KMVY','KMWA','KMWC','KMWH','KMWK','KMWN','KMWS','KMXO','KMYF','KMYR','KMYV','KMZH','KNBC','KNBG','KNEL','KNEW','KNFE','KNFG','KNFJ','KNFL','KNGP','KNID','KNKA','KNOG','KNPA','KNQA','KNQX','KNRB','KNXF','KNYG','KNZY','KO54','KO69','KO86','KOAJ','KOCQ','KOEB','KOGA','KOGD','KOJC','KOKB','KOKH','KOKZ','KOLS','KOLU','KOLY','KOLZ','KOMN','KONA','KONL','KONM','KONO','KONP','KOPL','KOPN','KORB','KORC','KORE','KORH','KOSA','KOSH','KOTG','KOTM','KOVL','KOWA','KOWD','KOWP','KOXB','KOXR','KOZA','KOZW','KP08','KP28','KP58','KPAE','KPAO','KPBG','KPCZ','KPDX','KPEA','KPEO','KPEQ','KPGA','KPHD','KPHN','KPHP','KPIB','KPIH','KPIN','KPIR','KPIT','KPKB','KPKV','KPLN','KPMP','KPMV','KPNA','KPNC','KPNS','KPOF','KPOU','KPPF','KPPO','KPPQ','KPQI','KPQL','KPQN','KPRB','KPRN','KPRO','KPRX','KPRZ','KPSC','KPSN','KPSP','KPTB','KPTN','KPTT','KPTV','KPUC','KPUJ','KPUM','KPUW','KPVB','KPVC','KPVU','KPVW','KPWG','KPWM','KPYM','KPYX','KRAC','KRAP','KRBD','KRBG','KRBO','KRCA','KRCE','KRCM','KRDK','KRDM','KRDR','KREO','KRFI','KRHI','KRHV','KRIL','KRIM','KRKD','KRKP','KRND','KRNH','KRNO','KRNV','KROS','KRPH','KRPJ','KRQE','KRQO','KRRL','KRSL','KRSN','KRSP','KRST','KRSW','KRTS','KRUG','KRUQ','KRWI','KRWL','KRWV','KRXE','KRYN','KS32','KSAA','KSAV','KSBN','KSBP','KSCH','KSDM','KSEA','KSEG','KSEZ','KSFM','KSFQ','KSFZ','KSGF','KSGH','KSGR','KSGT','KSGU','KSHN','KSHR','KSHV','KSIB','KSIY','KSJC','KSJN','KSJT','KSKX','KSLB','KSLH','KSLI','KSLN','KSLR','KSME','KSMF','KSMN','KSNC','KSNL','KSNS','KSNT','KSOA','KSPI','KSPW','KSQI','KSRB','KSRC','KSRE','KSRR','KSSF','KSSI','KSTC','KSTE','KSTJ','KSTK','KSTS','KSUS','KSUU','KSUW','KSUX','KSVH','KSWF','KSYF','KSYR','KT35','KT43','KT62','KT65','KT82','KTAN','KTAZ','KTBN','KTBR','KTBX','KTCL','KTCM','KTCS','KTDF','KTDO','KTDR','KTHA','KTHV','KTIK','KTIP','KTKI','KTKV','KTLH','KTMH','KTMK','KTNU','KTOA','KTOB','KTOC','KTOL','KTOP','KTOR','KTPA','KTPH','KTQE','KTQH','KTRI','KTRM','KTTA','KTUL','KTVF','KTVI','KTVL','KTWF','KTWM','KTXK','KTYQ','KTYR','KU24','KU28','KUCY','KUES','KUIL','KUKF','KUKI','KUKL','KUKT','KUNO','KUNR','KUNV','KUTA','KUUU','KUVA','KUXL','KUZA','KVBT','KVEL','KVIS','KVJI','KVKS','KVLD','KVPC','KVPS','KVPZ','KVQQ','KVSH','KVTA','KVTI','KVUJ','KVYS','KW22','KW29','KW43','KWDG','KWDR','KWHP','KWJF','KWLD','KWRB','KWST','KWVI','KWWR','KWYS','KXLL','KXNA','KXVG','KY19','KY22','KY23','KY50','KY51','KY63','KYKM','KYKN','KZPH','KZZV') THEN 1 ELSE 0 END AS "Airport_Code_2",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K06D','K0A9','K0CO','K0J4','K12N','K14Y','K19A','K1A6','K1F0','K1M4','K1P1','K1R7','K1V4','K20V','K2C8','K2J9','K2W6','K36U','K3A1','K3A6','K3DU','K3HT','K3MW','K3R7','K4A6','K4A9','K4CR','K4HV','K4I3','K4M9','K4MR','K4O4','K54J','K5M9','K65S','K6A1','K6A2','K6B0','K79J','K87Q','K8A0','K8D3','K9A4','K9MN','KAAF','KABE','KABH','KABI','KABQ','KABR','KABY','KACP','KACY','KADC','KADG','KADH','KADM','KADU','KADW','KAEJ','KAEX','KAFF','KAFJ','KAFK','KAFN','KAHN','KAIA','KAID','KAIG','KAIK','KAIZ','KAJG','KAJO','KAJZ','KAKH','KAKO','KAKQ','KALB','KALK','KALM','KALN','KALS','KAMA','KAMG','KANB','KAND','KANJ','KANK','KANQ','KAOO','KAPG','KAQO','KAQP','KAQR','KAQW','KART','KARW','KASH','KASJ','KASL','KAST','KASW','KATL','KATS','KATW','KAUD','KAUH','KAUN','KAUO','KAUW','KAVC','KAVK','KAWM','KAWN','KAWO','KAXA','KAXH','KBAC','KBBB','KBBW','KBCK','KBCT','KBDE','KBDH','KBDR','KBEA','KBEH','KBFL','KBGE','KBGF','KBGR','KBIF','KBIJ','KBIV','KBIX','KBJC','KBKN','KBKV','KBKW','KBLF','KBMC','KBMG','KBMI','KBMT','KBNW','KBOW','KBPG','KBPP','KBPT','KBRD','KBRL','KBRO','KBTA','KBTP','KBUY','KBVI','KBVN','KBVO','KBVR','KBVU','KBVY','KBWP','KBYG','KBYH','KBYI','KBYS','KC09','KC29','KCAG','KCBE','KCCA','KCCR','KCCU','KCCY','KCDA','KCDC','KCDJ','KCDR','KCDW','KCEC','KCEF','KCEW','KCEY','KCEZ','KCFD','KCFE','KCFV','KCGC','KCGE','KCGF','KCGI','KCHJ','KCID','KCIR','KCIU','KCJR','KCKB','KCKF','KCKN','KCLE','KCLI','KCLK','KCLS','KCMA','KCMS','KCMX','KCNB','KCNC','KCNI','KCNU','KCOE','KCOF','KCOS','KCOT','KCPR','KCQB','KCQF','KCQM','KCQX','KCRE','KCRG','KCRP','KCRS','KCRX','KCSG','KCSQ','KCSV','KCTB','KCTZ','KCUB','KCUH','KCUT','KCVO','KCVX','KCWA','KCWC','KCXP','KCXY','KCZK','KCZZ','KD25','KD39','KD60','KDAG','KDAW','KDBQ','KDDC','KDDH','KDEC','KDEQ','KDFI','KDHN','KDIJ','KDIK','KDKB','KDLH','KDLN','KDMN','KDMO','KDMW','KDNL','KDNS','KDNV','KDOV','KDPA','KDPL','KDRA','KDRC','KDRT','KDTN','KDTS','KDTW','KDUB','KDUC','KDUH','KDUX','KDVO','KDVP','KDWH','KDXX','KDYA','KDYB','KDYR','KDYS','KDYT','KDZJ','KE11','KE16','KE80','KEBG','KECG','KECP','KECU','KEEN','KEEO','KEET','KEFD','KEFT','KEGV','KEHA','KEIK','KEKA','KEKM','KEKO','KEKQ','KELD','KELN','KELO','KELP','KELY','KELZ','KEMM','KEMP','KEMV','KENL','KENV','KENW','KEOK','KEPZ','KERI','KERV','KERY','KESC','KESF','KEST','KEVM','KEVV','KEVW','KEWB','KEWK','KEWN','KEWR','KEXX','KEYW','KEZM','KF46','KF70','KFAM','KFAR','KFAT','KFAY','KFBG','KFCS','KFDK','KFET','KFEW','KFFC','KFFL','KFFM','KFFO','KFFT','KFFX','KFFZ','KFHU','KFKA','KFKL','KFKS','KFLO','KFMH','KFMM','KFNB','KFOD','KFOZ','KFPK','KFQD','KFSD','KFSK','KFSM','KFST','KFTG','KFTK','KFTW','KFVE','KFVX','KFWA','KFWB','KFWC','KFWN','KFXY','KFYJ','KFYV','KFZY','KGAD','KGAF','KGAI','KGBD','KGBN','KGCC','KGCD','KGCK','KGCM','KGCN','KGDJ','KGDP','KGDV','KGED','KGEG','KGEY','KGFA','KGFK','KGFL','KGGG','KGGI','KGHG','KGJT','KGLE','KGMJ','KGNA','KGNR','KGOO','KGOP','KGOV','KGPH','KGPI','KGPZ','KGRD','KGRF','KGSB','KGSP','KGTB','KGTR','KGTU','KGUN','KGUY','KGVL','KGWB','KGWW','KGXA','KGXF','KGXY','KGYR','KH21','KHAE','KHAI','KHBG','KHBI','KHBR','KHBV','KHCD','KHDC','KHDE','KHDO','KHEF','KHEI','KHFJ','KHGR','KHHR','KHHW','KHIE','KHKA','KHKS','KHLN','KHMM','KHMZ','KHNB','KHND','KHNR','KHNZ','KHOB','KHOU','KHPN','KHQM','KHQU','KHRI','KHRJ','KHRL','KHSB','KHSI','KHSP','KHST','KHSV','KHTO','KHTS','KHUL','KHUM','KHUT','KHVN','KHVS','KHWO','KHXD','KHYA','KHYR','KHYS','KHYW','KHYX','KHZR','KI35','KI69','KIBM','KICR','KICT','KIDA','KIDP','KIER','KIFA','KIGM','KIGQ','KIJX','KIKA','KIKK','KIKW','KILE','KILN','KIML','KIMT','KINF','KINJ','KINL','KINW','KIOB','KIPT','KIRK','KISM','KISN','KISW','KITH','KIYA','KJAC','KJAN','KJDD','KJDN','KJEF','KJFK','KJFX','KJFZ','KJHW','KJKL','KJMR','KJNW','KJRB','KJSO','KJVL','KJWG','KJWY','KJXI','KJYG','KJYL','KJYM','KJYO','KJYR','KJZI','KL35','KLAA','KLAN','KLBF','KLBL','KLCG','KLCH','KLCI','KLDJ','KLDM','KLEB','KLEE','KLFI','KLFK','KLFT','KLGB','KLGC','KLGD','KLGU','KLHB','KLIT','KLKU','KLKV','KLLJ','KLLQ','KLMO','KLMT','KLNC','KLNL','KLNP','KLNR','KLNS','KLOL','KLOM','KLOR','KLOZ','KLPR','KLRD','KLRO','KLRU','KLSB','KLUA','KLUD','KLVM','KLVS','KLWB','KLWM','KLWT','KLWV','KLXN','KLXV','KLXY','KLYH','KLZU','KLZZ','KM19','KM30','KM46','KMAE','KMAN','KMBG','KMBL','KMCB','KMCE','KMCF','KMCI','KMCK','KMCN','KMCW','KMDD','KMDH','KMDS','KMDT','KMEH','KMEI','KMER','KMEZ','KMFI','KMFR','KMGE','KMGJ','KMGN','KMGR','KMGY','KMHE','KMHK','KMHS','KMHT','KMIC','KMIE','KMJQ','KMKE','KMKG','KMKO','KMKT','KMKY','KMLC','KMLP','KMLS','KMLT','KMLU','KMMH','KMMI','KMMK','KMMU','KMMV','KMNE','KMNH','KMNM','KMNZ','KMOT','KMPO','KMPZ','KMQE','KMQI','KMRB','KMRC','KMRH','KMRN','KMRY','KMSN','KMSP','KMSS','KMSV','KMSY','KMTC','KMTH','KMTJ','KMTO','KMTP','KMTR','KMUL','KMVE','KMVL','KMVN','KMWA','KMWC','KMWH','KMWK','KMWL','KMWM','KMWO','KMWS','KMWT','KMXO','KMYP','KMYR','KMYV','KMZH','KMZZ','KN60','KNAK','KNBC','KNBT','KNFJ','KNIP','KNJK','KNJM','KNKT','KNKX','KNLC','KNOG','KNPA','KNQX','KNRB','KNSE','KNSI','KNTU','KNYC','KO22','KO54','KO69','KOAJ','KOBE','KOCF','KOCH','KODO','KOEO','KOGA','KOGB','KOGD','KOKB','KOKC','KOKK','KOKM','KOLE','KOLM','KOMA','KONA','KONP','KOOA','KOPL','KOQN','KOQT','KORB','KORC','KORF','KORG','KOSC','KOTG','KOUN','KOVL','KOVS','KOWB','KOWD','KOWP','KOXB','KP08','KP58','KP67','KP68','KPBF','KPCW','KPCZ','KPDK','KPEQ','KPEX','KPGA','KPGD','KPGV','KPHF','KPHL','KPIH','KPIL','KPKD','KPLU','KPMD','KPMV','KPNA','KPNE','KPNM','KPOB','KPOC','KPPA','KPPO','KPPQ','KPQN','KPRB','KPRN','KPRO','KPRX','KPSK','KPTN','KPTS','KPTT','KPUB','KPUC','KPVB','KPVD','KPVF','KPVG','KPWA','KPWG','KPWM','KPWT','KPYM','KRAC','KRAL','KRAP','KRBD','KRBO','KRCA','KRCE','KRCM','KRCR','KRCX','KRDD','KRDK','KRFI','KRGK','KRIC','KRIV','KRIW','KRKD','KRMY','KRND','KRNH','KRNM','KRNO','KRNP','KRNV','KROC','KROG','KROS','KROW','KROX','KRPD','KRPJ','KRQE','KRSN','KRSV','KRUE','KRUG','KRWF','KRWI','KRWV','KRXE','KRYV','KRYW','KRYY','KRZL','KRZN','KS14','KS25','KS32','KSAC','KSAD','KSAN','KSAT','KSAW','KSAZ','KSBA','KSBD','KSBM','KSBN','KSBO','KSBP','KSBS','KSBY','KSCH','KSDB','KSDF','KSDL','KSDY','KSEP','KSEZ','KSFB','KSFF','KSGE','KSGF','KSGJ','KSGS','KSGT','KSHD','KSHR','KSIF','KSJN','KSJT','KSKA','KSKX','KSLB','KSLG','KSLH','KSLK','KSME','KSMP','KSMQ','KSMX','KSNC','KSNK','KSNS','KSNT','KSNY','KSOA','KSOW','KSPB','KSPF','KSPI','KSQI','KSQL','KSRR','KSSC','KSTS','KSUA','KSUE','KSUN','KSUT','KSUU','KSUW','KSUX','KSVH','KSWF','KSYR','KSZL','KSZT','KT20','KT43','KT82','KTAN','KTAZ','KTBN','KTBR','KTCC','KTCM','KTCS','KTIK','KTKC','KTKI','KTME','KTMH','KTMK','KTNU','KTOA','KTOB','KTOC','KTOI','KTOP','KTPF','KTPL','KTQE','KTQH','KTUL','KTUS','KTVF','KTVI','KTVK','KTVL','KTWF','KTWM','KTYS','KTZR','KU28','KU42','KUBE','KUES','KUGN','KUIL','KULM','KUOX','KUTA','KUTS','KUZA','KVCB','KVCT','KVDF','KVKS','KVLD','KVLL','KVNY','KVPS','KVSF','KVSH','KVTI','KVVG','KVWU','KVYS','KW29','KWHP','KWJF','KWLD','KWWR','KWYS','KXLL','KXNA','KY22','KY23','KY51','KY63','KY70','KYIP','KYKN','KZZV') THEN 1 ELSE 0 END AS "Airport_Code_3",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K01M','K08D','K0CO','K0E0','K0F2','K0J4','K14Y','K1F0','K1H2','K1II','K1J0','K1M4','K1V4','K1V6','K1YT','K20U','K20V','K21D','K27A','K2G4','K2WX','K3A1','K3A6','K3DU','K3I2','K3J7','K3LF','K3MW','K3R7','K46D','K48I','K4A6','K4A9','K4BL','K4BM','K4HV','K4MR','K4SL','K54J','K5C1','K5H4','K5M9','K5SM','K5W8','K65S','K6A2','K6B0','K6R3','K6R6','K77M','K79J','K7L2','K7R3','K8A0','K8D3','K9A4','K9L2','KAAA','KAAF','KAAT','KABE','KABI','KABR','KACB','KACQ','KADS','KAEJ','KAFO','KAFW','KAGS','KAIA','KAIT','KAJZ','KAKH','KAKO','KAKR','KALI','KALO','KALW','KALX','KAMG','KAMW','KANB','KAND','KANE','KANK','KANQ','KAOH','KAOO','KAPA','KAPN','KAQO','KAQV','KAQW','KARA','KARB','KARL','KARM','KART','KASD','KASE','KASG','KASH','KASW','KASX','KAUG','KAUH','KAUM','KAUO','KAVC','KAVL','KAWG','KAWM','KAXA','KAXH','KAXN','KAYS','KAZC','KAZE','KAZO','KB23','KBAB','KBAD','KBAK','KBAZ','KBBB','KBBG','KBBP','KBCT','KBDG','KBDH','KBDL','KBDN','KBDR','KBED','KBEH','KBFD','KBFI','KBFL','KBFW','KBGD','KBHK','KBHM','KBIE','KBIF','KBIH','KBIL','KBIV','KBIX','KBJI','KBKD','KBKF','KBKS','KBLI','KBLU','KBLV','KBMC','KBMG','KBMI','KBMT','KBNL','KBOI','KBPG','KBPK','KBQK','KBQP','KBRD','KBRX','KBTA','KBUF','KBUO','KBVO','KBVR','KBVS','KBWI','KBWP','KBXA','KBYG','KBYY','KBZN','KC29','KCAD','KCAG','KCAV','KCBF','KCBG','KCBK','KCCA','KCCO','KCCU','KCDH','KCDJ','KCDW','KCFE','KCFV','KCGC','KCGF','KCHA','KCHK','KCHO','KCHS','KCIC','KCID','KCIR','KCIU','KCJR','KCKF','KCKM','KCKP','KCKV','KCLK','KCLS','KCMA','KCMY','KCNI','KCNU','KCNW','KCOD','KCOE','KCOM','KCOS','KCOT','KCPC','KCPR','KCPW','KCQM','KCQV','KCQX','KCRP','KCRQ','KCRS','KCRV','KCSG','KCSM','KCSQ','KCTD','KCTJ','KCTY','KCTZ','KCUL','KCUT','KCVB','KCVN','KCVS','KCVX','KCWC','KCWI','KCWN','KCWV','KCXP','KD39','KD50','KDAA','KDAB','KDAL','KDAN','KDBN','KDBQ','KDDH','KDED','KDEH','KDEN','KDEQ','KDET','KDFI','KDIJ','KDKR','KDLH','KDLS','KDLZ','KDMH','KDMN','KDMO','KDMW','KDNL','KDNN','KDOV','KDPA','KDQH','KDRA','KDRI','KDRO','KDRT','KDSV','KDTL','KDTS','KDVK','KDVN','KDVP','KDVT','KDXX','KDYR','KDYS','KDYT','KDZB','KDZJ','KE11','KE33','KEBS','KECU','KEDC','KEDE','KEDJ','KEDW','KEET','KEFC','KEGE','KEHA','KEHY','KEKO','KELD','KELM','KELO','KELP','KEMP','KEMV','KENL','KEQY','KERI','KESN','KETB','KETC','KEUG','KEVW','KEWB','KEWK','KEWR','KEYF','KEYW','KEZS','KF46','KFAM','KFAR','KFAY','KFCI','KFDR','KFEP','KFEW','KFFC','KFFM','KFFO','KFFT','KFFX','KFIG','KFKA','KFLL','KFLO','KFLP','KFLY','KFMH','KFNL','KFNT','KFOE','KFOK','KFOZ','KFPR','KFQD','KFSD','KFSE','KFSM','KFSO','KFTK','KFTW','KFVX','KFWB','KFWC','KFWD','KFWN','KFWS','KFXE','KFYG','KFYJ','KFYV','KFZY','KGAF','KGBG','KGCD','KGCM','KGDB','KGDJ','KGDV','KGEY','KGEZ','KGFA','KGFK','KGFL','KGGG','KGGI','KGGP','KGGW','KGHG','KGIC','KGIF','KGKJ','KGKY','KGLE','KGLR','KGLY','KGMU','KGNR','KGNV','KGOK','KGOP','KGOV','KGPH','KGPI','KGPT','KGPZ','KGRF','KGRI','KGRK','KGSP','KGTF','KGUS','KGVL','KGVT','KGWR','KGXF','KGXY','KGYB','KGYH','KGYR','KGYY','KGZH','KH21','KHAO','KHBR','KHDE','KHDN','KHEF','KHEY','KHEZ','KHFD','KHFF','KHGR','KHHF','KHHW','KHIE','KHIF','KHIO','KHJH','KHJO','KHKS','KHKY','KHLC','KHLG','KHMM','KHMS','KHMZ','KHOE','KHON','KHOP','KHOT','KHOU','KHRI','KHRO','KHRT','KHRX','KHSB','KHSI','KHTO','KHUA','KHVN','KHVR','KHVS','KHWO','KHWY','KHYS','KHYX','KHZY','KI35','KI39','KIAG','KICL','KICR','KICT','KIDA','KIDP','KIDV','KIER','KIFA','KIGM','KIGQ','KIGX','KILE','KIMT','KIND','KINF','KINK','KINS','KINT','KIOB','KIRK','KISM','KISN','KISW','KITH','KITR','KIWD','KIXA','KIYA','KIYK','KIZA','KIZG','KJAC','KJAN','KJAS','KJAX','KJBR','KJER','KJFK','KJFX','KJGG','KJKA','KJKL','KJMR','KJMS','KJNW','KJNX','KJOT','KJRB','KJSV','KJVL','KJXN','KJYG','KJYL','KJYM','KJYO','KJZI','KK22','KKLS','KLAW','KLBB','KLBR','KLCH','KLCI','KLCK','KLDM','KLEX','KLFI','KLFK','KLGA','KLGC','KLGU','KLHM','KLHQ','KLHX','KLHZ','KLKR','KLKU','KLMO','KLNK','KLNL','KLNP','KLNR','KLOR','KLOT','KLOU','KLOZ','KLQK','KLRU','KLSB','KLSF','KLSV','KLUD','KLUF','KLUM','KLVK','KLVM','KLWD','KLWT','KLXN','KLXT','KLXV','KLYH','KLZK','KLZU','KLZZ','KM16','KM25','KM30','KM40','KM46','KM89','KMBG','KMBL','KMCD','KMCE','KMCF','KMDH','KMDQ','KMDS','KMDT','KMDW','KMDZ','KMEB','KMEM','KMER','KMEZ','KMFE','KMFI','KMFR','KMFV','KMGC','KMGM','KMGN','KMHK','KMHR','KMHV','KMIW','KMKT','KMKY','KMLB','KMLD','KMLF','KMLJ','KMLP','KMLT','KMMH','KMMK','KMNM','KMNN','KMOB','KMOP','KMOT','KMOX','KMPV','KMQB','KMQI','KMRB','KMRC','KMRF','KMRN','KMRY','KMSL','KMSN','KMSO','KMSS','KMTJ','KMTN','KMTP','KMTR','KMTW','KMUI','KMUO','KMVE','KMVL','KMWK','KMWL','KMWM','KMWO','KMXO','KMYL','KMYR','KMZH','KN03','KN60','KNAK','KNBC','KNBG','KNBJ','KNEW','KNFG','KNFJ','KNJM','KNOG','KNPA','KNQA','KNQI','KNQX','KNRB','KNRS','KNSI','KNUQ','KNUW','KNYC','KNYG','KO22','KO54','KOAJ','KOBE','KOCH','KOCQ','KODX','KOEB','KOFK','KOGA','KOGD','KOGS','KOJC','KOKB','KOKC','KOKH','KOKZ','KOLS','KOLU','KOLV','KOLY','KOMA','KONA','KONL','KONM','KONP','KONZ','KORB','KORC','KORE','KORF','KORH','KORL','KOSA','KOSC','KOSH','KOSU','KOTG','KOTH','KOVS','KOWD','KOWP','KOXB','KOXC','KOZA','KOZR','KP08','KP28','KP38','KP58','KP67','KP68','KP69','KPAH','KPAN','KPAO','KPBF','KPBH','KPCM','KPCW','KPCZ','KPDC','KPDT','KPDX','KPEO','KPGA','KPGV','KPHF','KPHN','KPHP','KPIB','KPIH','KPIL','KPIT','KPKV','KPMV','KPNA','KPNE','KPNS','KPNT','KPOU','KPOV','KPPA','KPPF','KPPQ','KPQI','KPRB','KPRC','KPRG','KPRN','KPRO','KPSN','KPSO','KPSP','KPTB','KPTN','KPTS','KPTW','KPVC','KPVD','KPVF','KPVJ','KPWA','KPWC','KPWG','KPWK','KPYX','KRAC','KRAP','KRBD','KRBO','KRCE','KRCM','KRCR','KRCX','KRDG','KRDM','KRDR','KRDU','KRFI','KRGK','KRIC','KRIM','KRIV','KRIW','KRJD','KRMG','KRMN','KRMY','KRNH','KRNO','KRNP','KRNT','KRNV','KROA','KROG','KROX','KRPD','KRPH','KRQE','KRSL','KRSN','KRST','KRUE','KRUG','KRUQ','KRUT','KRWF','KRWI','KRWV','KRYT','KRYW','KRZL','KRZN','KRZZ','KS14','KS32','KS47','KSAC','KSAF','KSAR','KSAT','KSAZ','KSBA','KSBD','KSBM','KSBP','KSBY','KSCK','KSDA','KSDB','KSDL','KSDM','KSDY','KSEP','KSFB','KSFM','KSFZ','KSGE','KSGF','KSGH','KSGR','KSGT','KSGU','KSHN','KSHV','KSIB','KSIF','KSIY','KSJC','KSJN','KSKA','KSKF','KSKX','KSLB','KSLK','KSMF','KSMN','KSMP','KSNA','KSNC','KSNS','KSNT','KSNY','KSOW','KSPA','KSPB','KSPF','KSPG','KSPS','KSQL','KSRB','KSSC','KSSI','KSTF','KSTJ','KSTL','KSTP','KSUA','KSUS','KSUW','KSVN','KSWO','KSYF','KSYN','KSYR','KSZT','KT35','KT62','KT82','KTAN','KTAZ','KTBR','KTBX','KTCC','KTCM','KTCS','KTDZ','KTEB','KTEW','KTHA','KTHV','KTIK','KTIP','KTIW','KTKI','KTKV','KTMB','KTME','KTMH','KTMK','KTNU','KTOB','KTOC','KTOL','KTPH','KTRK','KTRL','KTRM','KTSP','KTTD','KTUL','KTVC','KTVI','KTVK','KTYS','KTZR','KU24','KU31','KU42','KUAO','KUBE','KUES','KUGN','KUIL','KUKF','KUKI','KUKL','KUKT','KULM','KUNR','KUNU','KUNV','KUTA','KUTS','KUVA','KUXL','KVCB','KVCT','KVES','KVIH','KVLL','KVNC','KVNY','KVOK','KVPC','KVQQ','KVTI','KVUJ','KVUO','KVVG','KW29','KWBC','KWDG','KWMC','KWRI','KWVL','KWWD','KWYS','KXFL','KXNA','KXVG','KXVW','KY51','KYKM','KZZV') THEN 1 ELSE 0 END AS "Airport_Code_4",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K0A9','K0CO','K0F2','K11R','K1A5','K1A6','K1II','K1J0','K1M4','K1V4','K20V','K2C8','K2D5','K2G4','K2V5','K2W6','K36U','K3A1','K3I2','K3MW','K3T5','K40J','K46D','K48I','K4HV','K4M9','K4SL','K54J','K5T6','K65S','K6A1','K6A2','K6R6','K77M','K79J','K87Q','K9A1','K9BB','K9MN','KAAA','KAAO','KAAT','KABH','KABI','KABR','KACB','KACJ','KACP','KACQ','KACV','KADG','KADS','KADU','KAEJ','KAEL','KAFF','KAFW','KAGC','KAGS','KAHQ','KAIA','KAIB','KAIO','KAIT','KAIZ','KAJO','KAKH','KAKQ','KALO','KALW','KALX','KAMA','KAMG','KAMN','KAMW','KANE','KANQ','KAPC','KAPG','KAPN','KAQP','KAQV','KAQW','KARA','KARB','KARG','KARV','KARW','KASL','KAST','KASW','KASX','KATS','KAUD','KAUH','KAUO','KAVC','KAVK','KAVL','KAWG','KAWH','KAWN','KAXS','KAYS','KAZE','KAZO','KBAB','KBAD','KBBD','KBBG','KBBW','KBCB','KBCE','KBDE','KBDG','KBDL','KBDR','KBDU','KBEA','KBED','KBEH','KBFF','KBFI','KBGE','KBGF','KBGM','KBGR','KBHK','KBHM','KBIE','KBIH','KBIJ','KBIV','KBIX','KBJC','KBJJ','KBKE','KBKL','KBKN','KBKS','KBLF','KBMC','KBMI','KBML','KBMQ','KBMT','KBNA','KBOI','KBOK','KBOW','KBPG','KBPT','KBQP','KBRL','KBRO','KBRX','KBTL','KBTR','KBUF','KBUO','KBUY','KBVI','KBVU','KBWD','KBXA','KBYI','KBYS','KBZN','KC09','KC29','KC75','KCAD','KCAG','KCBE','KCBF','KCBG','KCBK','KCBM','KCCA','KCDC','KCDN','KCDR','KCDS','KCDW','KCEW','KCEY','KCFE','KCFS','KCGC','KCGF','KCGI','KCGS','KCGZ','KCHA','KCHO','KCHS','KCKB','KCKI','KCKN','KCLE','KCLM','KCLS','KCMH','KCMI','KCMS','KCMX','KCNB','KCNM','KCNO','KCOE','KCOF','KCOM','KCOQ','KCOU','KCPC','KCQT','KCQW','KCQX','KCRE','KCRG','KCRQ','KCRS','KCRW','KCSG','KCSQ','KCTB','KCTD','KCTJ','KCTZ','KCUH','KCUL','KCVB','KCVH','KCVN','KCVO','KCVS','KCWA','KCWI','KCXO','KCXY','KCZZ','KD57','KDAL','KDAN','KDAW','KDAY','KDCA','KDCM','KDCU','KDCY','KDDC','KDEH','KDEQ','KDEW','KDFI','KDLN','KDLZ','KDMA','KDNL','KDNS','KDPA','KDQH','KDRA','KDRC','KDRT','KDSM','KDSV','KDTL','KDTS','KDUC','KDUH','KDUX','KDVK','KDVL','KDVP','KDVT','KDXX','KDYB','KDYL','KDYR','KDZJ','KE16','KEDE','KEDW','KEEO','KEFD','KEGE','KEHA','KEHR','KEHY','KEIK','KEKA','KEKM','KEKN','KELM','KELO','KELY','KELZ','KEMT','KEMV','KEND','KEOK','KEPH','KEPZ','KERV','KERY','KESC','KESF','KESN','KETC','KEUG','KEUL','KEVB','KEVM','KEVV','KEWB','KEWK','KEWN','KEWR','KEYE','KEYF','KEZF','KEZM','KF44','KF46','KFAF','KFAR','KFAT','KFAY','KFBR','KFDK','KFDR','KFDW','KFEP','KFFA','KFFC','KFFL','KFFM','KFFO','KFFT','KFFX','KFFZ','KFHB','KFKN','KFLP','KFMH','KFMY','KFNT','KFOE','KFOT','KFPK','KFQD','KFRI','KFRM','KFSD','KFSE','KFSK','KFUL','KFVE','KFVX','KFWA','KFWC','KFWD','KFWN','KFXE','KFXY','KGAD','KGAI','KGBD','KGBG','KGBN','KGCD','KGCK','KGCN','KGDB','KGDP','KGDV','KGED','KGEG','KGEU','KGFK','KGHG','KGHW','KGKJ','KGKY','KGLD','KGLE','KGLR','KGLS','KGLY','KGMJ','KGNA','KGNC','KGNR','KGNT','KGOK','KGOO','KGOV','KGPT','KGPZ','KGRB','KGRD','KGRF','KGRR','KGSB','KGTB','KGTR','KGTU','KGUC','KGUN','KGUY','KGWB','KGXY','KGYB','KGYH','KGYR','KGYY','KHAF','KHBI','KHBV','KHDC','KHDN','KHEI','KHEY','KHEZ','KHFD','KHGR','KHHF','KHJH','KHJO','KHKA','KHKS','KHKY','KHLG','KHLR','KHLX','KHMM','KHND','KHNR','KHOE','KHON','KHPN','KHQM','KHQU','KHRJ','KHRX','KHSE','KHSI','KHSP','KHST','KHUL','KHUT','KHVN','KHVR','KHVS','KHWV','KHXD','KHYA','KHYI','KHYS','KHYX','KI75','KIAB','KIAG','KIAH','KICL','KICT','KIDI','KIDV','KIFA','KIFP','KIGM','KIGQ','KIIB','KIIY','KIJX','KIKA','KIKV','KILE','KILM','KIML','KIMM','KIND','KINK','KINL','KINW','KIOB','KIOW','KIPT','KIRK','KISM','KISN','KISO','KIWA','KIWD','KIYA','KIYK','KIZA','KJAC','KJAX','KJBR','KJCT','KJDD','KJDN','KJER','KJES','KJFZ','KJHW','KJKA','KJKJ','KJMR','KJNX','KJOT','KJRB','KJSO','KJSV','KJVL','KJWG','KJXN','KJYG','KJYL','KJYR','KJZI','KK22','KKLS','KL35','KLAA','KLAF','KLAL','KLAM','KLAS','KLAX','KLBB','KLBT','KLBX','KLCG','KLCK','KLEB','KLEW','KLEX','KLGB','KLGC','KLGU','KLHM','KLHQ','KLHW','KLIC','KLKR','KLKV','KLLJ','KLLQ','KLNC','KLNR','KLOL','KLOR','KLOT','KLQK','KLRJ','KLRO','KLRU','KLSF','KLUA','KLUM','KLVK','KLWA','KLWB','KLWC','KLWD','KLWM','KLWS','KLXL','KLXN','KLXT','KLYV','KLZU','KM19','KM25','KM30','KM89','KMAO','KMBL','KMBS','KMCB','KMCC','KMCD','KMCI','KMCJ','KMDD','KMDW','KMEB','KMEI','KMEM','KMFE','KMFI','KMGE','KMGR','KMHK','KMHR','KMHT','KMHV','KMIC','KMIW','KMJQ','KMJX','KMKE','KMKS','KMKT','KMLD','KMLF','KMLP','KMLU','KMMH','KMMI','KMMK','KMMT','KMMU','KMNI','KMNM','KMOB','KMOD','KMOP','KMOT','KMOX','KMPV','KMPZ','KMQI','KMRB','KMRH','KMRN','KMRT','KMRY','KMSL','KMSO','KMSP','KMSS','KMSY','KMTH','KMTO','KMTV','KMUO','KMUT','KMVY','KMWA','KMWH','KMWK','KMWM','KMWS','KMXF','KMXO','KMYV','KMZH','KMZZ','KNBC','KNBG','KNBJ','KNDZ','KNFE','KNGP','KNGU','KNHK','KNHZ','KNJK','KNKA','KNKX','KNMM','KNPA','KNQI','KNQX','KNSE','KNTU','KNUQ','KNUW','KNXF','KNXP','KNYC','KNYL','KO86','KOAJ','KOBE','KOCH','KOCQ','KOCW','KODO','KODX','KOEO','KOFP','KOGA','KOGD','KOGS','KOKM','KOKZ','KOLZ','KOMH','KOMK','KOMN','KONM','KONP','KONX','KONZ','KOPF','KOPL','KOPN','KOQN','KOQU','KORC','KORD','KORE','KORF','KORG','KORH','KOSA','KOSC','KOSH','KOTH','KOTM','KOUN','KOVL','KOVS','KOWB','KOWP','KOXI','KOXR','KOZA','KOZW','KP58','KP67','KPAE','KPAH','KPAN','KPBG','KPBH','KPCM','KPCW','KPCZ','KPEA','KPEO','KPEZ','KPGA','KPGD','KPGV','KPHD','KPHL','KPIA','KPIB','KPIH','KPIL','KPIR','KPKB','KPKD','KPKV','KPLN','KPLU','KPMP','KPMV','KPNE','KPNM','KPNS','KPOB','KPOC','KPOU','KPPO','KPPQ','KPQL','KPQN','KPRB','KPRG','KPRN','KPRO','KPSK','KPSM','KPSN','KPSO','KPTB','KPTK','KPTN','KPTV','KPUC','KPUJ','KPUW','KPVB','KPVD','KPVG','KPVJ','KPVW','KPWC','KPWG','KPWK','KPYM','KPYX','KPZQ','KRCE','KRCX','KRCZ','KRDD','KRDG','KREO','KRGK','KRHP','KRIC','KRIL','KRIM','KRIV','KRIW','KRKP','KRME','KRMG','KRMN','KRMY','KRND','KRNM','KRNP','KROC','KROG','KROW','KRPH','KRPJ','KRRL','KRRT','KRSL','KRSP','KRSW','KRUG','KRUT','KRVS','KRWF','KRWL','KRZL','KRZR','KRZZ','KS14','KS32','KSAA','KSAT','KSAV','KSAW','KSAZ','KSBD','KSBP','KSBY','KSDB','KSDY','KSEE','KSEG','KSEP','KSEZ','KSFM','KSFO','KSFQ','KSFY','KSGE','KSGF','KSGS','KSGT','KSGU','KSHD','KSHL','KSHN','KSHR','KSIF','KSJC','KSKX','KSLE','KSLG','KSLI','KSLK','KSLN','KSLO','KSLR','KSMN','KSMP','KSMQ','KSMS','KSNA','KSNL','KSNS','KSOA','KSPA','KSPF','KSPI','KSPS','KSQI','KSRB','KSRC','KSRE','KSSC','KSSF','KSTL','KSTP','KSTS','KSUA','KSUN','KSUX','KSVH','KSVN','KSWO','KSYF','KSYN','KT20','KT35','KT65','KTAD','KTAN','KTBN','KTCC','KTCL','KTCM','KTDF','KTDZ','KTEB','KTHA','KTHV','KTIK','KTIP','KTIW','KTKI','KTKV','KTMA','KTME','KTOA','KTOC','KTOP','KTPA','KTPF','KTPH','KTPL','KTQH','KTRI','KTRL','KTRM','KTTA','KTTS','KTUL','KTVF','KTVI','KTVR','KTWF','KTWM','KTXK','KTYS','KTZR','KU24','KUAO','KUBE','KUIL','KUIN','KUKF','KUKT','KUNI','KUNR','KUNV','KUSE','KUTA','KUTS','KUXL','KUZA','KVAD','KVBT','KVCV','KVDI','KVDW','KVEL','KVER','KVES','KVIH','KVJI','KVLD','KVLL','KVNC','KVNY','KVSH','KVUJ','KVUO','KW29','KW43','KWBC','KWMC','KWRB','KWRI','KWST','KWYS','KXFL','KXNA','KXVG','KXVW','KY19','KY22','KY50','KY51','KY70','KYIP','KYKM','KZPH','KZZV') THEN 1 ELSE 0 END AS "Airport_Code_5",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K01M','K04V','K06D','K08D','K0A9','K0CO','K0J4','K0VG','K12N','K1A5','K1A6','K1M4','K1R7','K1V6','K20U','K21D','K27A','K2C8','K2G4','K2V5','K2W6','K2WX','K33V','K36U','K3J7','K3MW','K3R7','K3TH','K42J','K46D','K4A6','K4BM','K4CR','K4HV','K4MR','K4O4','K54J','K5C1','K5M9','K5T6','K5W8','K65S','K6A1','K6A2','K6B0','K6R6','K77M','K7L2','K7R3','K82V','K9A4','K9L2','K9V9','KAAF','KAAT','KABH','KABI','KABR','KABY','KACB','KACP','KACQ','KACT','KACV','KADC','KADG','KADS','KAEL','KAFK','KAFP','KAGC','KAHN','KAID','KAIO','KAIT','KAIZ','KAJG','KAJO','KAKH','KAKO','KAKR','KALN','KALS','KALX','KAMA','KAMG','KANE','KANJ','KANQ','KAOH','KAOO','KAPA','KAPC','KAPF','KAPG','KAPN','KAPY','KARB','KARG','KASD','KASG','KASL','KAST','KASW','KASX','KATL','KATS','KATW','KAUD','KAUH','KAUM','KAUW','KAVC','KAVK','KAVL','KAVP','KAXN','KAZC','KAZE','KB23','KBAC','KBAD','KBAF','KBAN','KBBB','KBBP','KBBW','KBCE','KBCK','KBCT','KBDE','KBDH','KBDL','KBDN','KBDR','KBDU','KBEA','KBFD','KBFL','KBFW','KBGD','KBGF','KBGM','KBGR','KBHK','KBHM','KBIF','KBIH','KBIJ','KBIL','KBIS','KBKD','KBKE','KBKF','KBKL','KBKN','KBKV','KBLM','KBLV','KBML','KBNO','KBOK','KBOS','KBOW','KBPT','KBQK','KBRX','KBTM','KBTP','KBTV','KBUO','KBUR','KBUY','KBVI','KBVR','KBVS','KBVU','KBVY','KBWD','KBWG','KBWP','KBYG','KBYH','KBYS','KBZN','KC09','KC35','KC75','KCAE','KCAG','KCBE','KCBF','KCDC','KCDH','KCDN','KCDR','KCDS','KCFD','KCFE','KCFS','KCGE','KCGF','KCGZ','KCHA','KCHO','KCIR','KCIU','KCJR','KCKM','KCKN','KCKP','KCKV','KCLE','KCLI','KCLL','KCLS','KCMA','KCMH','KCMI','KCMY','KCNC','KCNI','KCNM','KCNO','KCNY','KCOM','KCON','KCOQ','KCOS','KCOU','KCPC','KCPR','KCPS','KCPT','KCPW','KCQB','KCQC','KCRG','KCRP','KCRQ','KCRV','KCRX','KCSG','KCSQ','KCTB','KCTJ','KCTY','KCTZ','KCVH','KCVN','KCVO','KCVX','KCWA','KCWI','KCWN','KCXO','KCXP','KCXY','KCZK','KCZZ','KD25','KD50','KD95','KDAA','KDAB','KDAG','KDAN','KDAW','KDBQ','KDCM','KDCU','KDCY','KDDC','KDDH','KDEC','KDEN','KDGW','KDHN','KDHT','KDKB','KDLH','KDLS','KDMH','KDMN','KDNN','KDNS','KDOV','KDPA','KDPL','KDRA','KDRO','KDTL','KDTN','KDTO','KDTS','KDTW','KDUC','KDUG','KDUH','KDUJ','KDVN','KDVO','KDXR','KDXX','KDYA','KDYB','KDYL','KDYS','KDYT','KE80','KEAR','KEAU','KEBS','KECG','KECP','KECU','KEDE','KEDU','KEDW','KEEN','KEEO','KEET','KEFD','KEGE','KEHR','KEIK','KEKM','KEKO','KEKQ','KELD','KELN','KELO','KELY','KEMP','KEMT','KENV','KENW','KEPZ','KEQY','KERV','KERY','KESN','KETB','KEUL','KEVW','KEWB','KEWK','KEWR','KEXX','KEYE','KEYF','KEYW','KEZS','KF05','KF46','KFAM','KFAR','KFAT','KFAY','KFBL','KFBR','KFDK','KFDR','KFDW','KFEP','KFFA','KFFL','KFFO','KFFX','KFHU','KFIG','KFIT','KFKL','KFLD','KFLL','KFLO','KFLP','KFME','KFMH','KFMY','KFNL','KFOD','KFOK','KFOT','KFPR','KFRG','KFSD','KFSE','KFSM','KFSO','KFTW','KFTY','KFUL','KFWA','KFWC','KFWD','KGAF','KGBD','KGBG','KGCC','KGCM','KGDV','KGED','KGEV','KGEZ','KGFL','KGGP','KGHW','KGIC','KGIF','KGLD','KGLH','KGMU','KGNC','KGNT','KGON','KGOV','KGRR','KGSH','KGTU','KGUN','KGUS','KGUY','KGVT','KGWW','KGXA','KGXF','KGYH','KGYI','KGYR','KGYY','KGZH','KH21','KHAF','KHAI','KHCD','KHCO','KHDE','KHDN','KHDO','KHEF','KHEQ','KHEY','KHEZ','KHHR','KHIF','KHJO','KHKY','KHLR','KHMM','KHMZ','KHND','KHNR','KHOE','KHON','KHOP','KHOT','KHOU','KHQM','KHQU','KHQZ','KHRJ','KHRX','KHSB','KHSE','KHSI','KHSP','KHTL','KHTS','KHUF','KHVR','KHVS','KHWD','KHWO','KHWY','KHYI','KHYR','KHYS','KHYW','KHZX','KI39','KIAG','KIAH','KICR','KIDA','KIFP','KIGX','KIIY','KIKV','KILM','KILN','KIML','KIMT','KINF','KINJ','KIOB','KIOW','KIPL','KIPT','KIRS','KISM','KISN','KISP','KISW','KITH','KITR','KIWA','KIWD','KIXD','KIYA','KIYK','KJAC','KJAX','KJCT','KJDD','KJDN','KJER','KJFK','KJFX','KJFZ','KJKA','KJKJ','KJLN','KJMR','KJNX','KJQF','KJRB','KJSO','KJVL','KJXI','KJYO','KJYR','KK22','KL35','KL38','KLAF','KLCG','KLCI','KLCK','KLDM','KLEB','KLEW','KLEX','KLFK','KLGB','KLGU','KLHQ','KLHW','KLHX','KLHZ','KLJF','KLKU','KLNC','KLNL','KLNP','KLNR','KLNS','KLOL','KLOR','KLOT','KLOZ','KLPR','KLQK','KLRJ','KLRO','KLRU','KLSB','KLSE','KLSV','KLUA','KLUD','KLUK','KLUM','KLUX','KLVM','KLVN','KLVS','KLWB','KLWC','KLWD','KLWM','KLWS','KLWT','KLXL','KLXN','KLXT','KLXV','KLXY','KLZK','KLZU','KLZZ','KM19','KM30','KM46','KM89','KMAN','KMBG','KMCD','KMCF','KMCN','KMCW','KMDT','KMEB','KMEI','KMEM','KMFI','KMFV','KMGE','KMGW','KMGY','KMHE','KMHK','KMHR','KMHV','KMIB','KMIC','KMIV','KMIW','KMJQ','KMKG','KMKN','KMKO','KMKT','KMLE','KMLF','KMLJ','KMLP','KMLS','KMLU','KMMH','KMMI','KMMV','KMNM','KMNZ','KMOX','KMPO','KMPV','KMPZ','KMQB','KMRT','KMRY','KMSL','KMSP','KMSV','KMTC','KMTW','KMUI','KMUL','KMUO','KMVL','KMVN','KMVY','KMWA','KMWK','KMWL','KMWM','KMWT','KMXO','KMYF','KMYP','KMYV','KN03','KNBG','KNBJ','KNCA','KNDZ','KNEL','KNFG','KNFJ','KNFL','KNFW','KNGP','KNGU','KNHK','KNHZ','KNJK','KNKA','KNMM','KNPA','KNQI','KNQX','KNRB','KNRS','KNSE','KNSI','KNUI','KNUQ','KNXF','KNXP','KNYC','KNYL','KNZY','KO69','KOAK','KOCF','KOCH','KOCQ','KOCW','KODO','KODX','KOEB','KOFF','KOFP','KOGB','KOGD','KOGS','KOJC','KOKB','KOKV','KOLF','KOLS','KOLU','KOLV','KOLY','KOMH','KOMK','KONA','KONO','KONP','KONZ','KOOA','KOPF','KOQN','KOQU','KORD','KORF','KORG','KORH','KORL','KOSA','KOSH','KOTM','KOVS','KOWD','KOWP','KOXB','KOXC','KOXI','KOXV','KOZA','KOZW','KP08','KP28','KP38','KP58','KP68','KP69','KPAM','KPAN','KPBG','KPBH','KPBI','KPCZ','KPDK','KPDT','KPDX','KPEQ','KPEX','KPGA','KPGD','KPHL','KPHN','KPHP','KPIA','KPIB','KPIE','KPIH','KPIT','KPKD','KPKV','KPLN','KPMD','KPMP','KPNA','KPNC','KPOB','KPOC','KPOF','KPPA','KPQI','KPQL','KPQN','KPRB','KPRG','KPRZ','KPSK','KPSM','KPSO','KPTB','KPTK','KPTV','KPTW','KPUC','KPUM','KPUW','KPVB','KPVC','KPVF','KPVW','KPWC','KPWG','KPWK','KPWM','KPWT','KRAL','KRBG','KRBO','KRBW','KRCE','KRCZ','KRDK','KRDM','KRDR','KREO','KRGK','KRHP','KRHV','KRIM','KRIW','KRKD','KRKP','KRKS','KRME','KRMG','KRND','KRNH','KRNO','KRNP','KRNV','KROG','KROS','KROX','KRPD','KRPJ','KRQB','KRQE','KRST','KRSV','KRTN','KRTS','KRUE','KRUG','KRUT','KRWF','KRWI','KRXE','KRYN','KRYW','KRYY','KRZL','KS25','KS32','KSAA','KSAC','KSAD','KSAF','KSAN','KSAT','KSAV','KSAZ','KSBA','KSBD','KSBM','KSDA','KSDF','KSDL','KSDM','KSEG','KSET','KSEZ','KSFB','KSFO','KSFQ','KSFZ','KSGR','KSGT','KSHN','KSHV','KSJC','KSJN','KSJT','KSKA','KSKF','KSLB','KSLE','KSLH','KSLN','KSLR','KSMN','KSMO','KSMQ','KSMS','KSMX','KSNK','KSNL','KSNY','KSOP','KSOW','KSPA','KSPD','KSPF','KSPI','KSPS','KSQI','KSQL','KSTE','KSTJ','KSTK','KSUA','KSUE','KSUS','KSUU','KSUW','KSVC','KSVN','KSWW','KSYN','KSZL','KT43','KT62','KT65','KTAN','KTBN','KTBR','KTCM','KTCS','KTDO','KTDR','KTDZ','KTEB','KTEX','KTKI','KTKV','KTLH','KTMA','KTME','KTMH','KTMK','KTOA','KTOB','KTPF','KTQE','KTRI','KTRK','KTRL','KTRM','KTTD','KTTS','KTUL','KTUS','KTVI','KTVL','KTWF','KTYR','KU42','KUBE','KUCP','KUDG','KUIL','KUIN','KUKL','KULM','KUNU','KUNV','KUTS','KUVA','KUXL','KUZA','KVAD','KVAY','KVBT','KVCT','KVDF','KVDW','KVEL','KVER','KVES','KVIH','KVIS','KVKS','KVLD','KVPC','KVPS','KVSH','KVTP','KVUO','KVVG','KVWU','KW22','KW29','KWBC','KWDR','KWJF','KWLD','KWRB','KWVI','KWWD','KXLL','KXMR','KXNA','KXSA','KXVW','KY19','KY22','KY23','KY51','KY63','KYKN') THEN 0 ELSE 1 END AS "Airport_Code_6",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K01M','K04W','K0CO','K0E0','K0J4','K0VG','K11R','K14Y','K1A5','K1A6','K1H2','K1M4','K1R7','K1V4','K1V6','K27A','K2G4','K2I0','K2J9','K33V','K3A1','K3A6','K3DU','K3I2','K3LF','K3R7','K40J','K46D','K48I','K4A9','K4BL','K4HV','K4M9','K4O4','K4SL','K5C1','K5H4','K5M9','K5SM','K5T6','K5W8','K6A1','K6A2','K6B0','K79J','K7R3','K82V','K8D3','K9BB','K9D7','K9L2','KAAA','KAAO','KAAT','KABE','KABH','KABR','KABY','KACT','KADM','KADU','KAEJ','KAEL','KAFK','KAGS','KAHN','KAID','KAIG','KAIK','KAIO','KAJG','KAJO','KAJZ','KAKH','KAKQ','KALB','KALK','KALW','KALX','KAMA','KAMG','KAMN','KAND','KANE','KANJ','KANQ','KAPY','KAQO','KAQR','KARA','KARG','KART','KARW','KASG','KASJ','KASL','KAST','KASW','KATT','KAUD','KAUG','KAUH','KAUM','KAUO','KAUS','KAVC','KAVK','KAWG','KAWN','KAWO','KAXA','KAYS','KAZE','KAZO','KBAC','KBAD','KBAK','KBAN','KBBD','KBBG','KBBP','KBBW','KBCB','KBCE','KBCK','KBCT','KBDG','KBDH','KBDN','KBDU','KBED','KBEH','KBFD','KBFI','KBFL','KBGE','KBGR','KBHB','KBHK','KBHM','KBIE','KBIL','KBIV','KBJI','KBJJ','KBKD','KBKS','KBKV','KBLF','KBLH','KBMG','KBMI','KBMQ','KBMT','KBNL','KBNO','KBOK','KBOS','KBOW','KBPG','KBPP','KBPT','KBQK','KBRL','KBRO','KBRX','KBTA','KBTM','KBTR','KBUO','KBUR','KBUY','KBVN','KBVO','KBVR','KBWI','KBXK','KBYH','KBYS','KC75','KCAD','KCAE','KCAK','KCAO','KCAV','KCBG','KCBK','KCBM','KCCO','KCCY','KCEF','KCEW','KCEY','KCFD','KCFV','KCGE','KCGF','KCHA','KCHS','KCIU','KCJR','KCKB','KCKI','KCKN','KCLL','KCLM','KCLS','KCLT','KCMA','KCMR','KCMY','KCNC','KCNO','KCNY','KCON','KCOQ','KCOT','KCPC','KCPK','KCPR','KCPS','KCPT','KCQB','KCQF','KCQT','KCQW','KCRG','KCRS','KCRV','KCRW','KCSM','KCSQ','KCSV','KCTB','KCTY','KCUH','KCUL','KCVB','KCVG','KCVN','KCVX','KCWI','KCXY','KD25','KD39','KD57','KD95','KDAA','KDAG','KDAL','KDAN','KDAW','KDBQ','KDCA','KDCM','KDCU','KDCY','KDDH','KDEC','KDED','KDEQ','KDEW','KDFI','KDHT','KDIK','KDKB','KDKK','KDKR','KDLF','KDLH','KDLL','KDLZ','KDMH','KDMN','KDMO','KDMW','KDPA','KDPL','KDRI','KDRO','KDSM','KDTS','KDTW','KDUC','KDUG','KDUJ','KDWX','KDXX','KDYA','KDYB','KDYL','KDYS','KDYT','KDZB','KDZJ','KE16','KE33','KE80','KEAR','KEAT','KEAU','KEBG','KEBS','KEDC','KEDE','KEDU','KEEO','KEGE','KEIK','KEKM','KEKN','KELO','KELZ','KEMP','KEMV','KEND','KENL','KENV','KEPH','KEPZ','KEQY','KERI','KERV','KERY','KESC','KESN','KEST','KETC','KEUF','KEUL','KEVV','KEWB','KEWK','KEWR','KEXX','KEYE','KEZM','KEZS','KF05','KF44','KF70','KFAF','KFAT','KFBG','KFCM','KFCS','KFDR','KFEP','KFET','KFEW','KFFA','KFFC','KFFX','KFHB','KFIT','KFKN','KFLD','KFLG','KFMM','KFMY','KFNL','KFOD','KFOK','KFOT','KFOZ','KFPK','KFPR','KFRG','KFSD','KFSE','KFSI','KFSW','KFTW','KFTY','KFUL','KFVX','KFWB','KFWD','KFWN','KFXE','KFXY','KFYJ','KFZG','KGAF','KGAI','KGBD','KGCC','KGCD','KGDB','KGEG','KGEZ','KGFA','KGFL','KGGE','KGGG','KGHG','KGHW','KGIC','KGIF','KGLD','KGLE','KGLH','KGLS','KGLY','KGMU','KGNA','KGOK','KGON','KGOO','KGOP','KGOV','KGPM','KGPZ','KGRB','KGRD','KGRI','KGRR','KGSB','KGSH','KGSP','KGTU','KGUC','KGUS','KGUY','KGXA','KGXY','KGYH','KGYI','KGYR','KGZH','KH21','KHAE','KHAF','KHBG','KHDC','KHDO','KHEF','KHEI','KHEQ','KHEY','KHEZ','KHFD','KHHF','KHHW','KHIB','KHIE','KHIO','KHJH','KHLC','KHLG','KHLN','KHLR','KHMM','KHMS','KHNZ','KHOB','KHOE','KHON','KHQM','KHQU','KHQZ','KHRJ','KHRL','KHRO','KHSA','KHSE','KHSI','KHSP','KHST','KHSV','KHTO','KHTS','KHUF','KHUL','KHUT','KHVN','KHVR','KHWD','KHWO','KHZR','KI16','KI75','KIAD','KIAH','KIBM','KICR','KIDA','KIDI','KIDV','KIER','KIGM','KIGQ','KIGX','KIIB','KIIY','KIJD','KIJX','KIKA','KIKK','KILM','KIND','KINJ','KINT','KIOB','KIOW','KIPL','KIPT','KISO','KISQ','KIWI','KIXA','KIZA','KIZG','KJAN','KJAS','KJAX','KJDD','KJEF','KJFK','KJFX','KJFZ','KJGG','KJKJ','KJLN','KJMR','KJNW','KJRB','KJSO','KJST','KJSV','KJVL','KJWY','KJXN','KJYG','KJYL','KJYO','KJYR','KK22','KKLS','KL35','KLAA','KLAF','KLAL','KLBE','KLBT','KLCH','KLCI','KLCK','KLFK','KLFT','KLGA','KLGC','KLGU','KLHQ','KLHX','KLIT','KLJF','KLKR','KLLQ','KLMO','KLMT','KLNK','KLOL','KLOM','KLOU','KLOZ','KLQK','KLRJ','KLSB','KLUD','KLUK','KLVJ','KLVN','KLWB','KLWD','KLWS','KLWV','KLXN','KLXT','KLXY','KLYH','KLZK','KLZZ','KM19','KM25','KM30','KM40','KM89','KMAE','KMAO','KMCC','KMCD','KMCE','KMCF','KMCI','KMCJ','KMCK','KMCN','KMCO','KMDD','KMDS','KMDT','KMDW','KMDZ','KMEH','KMFV','KMGC','KMGE','KMGG','KMGM','KMGN','KMGY','KMHE','KMHR','KMHS','KMHV','KMIB','KMIE','KMIV','KMIW','KMJQ','KMJX','KMKC','KMKG','KMKJ','KMKO','KMKY','KMLB','KMLC','KMLE','KMLI','KMLJ','KMLU','KMMH','KMMI','KMML','KMMT','KMMU','KMNE','KMNM','KMNN','KMOB','KMOT','KMOX','KMPO','KMPZ','KMQE','KMRB','KMRC','KMRF','KMRH','KMRJ','KMRN','KMRT','KMSN','KMSS','KMSV','KMTC','KMTH','KMTJ','KMTN','KMTR','KMTV','KMTW','KMUT','KMVE','KMVN','KMWC','KMWH','KMWK','KMWN','KMWO','KMWS','KMYF','KMYL','KMZH','KMZZ','KN03','KNAK','KNBC','KNBG','KNCA','KNDZ','KNEL','KNFE','KNGP','KNGU','KNHZ','KNIP','KNJM','KNKX','KNLC','KNMM','KNQX','KNRB','KNRS','KNSE','KNSI','KNUQ','KNUW','KNXF','KNYG','KNYL','KO22','KOAJ','KOBE','KOCF','KOCH','KOCW','KODO','KODX','KOEB','KOEO','KOFF','KOFP','KOGB','KOGD','KOGS','KOJA','KOJC','KOKB','KOKH','KOKM','KOKZ','KOLF','KOLM','KOLS','KOLV','KOLY','KOLZ','KOMH','KOMK','KOMN','KONA','KONL','KONM','KONT','KONX','KONZ','KOOA','KOQN','KOQT','KOQU','KORC','KORD','KORF','KORG','KORH','KOSH','KOSU','KOTH','KOUN','KOWA','KOWD','KOXC','KOZA','KOZR','KP08','KP28','KP58','KP67','KP68','KP69','KPAH','KPAM','KPBF','KPBH','KPCW','KPDC','KPDK','KPDT','KPDX','KPEO','KPGA','KPHD','KPHF','KPHP','KPHX','KPIA','KPIH','KPIL','KPKB','KPKD','KPMD','KPNM','KPNS','KPNT','KPOB','KPPA','KPPF','KPPO','KPPQ','KPQL','KPRB','KPRG','KPSK','KPSM','KPSP','KPTB','KPTS','KPTT','KPTV','KPTW','KPUB','KPUW','KPVC','KPWA','KPWC','KPWT','KRBG','KRCA','KRCM','KRCZ','KRDK','KRDM','KRFD','KRFI','KRIV','KRJD','KRMG','KRMY','KRNH','KRNM','KRNO','KRNP','KRNT','KRNV','KROC','KROS','KROW','KRPD','KRPH','KRPJ','KRQB','KRQE','KRRL','KRSL','KRSN','KRSV','KRTS','KRUE','KRUT','KRVS','KRWV','KRYW','KRYY','KRZL','KS32','KS47','KSAA','KSAD','KSAF','KSAW','KSAZ','KSBA','KSBO','KSDF','KSDL','KSEA','KSEE','KSEP','KSFF','KSFM','KSFQ','KSFZ','KSGE','KSGF','KSGR','KSGS','KSHD','KSHR','KSHV','KSIF','KSIY','KSJN','KSJT','KSKF','KSLB','KSLK','KSLN','KSLO','KSLR','KSMN','KSMP','KSMQ','KSMS','KSNC','KSOA','KSOP','KSOW','KSPD','KSPG','KSPW','KSRB','KSRE','KSRR','KSSF','KSSI','KSTF','KSTJ','KSTK','KSTP','KSTS','KSUA','KSUT','KSUU','KSVH','KSVN','KSWF','KSWW','KSXT','KSYN','KSYR','KSZL','KT20','KT43','KT65','KT82','KTAD','KTBR','KTBX','KTCC','KTCL','KTCS','KTDR','KTEB','KTEW','KTEX','KTHA','KTIP','KTIX','KTKI','KTKV','KTLH','KTMB','KTME','KTMK','KTNU','KTOA','KTOC','KTOL','KTOP','KTOR','KTPA','KTPF','KTPH','KTQH','KTRI','KTTA','KTTF','KTUL','KTVF','KTVL','KTVR','KTWF','KTWM','KTYQ','KTYS','KTZR','KU28','KU42','KU78','KUAO','KUBE','KUCP','KUES','KUIL','KUKL','KUKT','KUNI','KUNO','KUNR','KUNU','KUOX','KUTS','KUUU','KUVA','KUXL','KUZA','KVBT','KVDI','KVGT','KVIS','KVJI','KVKS','KVLD','KVNY','KVPS','KVUO','KVVG','KVWU','KVYS','KW22','KW29','KW99','KWBC','KWDG','KWEY','KWJF','KWMC','KWRB','KWVL','KWYS','KXFL','KXVG','KY23','KYNG','KZPH') THEN 0 ELSE 1 END AS "Airport_Code_7",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K01M','K04V','K06D','K0CO','K0J4','K0VG','K12N','K14Y','K19A','K1A5','K1A6','K1II','K1J0','K1M4','K1P1','K1V4','K1V6','K1YT','K2C8','K2D5','K2G4','K2I0','K2V5','K2W6','K2WX','K3A1','K3A6','K3DU','K3R7','K3T5','K4A6','K4A9','K4BM','K4CR','K4MR','K4SL','K5C1','K5M9','K5T6','K6R6','K79J','K8A0','K8D3','K8S0','K9A4','K9D7','K9L2','K9V9','KAAO','KAAT','KABQ','KABY','KACB','KACJ','KACP','KACQ','KACV','KACY','KADC','KADH','KADM','KADW','KAEG','KAEX','KAFF','KAFP','KAFW','KAGC','KAIK','KAIO','KAJG','KAJO','KAKR','KALB','KALM','KALO','KAMG','KAMN','KANJ','KANK','KAOO','KAPF','KAQP','KAQW','KARA','KARB','KARL','KARR','KART','KARV','KASH','KASJ','KASL','KAST','KASX','KATL','KATS','KATT','KAUD','KAUH','KAUM','KAUO','KAWG','KAWN','KAXA','KAXH','KAXS','KAXX','KAYS','KAZC','KB23','KBAK','KBBB','KBBW','KBCE','KBCK','KBCT','KBDG','KBDH','KBDU','KBED','KBEH','KBFD','KBFF','KBFL','KBFM','KBFW','KBGE','KBHB','KBHK','KBHM','KBIJ','KBIV','KBJJ','KBKF','KBKL','KBKW','KBLF','KBLI','KBLM','KBMC','KBMT','KBOI','KBOK','KBPG','KBPK','KBPP','KBPT','KBQK','KBRO','KBRX','KBTP','KBTR','KBUF','KBUR','KBUU','KBUY','KBVN','KBVO','KBVS','KBVY','KBWI','KBWP','KBYH','KBYI','KBYY','KC09','KC75','KCAD','KCAG','KCAV','KCBF','KCBM','KCCO','KCDA','KCDH','KCDR','KCDS','KCDW','KCEU','KCEW','KCEY','KCEZ','KCFD','KCFE','KCFV','KCGZ','KCHA','KCHD','KCHJ','KCHK','KCHO','KCIC','KCID','KCIN','KCJR','KCKF','KCKI','KCKN','KCKP','KCLE','KCLI','KCLL','KCLS','KCMA','KCMI','KCMR','KCMY','KCNB','KCNY','KCOD','KCOE','KCON','KCOS','KCOU','KCPC','KCPT','KCPW','KCQC','KCQF','KCQM','KCQV','KCQW','KCQX','KCRE','KCRP','KCRV','KCSG','KCSM','KCSQ','KCTB','KCTJ','KCTZ','KCUL','KCUT','KCVN','KCVS','KCVX','KCWC','KCXP','KCXY','KCZK','KD50','KD95','KDAB','KDAG','KDAN','KDAY','KDBQ','KDCA','KDCU','KDDH','KDEC','KDED','KDEH','KDHN','KDKR','KDLH','KDLL','KDLS','KDLZ','KDMA','KDMH','KDMW','KDNN','KDNS','KDNV','KDPG','KDQH','KDRT','KDTL','KDTO','KDUG','KDUH','KDUX','KDVK','KDVN','KDVO','KDVT','KDWH','KDWX','KDXX','KDYL','KDYT','KDZB','KDZJ','KE11','KE80','KEAR','KEAU','KECG','KEDC','KEDW','KEED','KEEN','KEFK','KEFT','KEGE','KEHO','KEKA','KEKN','KEKO','KELD','KELM','KELN','KELO','KELP','KELY','KEMM','KEMT','KEMV','KEND','KENV','KEOK','KEPH','KEPZ','KEQY','KERV','KERY','KEST','KETB','KEUF','KEUL','KEVB','KEVV','KEYF','KEZF','KEZM','KEZS','KF44','KFAF','KFAM','KFAR','KFBL','KFCM','KFDK','KFDR','KFDW','KFEP','KFEW','KFFM','KFFT','KFHB','KFIT','KFKN','KFLL','KFLO','KFMY','KFNL','KFOD','KFOE','KFOT','KFQD','KFSD','KFSE','KFSK','KFSM','KFTG','KFTN','KFTW','KFWA','KFWC','KFXE','KFYG','KFYJ','KFZG','KGAD','KGAF','KGAI','KGBD','KGCD','KGCK','KGCM','KGCN','KGDB','KGDJ','KGDP','KGDV','KGED','KGEV','KGEY','KGEZ','KGFA','KGFL','KGGE','KGGG','KGGP','KGIC','KGIF','KGKJ','KGKY','KGLE','KGLS','KGLY','KGMJ','KGMU','KGNA','KGNT','KGON','KGOV','KGPH','KGPM','KGPT','KGPZ','KGRB','KGRD','KGRF','KGRK','KGSH','KGSO','KGSP','KGTR','KGUC','KGUN','KGUS','KGVL','KGWB','KGWO','KGWW','KGXA','KGXF','KGYR','KGZL','KH21','KHAE','KHBG','KHBI','KHDC','KHEI','KHEQ','KHEY','KHFD','KHHF','KHIB','KHKY','KHLG','KHLN','KHLR','KHLX','KHMS','KHNB','KHOP','KHOT','KHOU','KHQZ','KHRI','KHRJ','KHRX','KHSB','KHSE','KHSI','KHSP','KHST','KHSV','KHTL','KHUA','KHUF','KHUM','KHWV','KHYI','KHYS','KHYX','KHZE','KHZR','KHZX','KHZY','KI75','KIAD','KIAH','KICL','KICR','KIDA','KIDI','KIDP','KIDV','KIFP','KIGQ','KIIY','KIKK','KIKW','KILE','KIML','KIMT','KIND','KINF','KINS','KINW','KIPL','KIPT','KIRK','KISN','KISQ','KITH','KIXD','KIZA','KJAN','KJAX','KJCT','KJDN','KJEF','KJER','KJHW','KJKL','KJMR','KJMS','KJNW','KJNX','KJQF','KJRB','KJSO','KJSV','KJWY','KJXN','KJYL','KJZI','KL35','KLAA','KLAL','KLAM','KLAN','KLAR','KLAS','KLAX','KLBB','KLBL','KLBR','KLCG','KLCH','KLCI','KLCQ','KLDJ','KLDM','KLEE','KLEW','KLEX','KLFK','KLFT','KLGB','KLGD','KLGU','KLHB','KLHM','KLHQ','KLHX','KLJF','KLLQ','KLNC','KLNK','KLNS','KLOM','KLOR','KLOT','KLOZ','KLPR','KLQK','KLRD','KLRU','KLUA','KLUD','KLUF','KLUK','KLUM','KLVM','KLVS','KLWA','KLWB','KLWV','KLXV','KLXY','KLYH','KLZK','KLZU','KLZZ','KM16','KM25','KM30','KM40','KMAO','KMBG','KMCB','KMCI','KMCJ','KMCN','KMCO','KMDH','KMDQ','KMDT','KMDW','KMDZ','KMEB','KMEM','KMFE','KMFI','KMGG','KMGM','KMGN','KMGY','KMHS','KMHT','KMIB','KMIV','KMIW','KMKE','KMKG','KMKJ','KMKN','KMKO','KMKS','KMKT','KMLB','KMLC','KMLI','KMLP','KMLS','KMLT','KMLU','KMML','KMMT','KMMU','KMMV','KMNH','KMNI','KMOB','KMOD','KMOP','KMOT','KMOX','KMPV','KMPZ','KMQE','KMQI','KMQJ','KMQS','KMRJ','KMRN','KMRT','KMSL','KMSN','KMSS','KMSV','KMTC','KMTJ','KMTN','KMTP','KMTR','KMUO','KMVN','KMWA','KMWC','KMWH','KMWK','KMWL','KMWM','KMWT','KMXO','KMYL','KMYV','KMZH','KMZZ','KNBC','KNBG','KNCA','KNDZ','KNFE','KNFG','KNFW','KNHK','KNIP','KNJK','KNJM','KNKT','KNKX','KNOG','KNQA','KNRS','KNSE','KNTU','KNUI','KNUQ','KNUW','KNXF','KNYC','KNYL','KO22','KO69','KO86','KO87','KOAJ','KOAK','KOCQ','KODO','KODX','KOFK','KOFP','KOGA','KOGB','KOGD','KOJC','KOKH','KOKM','KOLM','KOMA','KOMK','KONA','KONL','KONT','KONX','KONZ','KOPF','KOPN','KOQN','KOQU','KORC','KORD','KORE','KORF','KORG','KORH','KORL','KOSH','KOSU','KOTH','KOVL','KOVS','KOWA','KOWB','KOXB','KOXC','KOXV','KOZR','KOZW','KP28','KP38','KP58','KP67','KP68','KPAE','KPAH','KPAM','KPBG','KPBH','KPBI','KPEA','KPEQ','KPGA','KPGD','KPGV','KPHF','KPHN','KPHP','KPHX','KPIA','KPIE','KPIH','KPIR','KPKV','KPLN','KPMD','KPMP','KPMV','KPNC','KPNM','KPNT','KPOC','KPOV','KPPQ','KPQI','KPQL','KPRB','KPRC','KPRG','KPRN','KPSF','KPSK','KPSN','KPTK','KPTT','KPTW','KPUB','KPUC','KPUJ','KPUM','KPUW','KPVB','KPVC','KPVG','KPVJ','KPVW','KPWC','KPWM','KPYM','KPYX','KRAC','KRBD','KRBG','KRCE','KRCM','KRCX','KRCZ','KRDM','KRDR','KRDU','KRFD','KRHV','KRIC','KRIM','KRIV','KRIW','KRKD','KRME','KRMN','KRND','KRNM','KRNT','KROA','KROS','KROW','KRQB','KRQE','KRQO','KRRL','KRSL','KRSN','KRST','KRSV','KRUG','KRUQ','KRWF','KRWI','KRWL','KRWV','KRXE','KRYN','KRYV','KRZL','KRZR','KRZZ','KS14','KS25','KS32','KS47','KSAD','KSAF','KSAN','KSAW','KSAZ','KSBA','KSBD','KSBM','KSBP','KSBS','KSBY','KSDA','KSDL','KSEA','KSEG','KSET','KSEZ','KSFB','KSFF','KSFM','KSFO','KSFQ','KSGE','KSGH','KSGT','KSHR','KSIB','KSIY','KSJT','KSKA','KSKX','KSLC','KSLE','KSLG','KSLH','KSLN','KSLO','KSLR','KSNC','KSNK','KSNL','KSNT','KSOW','KSPB','KSPD','KSPF','KSPG','KSPI','KSPS','KSPW','KSRR','KSSC','KSSI','KSTC','KSTE','KSTJ','KSTK','KSTL','KSTS','KSUE','KSUN','KSUS','KSUT','KSUU','KSUW','KSUX','KSVC','KSVH','KSVN','KSWF','KSXT','KSYN','KSYR','KSZT','KT20','KT43','KTAN','KTAZ','KTBN','KTBX','KTCS','KTDF','KTDO','KTDR','KTDZ','KTEX','KTHV','KTIK','KTKI','KTKV','KTLH','KTMB','KTNB','KTOA','KTOC','KTOL','KTOR','KTPA','KTPF','KTPH','KTQH','KTRK','KTRL','KTTF','KTTN','KTUS','KTVC','KTVF','KTVK','KTWF','KTXK','KU24','KU31','KU78','KUBE','KUCY','KUDG','KUES','KUGN','KUIN','KUKL','KUNI','KUNR','KUNU','KUNV','KUSE','KUTS','KVBT','KVCB','KVCV','KVDW','KVER','KVES','KVIH','KVIS','KVJI','KVKS','KVLD','KVLL','KVNC','KVNY','KVOK','KVPS','KVQQ','KVRB','KVTA','KVTP','KVWU','KVYS','KWBC','KWDG','KWDR','KWHP','KWMC','KWVL','KWWD','KXFL','KXSA','KY19','KY23','KY50','KY51','KY70','KYIP','KYKM','KYNG','KZPH') THEN 0 ELSE 1 END AS "Airport_Code_8",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K06D','K0A9','K0J4','K12N','K1A5','K1A6','K1F0','K1II','K1M4','K1P1','K1V6','K20U','K20V','K21D','K2D5','K2G4','K2I0','K2J9','K2V5','K33V','K36U','K3A1','K3A6','K3I2','K3LF','K3MW','K3R7','K3TH','K46D','K48I','K4A9','K4BL','K4HV','K4I3','K54J','K5SM','K5W8','K6A2','K6R3','K82V','K87Q','K8D3','K8S0','K9A4','K9BB','K9D7','K9L2','KABE','KABH','KABQ','KABY','KACB','KADG','KADH','KADM','KADS','KADW','KAEJ','KAFF','KAFJ','KAFN','KAGC','KAHN','KAHQ','KAIT','KAKO','KAKR','KALB','KALI','KALN','KALO','KALS','KALW','KALX','KAMN','KANB','KAND','KANE','KANQ','KAOO','KAPA','KAPC','KAQP','KAQV','KARB','KARG','KARM','KARR','KARV','KASD','KASG','KASH','KAST','KASW','KATL','KATS','KATT','KAUM','KAUN','KAUO','KAUS','KAUW','KAVK','KAVP','KAWH','KAWN','KAXA','KAXN','KAXS','KAYS','KAZO','KBAD','KBAN','KBBW','KBCB','KBCK','KBDG','KBDH','KBDN','KBDR','KBDU','KBEA','KBED','KBFF','KBFW','KBGD','KBGE','KBGM','KBGR','KBHB','KBIE','KBIF','KBIL','KBIS','KBIV','KBIX','KBJC','KBKE','KBKL','KBKN','KBKV','KBLF','KBLH','KBLU','KBLV','KBMC','KBMI','KBMQ','KBNL','KBNW','KBOI','KBOK','KBOS','KBOW','KBPG','KBRL','KBTL','KBTR','KBTV','KBUO','KBUU','KBUY','KBVO','KBVR','KBVS','KBVU','KBVX','KBVY','KBWG','KBWI','KBWP','KBXA','KBYS','KBYY','KBZN','KC35','KC75','KCAD','KCAE','KCAG','KCAK','KCBE','KCBK','KCBM','KCCA','KCCO','KCDC','KCDH','KCDN','KCDR','KCEC','KCEF','KCEU','KCEZ','KCFS','KCGI','KCGS','KCHA','KCHD','KCHJ','KCHK','KCHS','KCIC','KCIU','KCKI','KCKM','KCKP','KCKV','KCLE','KCLI','KCMA','KCMI','KCMR','KCNM','KCNO','KCNW','KCOD','KCOF','KCON','KCOQ','KCOT','KCPC','KCPK','KCPT','KCPW','KCQF','KCQM','KCQT','KCQX','KCRE','KCRP','KCRS','KCRV','KCRW','KCRX','KCSG','KCSM','KCSV','KCTB','KCTD','KCTZ','KCUH','KCUT','KCVX','KCWA','KCWC','KCWI','KCWN','KCWV','KCXO','KCZK','KCZZ','KD25','KD95','KDAG','KDAL','KDAW','KDAY','KDBQ','KDCA','KDCM','KDEC','KDED','KDEH','KDEN','KDET','KDFW','KDHT','KDIK','KDKB','KDKK','KDLF','KDLL','KDMA','KDMN','KDMW','KDNL','KDNN','KDNS','KDNV','KDPL','KDRA','KDRC','KDRI','KDRO','KDRT','KDTN','KDTO','KDTW','KDUG','KDUJ','KDUX','KDVP','KDWH','KDXR','KDXX','KDYA','KDYL','KDYR','KDYS','KDYT','KE33','KEAT','KEAU','KECG','KECU','KEDC','KEDJ','KEEN','KEEO','KEET','KEFC','KEFT','KEGE','KEGV','KEHO','KEHR','KEKO','KEKQ','KELN','KELP','KELY','KELZ','KEMM','KEMP','KENL','KENV','KENW','KEPH','KERI','KERY','KESC','KESF','KEST','KETC','KEUL','KEWN','KEWR','KEYE','KEYF','KEYW','KF05','KF46','KFAT','KFBL','KFDK','KFDR','KFEW','KFFA','KFFC','KFFM','KFFO','KFFT','KFFX','KFIG','KFLL','KFLP','KFME','KFMH','KFNB','KFNL','KFNT','KFOK','KFOT','KFOZ','KFPK','KFQD','KFSD','KFSI','KFSK','KFTK','KFTN','KFVX','KFWA','KFWD','KFXY','KFZG','KGAI','KGBD','KGCC','KGCK','KGCM','KGCN','KGDJ','KGDP','KGDV','KGEV','KGEY','KGFK','KGGE','KGGP','KGGW','KGHW','KGIC','KGIF','KGKY','KGLD','KGLE','KGLS','KGLW','KGMJ','KGMU','KGNC','KGNV','KGOO','KGOP','KGOV','KGPH','KGPZ','KGRF','KGRK','KGRR','KGSB','KGSO','KGSP','KGTB','KGTF','KGUN','KGWB','KGWW','KGXA','KGXF','KGYB','KGYH','KGYI','KGYY','KGZL','KH21','KHAE','KHBG','KHDC','KHDE','KHDN','KHEF','KHEI','KHEQ','KHFD','KHGR','KHHW','KHIB','KHJH','KHJO','KHLC','KHLG','KHLN','KHLX','KHMS','KHND','KHNZ','KHON','KHOP','KHOT','KHOU','KHQM','KHQZ','KHRI','KHRT','KHRX','KHSB','KHST','KHTS','KHUA','KHUF','KHUM','KHVR','KHVS','KHWD','KHWO','KHWV','KHWY','KHXD','KHYA','KHYI','KHYW','KHYX','KHZX','KHZY','KI35','KI39','KI75','KIAB','KIAD','KIAG','KIAH','KIBM','KICT','KIDA','KIDI','KIER','KIGM','KIIY','KIKA','KIKW','KILE','KILG','KIML','KIMM','KIMT','KIND','KINF','KINK','KINT','KIOB','KISN','KISO','KIWD','KIXA','KIXD','KIYA','KJAN','KJAS','KJAX','KJER','KJES','KJFX','KJFZ','KJGG','KJHW','KJKJ','KJKL','KJMR','KJMS','KJNW','KJNX','KJOT','KJQF','KJRB','KJSO','KJST','KJSV','KJVL','KJWG','KJWY','KJYG','KJYM','KJYR','KJZI','KLAF','KLAM','KLAR','KLAS','KLBF','KLBL','KLBX','KLCH','KLCQ','KLDM','KLEB','KLEE','KLFI','KLGA','KLGC','KLGU','KLHW','KLHX','KLIC','KLKU','KLKV','KLLJ','KLMO','KLMT','KLNC','KLNL','KLNR','KLOM','KLOZ','KLPC','KLPR','KLQK','KLRF','KLRJ','KLRO','KLSB','KLSE','KLUF','KLUM','KLVJ','KLVK','KLVM','KLVN','KLWA','KLWC','KLWS','KLWT','KLWV','KLXL','KLXV','KLYH','KLZZ','KM16','KM25','KM30','KMAE','KMAI','KMAN','KMAO','KMBL','KMCC','KMCD','KMCI','KMCK','KMCN','KMCO','KMDH','KMDT','KMDW','KMDZ','KMEH','KMEI','KMEM','KMER','KMEZ','KMFE','KMFI','KMFV','KMGG','KMGR','KMGW','KMHE','KMHS','KMIW','KMJQ','KMJX','KMKN','KMKO','KMKS','KMKT','KMLC','KMLF','KMLI','KMLJ','KMLT','KMLU','KMMH','KMMI','KMMK','KMNE','KMNM','KMNZ','KMOD','KMPV','KMQB','KMQE','KMQY','KMRC','KMRH','KMRJ','KMSL','KMSO','KMSP','KMSS','KMSV','KMSY','KMTR','KMTV','KMTW','KMUO','KMUT','KMVN','KMWA','KMWH','KMWK','KMWL','KMWN','KMWS','KMXF','KMYF','KMYL','KMYP','KMYR','KMYV','KMZZ','KN03','KN60','KNBC','KNBG','KNBJ','KNBT','KNCA','KNEW','KNFE','KNFG','KNFJ','KNFL','KNFW','KNID','KNJK','KNMM','KNRB','KNRS','KNSE','KNUI','KNUW','KNXF','KNXP','KNYG','KNYL','KO54','KO87','KOAJ','KOBE','KOCF','KODO','KODX','KOEB','KOFF','KOFK','KOGD','KOJA','KOKC','KOKH','KOKK','KOKM','KOLM','KOLS','KOLZ','KOMA','KOMH','KONA','KONM','KONX','KONZ','KOOA','KOPF','KOQN','KOQT','KORC','KORE','KORL','KOSU','KOTG','KOTH','KOTM','KOUN','KOVL','KOWB','KOWD','KOWP','KOXI','KOZW','KP58','KP67','KP68','KP69','KPAE','KPAH','KPAM','KPBF','KPBG','KPBI','KPCZ','KPDK','KPEO','KPEZ','KPGV','KPHF','KPHL','KPHP','KPIA','KPIB','KPIH','KPIL','KPIN','KPKB','KPKD','KPLN','KPMD','KPMP','KPMV','KPNA','KPNC','KPNS','KPOB','KPOF','KPOV','KPPA','KPPF','KPPO','KPPQ','KPQI','KPRB','KPRC','KPRG','KPRX','KPSC','KPSK','KPSN','KPSO','KPTS','KPTW','KPUB','KPUJ','KPUW','KPVC','KPVF','KPVJ','KPWA','KPWC','KPWK','KPWM','KPYX','KRAL','KRAP','KRBD','KRBW','KRCA','KRCE','KRCM','KRCR','KRCZ','KRDD','KRDK','KRDM','KRDR','KREO','KRHI','KRHV','KRIL','KRIM','KRIW','KRJD','KRKD','KRMG','KRMN','KRND','KRNH','KRNM','KROC','KROG','KROS','KROX','KRPJ','KRQB','KRQE','KRRT','KRSL','KRSP','KRST','KRSW','KRUG','KRUT','KRWF','KRWL','KRYT','KRYV','KRYY','KRZL','KRZZ','KS32','KS47','KSAF','KSAN','KSAT','KSAW','KSBD','KSBO','KSBY','KSDB','KSDM','KSDY','KSEA','KSEP','KSEZ','KSFM','KSFZ','KSGE','KSGJ','KSGS','KSGT','KSGU','KSHR','KSHV','KSJN','KSJT','KSKA','KSKF','KSLE','KSLK','KSLN','KSLO','KSLR','KSMN','KSMP','KSNA','KSNC','KSNL','KSNT','KSNY','KSOP','KSOW','KSPD','KSPF','KSRE','KSRQ','KSRR','KSSI','KSTC','KSTE','KSTF','KSTL','KSUA','KSUE','KSUX','KSVC','KSVH','KSVN','KSWO','KSYF','KSYN','KT43','KT82','KTAD','KTBN','KTBR','KTDR','KTDZ','KTHV','KTIK','KTIW','KTIX','KTKV','KTLH','KTMB','KTME','KTNU','KTOA','KTOB','KTOI','KTOL','KTOP','KTOR','KTPF','KTQE','KTQH','KTRL','KTRM','KTSP','KTTA','KTTN','KTUL','KTUP','KTUS','KTVC','KTVL','KTVR','KTWF','KTYR','KTYS','KU24','KU28','KU31','KUAO','KUCP','KUCY','KUIL','KUIN','KUKF','KUKT','KULM','KUNI','KUNO','KUNR','KUNU','KUNV','KUOX','KUTA','KUXL','KVCB','KVDF','KVDW','KVER','KVIH','KVIS','KVJI','KVNY','KVPZ','KVQQ','KVRB','KVSF','KVTI','KVUO','KVVG','KVWU','KW22','KW99','KWAL','KWDG','KWDR','KWEY','KWHP','KWLD','KWRB','KWRI','KWST','KWVI','KWVL','KWWR','KXMR','KXSA','KXVG','KXVW','KY19','KY23','KY63','KY70','KYIP','KYKM','KZPH') THEN 0 ELSE 1 END AS "Airport_Code_9",
                --   CASE WHEN COALESCE("Airport_Code", 'KCQT') in ('K04V','K04W','K06D','K08D','K0CO','K0E0','K0F2','K12N','K1A5','K1A6','K1II','K1J0','K1M4','K1V4','K1V6','K20U','K27A','K2J9','K2V5','K2W6','K2WX','K3DU','K3J7','K3MW','K3T5','K3TH','K40J','K42J','K48I','K4A9','K4BM','K4M9','K4O4','K54J','K5H4','K5SM','K5W8','K65S','K6B0','K6R3','K6R6','K8S0','K9BB','K9D7','K9MN','KAAF','KAAT','KABE','KABH','KABQ','KABY','KACJ','KACY','KADC','KADH','KADS','KADU','KADW','KAEG','KAEL','KAFN','KAFW','KAGC','KAHN','KAHQ','KAIK','KAIO','KAJG','KAKH','KAKO','KAKQ','KALB','KALN','KALO','KAMA','KAMN','KANE','KAPA','KAPN','KAPY','KAQO','KAQP','KAQR','KAQW','KARB','KARG','KARL','KART','KARV','KASE','KASG','KASJ','KASL','KAST','KASW','KASX','KATS','KAUD','KAUH','KAUM','KAUO','KAUS','KAUW','KAVP','KAWG','KAWM','KAWN','KAXA','KAXN','KAYS','KAZE','KAZO','KB23','KBAB','KBAC','KBAF','KBBB','KBBD','KBBP','KBBW','KBCK','KBDE','KBDH','KBDR','KBDU','KBEA','KBFI','KBFW','KBGR','KBHB','KBHK','KBIF','KBIH','KBIL','KBIS','KBIV','KBKD','KBKE','KBKF','KBKL','KBKS','KBLH','KBMG','KBMI','KBML','KBMQ','KBMT','KBNA','KBOW','KBPG','KBPK','KBQK','KBQP','KBRD','KBRL','KBRO','KBTP','KBUF','KBUO','KBUR','KBVI','KBVN','KBVS','KBVU','KBWG','KBWP','KBYG','KBYI','KBZN','KC09','KC35','KC75','KCAD','KCAE','KCAG','KCAK','KCAO','KCAV','KCBE','KCBF','KCBG','KCCO','KCCR','KCCU','KCCY','KCDJ','KCDN','KCDR','KCEC','KCEF','KCEZ','KCFS','KCGC','KCGE','KCGF','KCGZ','KCHA','KCHJ','KCHO','KCIC','KCID','KCKM','KCKN','KCKP','KCKV','KCLL','KCMA','KCMH','KCMR','KCMS','KCMY','KCNB','KCNM','KCNW','KCNY','KCOD','KCOF','KCOM','KCOS','KCOT','KCPK','KCPS','KCQB','KCQC','KCQM','KCQT','KCQV','KCQW','KCQX','KCRE','KCRG','KCRP','KCRQ','KCRS','KCRV','KCRW','KCRX','KCTD','KCTJ','KCTZ','KCUL','KCUT','KCVO','KCWC','KCWI','KCWN','KCWV','KCZK','KCZZ','KD60','KDAA','KDAB','KDAG','KDAL','KDAY','KDBQ','KDCA','KDCM','KDCU','KDDH','KDEW','KDFI','KDFW','KDHT','KDIJ','KDKB','KDLF','KDLH','KDLN','KDLZ','KDMH','KDMW','KDNL','KDNN','KDOV','KDPG','KDRO','KDTL','KDTS','KDTW','KDUA','KDUB','KDUC','KDUG','KDVK','KDVL','KDVN','KDVP','KDWX','KDYS','KE11','KE33','KE80','KEAT','KEAU','KECG','KECP','KEDC','KEDU','KEED','KEFC','KEFD','KEFK','KEFT','KEGE','KEGV','KEHY','KEIK','KEKA','KEKM','KEKN','KEKO','KELD','KELN','KELO','KELP','KELY','KELZ','KEMP','KEMT','KEMV','KEND','KENL','KENV','KEPH','KERI','KERV','KERY','KESF','KESN','KEST','KETC','KEUL','KEVB','KEVW','KEWK','KEWN','KEYE','KF05','KFAR','KFAY','KFBG','KFBL','KFBR','KFCS','KFDK','KFDW','KFET','KFEW','KFFC','KFFL','KFFM','KFFX','KFFZ','KFHB','KFIG','KFKA','KFKL','KFKN','KFLD','KFLP','KFME','KFMH','KFMM','KFMN','KFMY','KFNB','KFNT','KFOK','KFOT','KFPR','KFQD','KFRG','KFRI','KFSE','KFST','KFTG','KFTK','KFTN','KFUL','KFWB','KFWC','KFWN','KFWS','KFXY','KFYG','KFYJ','KGBN','KGCK','KGCM','KGCN','KGDB','KGDJ','KGDP','KGEG','KGEV','KGEY','KGEZ','KGFA','KGFK','KGFL','KGGW','KGIC','KGJT','KGKY','KGLD','KGLR','KGLS','KGLY','KGON','KGOP','KGOV','KGPI','KGRF','KGRK','KGRR','KGSB','KGSO','KGSP','KGTB','KGUP','KGUS','KGVL','KGWB','KGWO','KGWR','KGWW','KGXF','KGYH','KGYI','KGYL','KGYR','KH21','KHAO','KHBG','KHBI','KHBR','KHBV','KHDC','KHDE','KHEF','KHEI','KHEQ','KHFD','KHFF','KHHF','KHIB','KHIE','KHIF','KHJH','KHJO','KHKA','KHLN','KHLR','KHLX','KHMM','KHMS','KHNB','KHND','KHOE','KHOP','KHOT','KHOU','KHQM','KHQU','KHRJ','KHRO','KHRX','KHSA','KHSE','KHSP','KHST','KHSV','KHTL','KHTO','KHTS','KHUF','KHUT','KHVN','KHYA','KHYI','KHYR','KHYS','KHZE','KI39','KI75','KIAB','KIBM','KICL','KICR','KICT','KIDA','KIDP','KIFA','KIFP','KIGM','KIIB','KIJD','KILE','KILN','KIMM','KIMT','KIND','KINJ','KINK','KINL','KINS','KINT','KINW','KIOW','KIRK','KISP','KISW','KIWD','KIYA','KIYK','KIZA','KJAS','KJBR','KJCT','KJDD','KJDN','KJFZ','KJKL','KJLN','KJMS','KJOT','KJRB','KJSO','KJVL','KJWG','KJWY','KJXI','KJYL','KJYM','KJYO','KJYR','KJZI','KK22','KKLS','KLAA','KLAF','KLAM','KLAN','KLAW','KLBB','KLBX','KLCG','KLCH','KLCK','KLEB','KLFI','KLFK','KLGB','KLGD','KLHB','KLHM','KLHX','KLJF','KLKU','KLLQ','KLMT','KLNK','KLNS','KLOR','KLOT','KLRO','KLSB','KLSE','KLSV','KLUA','KLUM','KLUX','KLVN','KLWA','KLWB','KLWC','KLXL','KLXN','KLXT','KLXY','KLZU','KLZZ','KM16','KM46','KM89','KMAN','KMAO','KMBG','KMBL','KMBS','KMCD','KMCI','KMCJ','KMCN','KMCO','KMDD','KMDQ','KMDT','KMDZ','KMEH','KMEM','KMER','KMFD','KMFI','KMGC','KMGG','KMGM','KMGN','KMGR','KMHE','KMHK','KMHS','KMHT','KMIC','KMIE','KMIV','KMIW','KMJX','KMKC','KMKG','KMKJ','KMKN','KMKO','KMKY','KMLC','KMLD','KMLF','KMLU','KMMI','KMML','KMMT','KMNH','KMNM','KMNN','KMOD','KMOP','KMOT','KMOX','KMQJ','KMRH','KMRJ','KMSL','KMSO','KMTN','KMTP','KMTR','KMUI','KMWA','KMWC','KMWH','KMWK','KMWL','KMWN','KMWO','KMWS','KMWT','KMXF','KMYF','KMYP','KMYV','KNCA','KNDZ','KNEW','KNFG','KNFJ','KNFW','KNGP','KNGU','KNHK','KNID','KNJK','KNKA','KNKT','KNKX','KNLC','KNMM','KNQA','KNQI','KNRS','KNSE','KNSI','KNUQ','KNYG','KO54','KO69','KO86','KO87','KOAJ','KOAK','KOBE','KOCH','KOCW','KODX','KOEB','KOEO','KOFF','KOFK','KOGB','KOGD','KOKB','KOKK','KOKM','KOKZ','KOLE','KOLF','KOLM','KOLU','KOLZ','KOMA','KONX','KONZ','KOPF','KORC','KORD','KORE','KORH','KORL','KOSC','KOSH','KOSU','KOTH','KOVE','KOWA','KOWB','KOWD','KOWP','KOXB','KOXC','KOXI','KOZR','KOZW','KP28','KP58','KP68','KPAH','KPAN','KPAO','KPBH','KPBI','KPDC','KPDT','KPEA','KPEQ','KPEX','KPEZ','KPGD','KPHD','KPHF','KPHL','KPHN','KPHX','KPIA','KPIB','KPIT','KPKB','KPNA','KPNC','KPNE','KPNM','KPNS','KPNT','KPOB','KPOU','KPPF','KPQL','KPQN','KPRN','KPRO','KPRZ','KPSC','KPSN','KPSO','KPSP','KPTB','KPTN','KPTW','KPUJ','KPVB','KPVG','KPVJ','KPVU','KPVW','KPWA','KPWM','KPZQ','KRAC','KRAL','KRAP','KRBL','KRCA','KRCE','KRCR','KRCX','KRCZ','KRDD','KRDK','KRDM','KRDU','KREO','KRFI','KRGK','KRHI','KRHV','KRIM','KRIV','KRJD','KRKP','KRME','KRMN','KRMY','KRNH','KRNO','KRNT','KRNV','KROW','KROX','KRPH','KRRL','KRRT','KRSL','KRSN','KRSP','KRSV','KRTN','KRTS','KRUE','KRUG','KRUT','KRVS','KRWL','KRWV','KRYN','KRYT','KRYV','KRYW','KRYY','KRZL','KS32','KSAN','KSAT','KSBA','KSBM','KSBN','KSBP','KSBY','KSCH','KSCK','KSDA','KSDB','KSDF','KSDL','KSEA','KSET','KSEZ','KSFB','KSFF','KSFM','KSFY','KSFZ','KSGE','KSGJ','KSGR','KSGS','KSGT','KSGU','KSHD','KSIF','KSJC','KSJN','KSKF','KSKX','KSLC','KSLH','KSLI','KSLK','KSLN','KSMN','KSMO','KSMX','KSNK','KSNL','KSNS','KSOP','KSPF','KSPW','KSQL','KSRB','KSRQ','KSSF','KSSI','KSTC','KSTF','KSTJ','KSTK','KSTS','KSUA','KSUN','KSUT','KSUU','KSUW','KSUX','KSVC','KSVH','KSVN','KSWO','KSYF','KSYN','KSYR','KSZL','KT62','KT65','KT82','KTAD','KTAN','KTAZ','KTBX','KTCC','KTCL','KTCM','KTCS','KTDF','KTDR','KTEW','KTEX','KTHA','KTKI','KTKV','KTMH','KTNU','KTOB','KTOC','KTOL','KTOP','KTPF','KTQE','KTRI','KTRL','KTSP','KTTF','KTTN','KTTS','KTUL','KTUP','KTVC','KTVF','KTVI','KTVK','KTVL','KTXK','KTYQ','KTYS','KU24','KU28','KUBE','KUCY','KUDG','KUIL','KUIN','KUKT','KUOX','KUTA','KUTS','KUUU','KUVA','KUXL','KUZA','KVAD','KVAY','KVCV','KVEL','KVES','KVGT','KVIH','KVIS','KVKS','KVLD','KVLL','KVNY','KVPZ','KVQQ','KVRB','KVSF','KVTI','KVTP','KVVG','KVWU','KVYS','KW43','KW99','KWAL','KWHP','KWJF','KWLD','KWMC','KWRB','KWVI','KWVL','KWWR','KWYS','KXLL','KXNA','KXVG','KY22','KY23','KY51','KYNG','KZPH') THEN 0 ELSE 1 END AS "Airport_Code_10",
                  usa_accident_zipcode_map."Count" AS "Zipcode",
                  "Source",
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  "Country",
                  len(string_split(COALESCE("Description", 'A crash has occurred causing no to minimum delays. Use caution.'), ' ')) AS "Description",
                  "Start_Time",
                  list_aggregate(list_transform(['rain', 'snow', 'fog', 'wind', 'thunder', 'storm', 'drizzle', 'sand', 'whirlwind'], x->(contains(lower(COALESCE("Weather_Condition", 'Fair')),x)::BIGINT)),'sum') AS "Weather_Condition"
                FROM
                  ((usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode") LEFT JOIN 
                  Airport_Code on COALESCE(usa_accident."Airport_Code", 'KCQT')=Airport_Code.Airport_Code)
                --    usa_accident LEFT JOIN usa_accident_zipcode_map on COALESCE(usa_accident."Zipcode", '91761')=usa_accident_zipcode_map."Zipcode"
              ) AS data1
          ) AS data2
      ) AS F1
  ) AS F2;