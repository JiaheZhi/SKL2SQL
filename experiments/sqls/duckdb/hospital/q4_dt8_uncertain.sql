EXPLAIN ANALYZE
SELECT
  CASE
    WHEN "rcount" <> '0' THEN CASE
      WHEN "rcount" <> '1' THEN CASE
        WHEN "rcount" <> '2' THEN CASE
          WHEN "rcount" <> '3' THEN CASE
            WHEN "rcount" <> '4' THEN CASE
              WHEN "facid" <> 'E' THEN CASE
                WHEN "irondef" <= 0.500000004413473 THEN CASE
                  WHEN "hematocrit" <= 9.65000002677489 THEN 8
                  ELSE 7
                END
                ELSE CASE
                  WHEN "respiration" <= 5.95000000309003 THEN 9
                  ELSE 8
                END
              END
              ELSE CASE
                WHEN "respiration" <= 7.15000000804143 THEN CASE
                  WHEN "hematocrit" <= 9.65000002677489 THEN 11
                  ELSE 8
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.34010108253688 THEN 10
                  ELSE 11
                END
              END
            END
            ELSE CASE
              WHEN "facid" <> 'E' THEN CASE
                WHEN "hemo" <= 0.500000008934971 THEN CASE
                  WHEN "hematocrit" <= 14.3499999292511 THEN 6
                  ELSE 8
                END
                ELSE CASE
                  WHEN "hematocrit" <= 9.34999994523216 THEN 9
                  ELSE 7
                END
              END
              ELSE CASE
                WHEN "hematocrit" <= 9.67499995268620 THEN CASE
                  WHEN "bmi" <= 28.8230185261884 THEN 10
                  ELSE 9
                END
                ELSE CASE
                  WHEN "respiration" <= 7.22499999351517 THEN 7
                  ELSE 8
                END
              END
            END
          END
          ELSE CASE
            WHEN "facid" <> 'E' THEN CASE
              WHEN "irondef" <= 0.500000004413473 THEN CASE
                WHEN "hemo" <= 0.500000008934971 THEN CASE
                  WHEN "neutrophils" <= 16.3249999215290 THEN 5
                  ELSE 7
                END
                ELSE CASE
                  WHEN "respiration" <= 5.95000000309003 THEN 8
                  ELSE 6
                END
              END
              ELSE CASE
                WHEN "creatinine" <= 0.876949630435959 THEN CASE
                  WHEN "respiration" <= 6.55000000079710 THEN 8
                  ELSE 7
                END
                ELSE CASE
                  WHEN "respiration" <= 6.84999999832602 THEN 6
                  ELSE 7
                END
              END
            END
            ELSE CASE
              WHEN "hematocrit" <= 9.62499997953770 THEN CASE
                WHEN "bloodureanitro" <= 25.4999997901122 THEN CASE
                  WHEN "respiration" <= 5.85000001115497 THEN 8
                  ELSE 8
                END
                ELSE CASE
                  WHEN "glucose" <= 110.696411272312 THEN 11
                  ELSE 9
                END
              END
              ELSE CASE
                WHEN "respiration" <= 7.15000000804143 THEN CASE
                  WHEN "respiration" <= 5.85000001115497 THEN 8
                  ELSE 6
                END
                ELSE CASE
                  WHEN "hematocrit" <= 14.3499999292511 THEN 7
                  ELSE 8
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "facid" <> 'E' THEN CASE
            WHEN "irondef" <= 0.500000004413473 THEN CASE
              WHEN "hemo" <= 0.500000008934971 THEN CASE
                WHEN "hematocrit" <= 14.3499999292511 THEN CASE
                  WHEN "facid" <> 'D' THEN 4
                  ELSE 5
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.27811668311112 THEN 5
                  ELSE 6
                END
              END
              ELSE CASE
                WHEN "hematocrit" <= 10.0750000411889 THEN CASE
                  WHEN "respiration" <= 5.14999999978909 THEN 7
                  ELSE 6
                END
                ELSE CASE
                  WHEN "bmi" <= 32.1094245975459 THEN 5
                  ELSE 7
                END
              END
            END
            ELSE CASE
              WHEN "hematocrit" <= 9.65000002677489 THEN CASE
                WHEN "respiration" <= 7.24999999997649 THEN CASE
                  WHEN "creatinine" <= 1.31739256951001 THEN 6
                  ELSE 7
                END
                ELSE 7
              END
              ELSE CASE
                WHEN "glucose" <= 106.984906146822 THEN CASE
                  WHEN "bmi" <= 28.5190820369244 THEN 8
                  ELSE 6
                END
                ELSE CASE
                  WHEN "bmi" <= 27.4971072877799 THEN 6
                  ELSE 5
                END
              END
            END
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.67499995268620 THEN CASE
              WHEN "bloodureanitro" <= 27.5000004738546 THEN CASE
                WHEN "respiration" <= 5.85000001115497 THEN CASE
                  WHEN "bmi" <= 28.8752076499930 THEN 8
                  ELSE 7
                END
                ELSE CASE
                  WHEN "bloodureanitro" <= 12.5000000384869 THEN 5
                  ELSE 7
                END
              END
              ELSE CASE
                WHEN "creatinine" <= 1.19438558114160 THEN CASE
                  WHEN "pulse" <= 56.0000005517951 THEN 11
                  ELSE 8
                END
                ELSE CASE
                  WHEN "respiration" <= 5.90000000712250 THEN 10
                  ELSE 7
                END
              END
            END
            ELSE CASE
              WHEN "respiration" <= 7.12500000158011 THEN CASE
                WHEN "respiration" <= 5.87499998370606 THEN CASE
                  WHEN "creatinine" <= 1.26310128704152 THEN 6
                  ELSE 7
                END
                ELSE CASE
                  WHEN "bmi" <= 27.5860670488581 THEN 6
                  ELSE 5
                END
              END
              ELSE CASE
                WHEN "bmi" <= 32.1934756437763 THEN CASE
                  WHEN "hematocrit" <= 14.7499999570908 THEN 6
                  ELSE 7
                END
                ELSE CASE
                  WHEN "respiration" <= 7.85000001940730 THEN 7
                  ELSE 8
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "facid" <> 'E' THEN CASE
          WHEN "irondef" <= 0.500000004413473 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN CASE
              WHEN "facid" <> 'D' THEN CASE
                WHEN "neutrophils" <= 16.3499999991635 THEN CASE
                  WHEN "bmi" <= 27.5115126856429 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "hematocrit" <= 14.3499999292511 THEN 2
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "asthma" <= 0.500000011337521 THEN CASE
                  WHEN "pneum" <= 0.500000018273291 THEN 2
                  ELSE 4
                END
                ELSE CASE
                  WHEN "bmi" <= 27.5536893205977 THEN 6
                  ELSE 4
                END
              END
            END
            ELSE CASE
              WHEN "hematocrit" <= 9.65000002677489 THEN CASE
                WHEN "neutrophils" <= 16.7999998630257 THEN CASE
                  WHEN "respiration" <= 5.85000001115497 THEN 6
                  ELSE 5
                END
                ELSE CASE
                  WHEN "sodium" <= 141.274353058565 THEN 6
                  ELSE 7
                END
              END
              ELSE CASE
                WHEN "neutrophils" <= 15.4499999647274 THEN CASE
                  WHEN "respiration" <= 5.45000000950450 THEN 5
                  ELSE 4
                END
                ELSE CASE
                  WHEN "hematocrit" <= 11.9500000010731 THEN 5
                  ELSE 6
                END
              END
            END
          END
          ELSE CASE
            WHEN "respiration" <= 5.95000000309003 THEN CASE
              WHEN "hematocrit" <= 9.12500000540099 THEN CASE
                WHEN "respiration" <= 5.64999999337462 THEN CASE
                  WHEN "sodium" <= 133.593510837973 THEN 11
                  ELSE 7
                END
                ELSE CASE
                  WHEN "sodium" <= 138.951389443379 THEN 6
                  ELSE 5
                END
              END
              ELSE CASE
                WHEN "sodium" <= 142.070883897100 THEN CASE
                  WHEN "glucose" <= 182.566215851551 THEN 5
                  ELSE 6
                END
                ELSE CASE
                  WHEN "hematocrit" <= 13.7000000356689 THEN 7
                  ELSE 6
                END
              END
            END
            ELSE CASE
              WHEN "bmi" <= 32.1199638267762 THEN CASE
                WHEN "respiration" <= 7.15000000804143 THEN CASE
                  WHEN "hematocrit" <= 9.67499995268620 THEN 5
                  ELSE 4
                END
                ELSE CASE
                  WHEN "creatinine" <= 0.859856134937861 THEN 6
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "bmi" <= 33.4076827576854 THEN CASE
                  WHEN "pulse" <= 87.4999996445293 THEN 6
                  ELSE 7
                END
                ELSE CASE
                  WHEN "sodium" <= 140.400106441219 THEN 5
                  ELSE 6
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "hematocrit" <= 9.62499997953770 THEN CASE
            WHEN "respiration" <= 5.85000001115497 THEN CASE
              WHEN "bloodureanitro" <= 27.5000004738546 THEN CASE
                WHEN "gender" <> 'F' THEN CASE
                  WHEN "respiration" <= 5.75000001921990 THEN 6
                  ELSE 8
                END
                ELSE CASE
                  WHEN "neutrophils" <= 3.25000011134986 THEN 7
                  ELSE 7
                END
              END
              ELSE CASE
                WHEN "substancedependence" <= 0.499999996959201 THEN CASE
                  WHEN "creatinine" <= 0.869650749916048 THEN 11
                  ELSE 7
                END
                ELSE CASE
                  WHEN "depress" <= 0.499999998445112 THEN 8
                  ELSE 9
                END
              END
            END
            ELSE CASE
              WHEN "bloodureanitro" <= 29.4999995933636 THEN CASE
                WHEN "creatinine" <= 1.32492633130856 THEN CASE
                  WHEN "pulse" <= 85.4999998786653 THEN 4
                  ELSE 6
                END
                ELSE CASE
                  WHEN "pulse" <= 89.5000001054874 THEN 6
                  ELSE 9
                END
              END
              ELSE CASE
                WHEN "creatinine" <= 0.861739411239208 THEN CASE
                  WHEN "glucose" <= 125.482266005940 THEN 9
                  ELSE 7
                END
                ELSE CASE
                  WHEN "glucose" <= 198.517899568503 THEN 6
                  ELSE 8
                END
              END
            END
          END
          ELSE CASE
            WHEN "respiration" <= 7.12500000158011 THEN CASE
              WHEN "respiration" <= 5.82500000469364 THEN CASE
                WHEN "bloodureanitro" <= 34.9999999094217 THEN CASE
                  WHEN "sodium" <= 134.446670909547 THEN 6
                  ELSE 5
                END
                ELSE CASE
                  WHEN "sodium" <= 135.742369954644 THEN 5
                  ELSE 7
                END
              END
              ELSE CASE
                WHEN "glucose" <= 107.826046067854 THEN CASE
                  WHEN "sodium" <= 141.712500618928 THEN 5
                  ELSE 6
                END
                ELSE CASE
                  WHEN "glucose" <= 175.877173274411 THEN 4
                  ELSE 4
                END
              END
            END
            ELSE CASE
              WHEN "hematocrit" <= 14.3499999292511 THEN CASE
                WHEN "creatinine" <= 0.862258704796470 THEN CASE
                  WHEN "pulse" <= 61.4999999079211 THEN 7
                  ELSE 6
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.33155074740159 THEN 5
                  ELSE 6
                END
              END
              ELSE CASE
                WHEN "glucose" <= 108.704732801630 THEN CASE
                  WHEN "neutrophils" <= 7.94999998447128 THEN 7
                  ELSE 11
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.36204332747575 THEN 6
                  ELSE 7
                END
              END
            END
          END
        END
      END
    END
    ELSE CASE
      WHEN "facid" <> 'E' THEN CASE
        WHEN "irondef" <= 0.500000004413473 THEN CASE
          WHEN "hemo" <= 0.500000008934971 THEN CASE
            WHEN "facid" <> 'D' THEN CASE
              WHEN "hematocrit" <= 14.3499999292511 THEN CASE
                WHEN "hematocrit" <= 9.62499997953770 THEN CASE
                  WHEN "respiration" <= 5.82500000469364 THEN 3
                  ELSE 2
                END
                ELSE CASE
                  WHEN "sodium" <= 141.340614532276 THEN 1
                  ELSE 1
                END
              END
              ELSE CASE
                WHEN "neutrophils" <= 16.4500000029898 THEN CASE
                  WHEN "psychologicaldisordermajor" <= 0.500000008722666 THEN 2
                  ELSE 5
                END
                ELSE CASE
                  WHEN "pulse" <= 88.4999995274613 THEN 3
                  ELSE 4
                END
              END
            END
            ELSE CASE
              WHEN "asthma" <= 0.500000011337521 THEN CASE
                WHEN "pneum" <= 0.500000018273291 THEN CASE
                  WHEN "fibrosisandother" <= 0.499999987333502 THEN 1
                  ELSE 4
                END
                ELSE CASE
                  WHEN "pulse" <= 59.5000001420571 THEN 5
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "bmi" <= 32.5574250140845 THEN CASE
                  WHEN "creatinine" <= 0.868390628271027 THEN 4
                  ELSE 3
                END
                ELSE CASE
                  WHEN "neutrophils" <= 15.8499999800323 THEN 4
                  ELSE 5
                END
              END
            END
          END
          ELSE CASE
            WHEN "hematocrit" <= 10.0750000411889 THEN CASE
              WHEN "glucose" <= 106.886063311786 THEN CASE
                WHEN "facid" <> 'C' THEN CASE
                  WHEN "glucose" <= 94.3872485947134 THEN 6
                  ELSE 5
                END
                ELSE 5
              END
              ELSE CASE
                WHEN "glucose" <= 175.550276076362 THEN CASE
                  WHEN "respiration" <= 5.95000000309003 THEN 5
                  ELSE 3
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.37625671888263 THEN 5
                  ELSE 6
                END
              END
            END
            ELSE CASE
              WHEN "respiration" <= 7.15000000804143 THEN CASE
                WHEN "respiration" <= 5.85000001115497 THEN CASE
                  WHEN "bmi" <= 30.8607888109952 THEN 3
                  ELSE 5
                END
                ELSE CASE
                  WHEN "glucose" <= 105.027218553256 THEN 4
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "pulse" <= 76.4999998896362 THEN CASE
                  WHEN "bmi" <= 31.5149959121199 THEN 5
                  ELSE 5
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.00982400221122 THEN 3
                  ELSE 4
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "hematocrit" <= 9.62499997953770 THEN CASE
            WHEN "respiration" <= 5.75000001921990 THEN CASE
              WHEN "pulse" <= 49.9999998640149 THEN 8
              ELSE CASE
                WHEN "creatinine" <= 0.865811590048468 THEN CASE
                  WHEN "creatinine" <= 0.810672222015829 THEN 6
                  ELSE 8
                END
                ELSE CASE
                  WHEN "respiration" <= 4.34999999648816 THEN 6
                  ELSE 5
                END
              END
            END
            ELSE CASE
              WHEN "respiration" <= 7.15000000804143 THEN CASE
                WHEN "bloodureanitro" <= 32.4999998368605 THEN CASE
                  WHEN "malnutrition" <= 0.499999983964889 THEN 4
                  ELSE 5
                END
                ELSE CASE
                  WHEN "secondarydiagnosisnonicd9" <= 5.00000005296598 THEN 6
                  ELSE 5
                END
              END
              ELSE CASE
                WHEN "respiration" <= 8.65000009052868 THEN CASE
                  WHEN "secondarydiagnosisnonicd9" <= 5.49999995877734 THEN 6
                  ELSE 4
                END
                ELSE 7
              END
            END
          END
          ELSE CASE
            WHEN "creatinine" <= 0.868176196884660 THEN CASE
              WHEN "pulse" <= 84.4999999957333 THEN CASE
                WHEN "glucose" <= 181.853408322346 THEN CASE
                  WHEN "glucose" <= 108.500878854499 THEN 5
                  ELSE 4
                END
                ELSE CASE
                  WHEN "neutrophils" <= 5.25000003451874 THEN 4
                  ELSE 5
                END
              END
              ELSE CASE
                WHEN "bmi" <= 27.2183398228072 THEN CASE
                  WHEN "glucose" <= 157.491404619750 THEN 6
                  ELSE 5
                END
                ELSE CASE
                  WHEN "bmi" <= 32.2576272504546 THEN 5
                  ELSE 6
                END
              END
            END
            ELSE CASE
              WHEN "glucose" <= 107.531693021852 THEN CASE
                WHEN "respiration" <= 6.05000001198020 THEN CASE
                  WHEN "hematocrit" <= 10.9499999959281 THEN 5
                  ELSE 6
                END
                ELSE CASE
                  WHEN "bmi" <= 28.7821893798266 THEN 4
                  ELSE 3
                END
              END
              ELSE CASE
                WHEN "glucose" <= 176.110158678068 THEN CASE
                  WHEN "creatinine" <= 1.32681780905531 THEN 3
                  ELSE 4
                END
                ELSE CASE
                  WHEN "pulse" <= 88.4999995274613 THEN 4
                  ELSE 5
                END
              END
            END
          END
        END
      END
      ELSE CASE
        WHEN "hematocrit" <= 9.67499995268620 THEN CASE
          WHEN "bloodureanitro" <= 28.7499997280185 THEN CASE
            WHEN "respiration" <= 5.85000001115497 THEN CASE
              WHEN "sodium" <= 134.310318711377 THEN CASE
                WHEN "glucose" <= 137.851343459085 THEN CASE
                  WHEN "bloodureanitro" <= 12.5000000384869 THEN 8
                  ELSE 6
                END
                ELSE CASE
                  WHEN "dialysisrenalendstage" <= 0.499999996135845 THEN 6
                  ELSE 7
                END
              END
              ELSE CASE
                WHEN "creatinine" <= 0.868310070259937 THEN CASE
                  WHEN "sodium" <= 135.058351818210 THEN 8
                  ELSE 6
                END
                ELSE CASE
                  WHEN "sodium" <= 141.451435828440 THEN 5
                  ELSE 6
                END
              END
            END
            ELSE CASE
              WHEN "respiration" <= 7.15000000804143 THEN CASE
                WHEN "creatinine" <= 1.32758104487674 THEN CASE
                  WHEN "bmi" <= 32.0684843430521 THEN 4
                  ELSE 5
                END
                ELSE CASE
                  WHEN "neutrophils" <= 3.85000013430729 THEN 6
                  ELSE 5
                END
              END
              ELSE CASE
                WHEN "glucose" <= 107.061645243026 THEN CASE
                  WHEN "hematocrit" <= 8.19999995618736 THEN 8
                  ELSE 6
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.33037216268837 THEN 5
                  ELSE 6
                END
              END
            END
          END
          ELSE CASE
            WHEN "respiration" <= 5.85000001115497 THEN CASE
              WHEN "hemo" <= 0.500000008934971 THEN CASE
                WHEN "hematocrit" <= 8.19999995618736 THEN CASE
                  WHEN "respiration" <= 4.90000000299633 THEN 10
                  ELSE 5
                END
                ELSE CASE
                  WHEN "pulse" <= 75.5000000067042 THEN 6
                  ELSE 8
                END
              END
              ELSE CASE
                WHEN "hematocrit" <= 9.55000008047790 THEN CASE
                  WHEN "sodium" <= 140.573742903306 THEN 7
                  ELSE 9
                END
                ELSE CASE
                  WHEN "gender" <> 'F' THEN 9
                  ELSE 6
                END
              END
            END
            ELSE CASE
              WHEN "dialysisrenalendstage" <= 0.499999996135845 THEN CASE
                WHEN "pulse" <= 55.5000006103291 THEN CASE
                  WHEN "bloodureanitro" <= 36.5000004222285 THEN 6
                  ELSE 8
                END
                ELSE CASE
                  WHEN "respiration" <= 6.45000000038449 THEN 5
                  ELSE 6
                END
              END
              ELSE CASE
                WHEN "malnutrition" <= 0.499999983964889 THEN CASE
                  WHEN "creatinine" <= 0.878544435519171 THEN 6
                  ELSE 5
                END
                ELSE CASE
                  WHEN "pneum" <= 0.500000018273291 THEN 7
                  ELSE 8
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "respiration" <= 7.17499998059253 THEN CASE
            WHEN "respiration" <= 5.87499998370606 THEN CASE
              WHEN "bloodureanitro" <= 28.5000000336091 THEN CASE
                WHEN "glucose" <= 177.433750971091 THEN CASE
                  WHEN "glucose" <= 97.9301457916163 THEN 6
                  ELSE 4
                END
                ELSE CASE
                  WHEN "hematocrit" <= 11.4500000003963 THEN 6
                  ELSE 5
                END
              END
              ELSE CASE
                WHEN "neutrophils" <= 8.09999999021064 THEN CASE
                  WHEN "sodium" <= 140.463130428210 THEN 5
                  ELSE 6
                END
                ELSE CASE
                  WHEN "bmi" <= 27.2011146266301 THEN 6
                  ELSE 6
                END
              END
            END
            ELSE CASE
              WHEN "pulse" <= 59.5000001420571 THEN CASE
                WHEN "creatinine" <= 1.32970449101613 THEN CASE
                  WHEN "glucose" <= 175.062294636285 THEN 3
                  ELSE 4
                END
                ELSE CASE
                  WHEN "bloodureanitro" <= 29.9999997642992 THEN 5
                  ELSE 6
                END
              END
              ELSE CASE
                WHEN "pulse" <= 86.4999997615973 THEN CASE
                  WHEN "sodium" <= 141.334972875632 THEN 3
                  ELSE 3
                END
                ELSE CASE
                  WHEN "creatinine" <= 0.866365527848200 THEN 5
                  ELSE 3
                END
              END
            END
          END
          ELSE CASE
            WHEN "hematocrit" <= 14.3250000033398 THEN CASE
              WHEN "bmi" <= 32.0784977580519 THEN CASE
                WHEN "pulse" <= 61.4999999079211 THEN CASE
                  WHEN "hematocrit" <= 13.8500000157773 THEN 4
                  ELSE 5
                END
                ELSE CASE
                  WHEN "bloodureanitro" <= 29.4999995933636 THEN 3
                  ELSE 5
                END
              END
              ELSE CASE
                WHEN "hematocrit" <= 13.0500000207608 THEN CASE
                  WHEN "bloodureanitro" <= 21.4999999868608 THEN 5
                  ELSE 6
                END
                ELSE CASE
                  WHEN "creatinine" <= 1.29377915173498 THEN 5
                  ELSE 3
                END
              END
            END
            ELSE CASE
              WHEN "bmi" <= 32.1118876787059 THEN CASE
                WHEN "creatinine" <= 0.867633361478278 THEN CASE
                  WHEN "sodium" <= 140.916393414397 THEN 5
                  ELSE 8
                END
                ELSE CASE
                  WHEN "sodium" <= 134.430369630461 THEN 5
                  ELSE 4
                END
              END
              ELSE CASE
                WHEN "sodium" <= 140.958962058656 THEN CASE
                  WHEN "sodium" <= 134.611101895047 THEN 8
                  ELSE 6
                END
                ELSE CASE
                  WHEN "bmi" <= 32.1848246851495 THEN 10
                  ELSE 8
                END
              END
            END
          END
        END
      END
    END
  END AS Score
FROM
  (
    SELECT
      "rcount",
      "gender",
      "facid",
      "dialysisrenalendstage",
      "asthma",
      "irondef",
      "pneum",
      "substancedependence",
      "psychologicaldisordermajor",
      "depress",
      "psychother",
      "fibrosisandother",
      "malnutrition",
      "hemo",
      "hematocrit",
      "neutrophils",
      "sodium",
      "glucose",
      "bloodureanitro",
      "creatinine",
      "bmi",
      "pulse",
      "respiration",
      "secondarydiagnosisnonicd9"
    FROM
      hospital
  ) AS data