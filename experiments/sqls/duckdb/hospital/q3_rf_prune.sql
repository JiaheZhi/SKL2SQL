EXPLAIN ANALYZE
SELECT
  (
    tree_0 + tree_1 + tree_2 + tree_3 + tree_4 + tree_5 + tree_6 + tree_7 + tree_8 + tree_9 + tree_10 + tree_11 + tree_12 + tree_13 + tree_14
  ) AS Score
FROM
  (
    SELECT
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.474736000000
            ELSE 0.351910000000
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.208565333333
            ELSE 0.334470000000
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132668000000
            ELSE 0.283550666667
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.346698666667
            ELSE 0.254669333333
          END
        END
      END AS tree_0,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.475150000000
            ELSE 0.351596666667
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.207800666667
            ELSE 0.339090000000
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.133398666667
            ELSE 0.286389333333
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.347771333333
            ELSE 0.254250666667
          END
        END
      END AS tree_1,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.474700666667
            ELSE 0.351702000000
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.207568000000
            ELSE 0.338298000000
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132812666667
            ELSE 0.282994666667
          END
          ELSE CASE
            WHEN "bloodureanitro" <= 28.7499997280185 THEN 0.256854000000
            ELSE 0.367085333333
          END
        END
      END AS tree_2,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.474119333333
            ELSE 0.352156666667
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.206617333333
            ELSE 0.337051333333
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132717333333
            ELSE 0.281590000000
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.356157333333
            ELSE 0.254335333333
          END
        END
      END AS tree_3,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.473860666667
            ELSE 0.352434666667
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.207030666667
            ELSE 0.340437333333
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132776000000
            ELSE 0.279385333333
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.65000002677489 THEN 0.348856000000
            ELSE 0.254904666667
          END
        END
      END AS tree_4,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.475391333333
            ELSE 0.351362000000
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.208060666667
            ELSE 0.336852666667
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.133509333333
            ELSE 0.289908000000
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.348978666667
            ELSE 0.254126000000
          END
        END
      END AS tree_5,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.475298666667
            ELSE 0.349896000000
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.208244666667
            ELSE 0.338026666667
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132632000000
            ELSE 0.282999333333
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.350180000000
            ELSE 0.255094666667
          END
        END
      END AS tree_6,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.473616666667
            ELSE 0.353314000000
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.206835333333
            ELSE 0.338517333333
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132491333333
            ELSE 0.283296000000
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.351218000000
            ELSE 0.252826000000
          END
        END
      END AS tree_7,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.473917333333
            ELSE 0.352297333333
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.206344666667
            ELSE 0.339706666667
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132935333333
            ELSE 0.281210000000
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.351389333333
            ELSE 0.254898000000
          END
        END
      END AS tree_8,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.473934000000
            ELSE 0.350593333333
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.207203333333
            ELSE 0.338500666667
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.133669333333
            ELSE 0.286003333333
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.353330000000
            ELSE 0.254179333333
          END
        END
      END AS tree_9,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.474370666667
            ELSE 0.354535333333
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.207731333333
            ELSE 0.339726000000
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132409333333
            ELSE 0.281062000000
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.353002666667
            ELSE 0.254822000000
          END
        END
      END AS tree_10,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.475708000000
            ELSE 0.350477333333
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.207700666667
            ELSE 0.341361333333
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.132136000000
            ELSE 0.283881333333
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.351386000000
            ELSE 0.253686666667
          END
        END
      END AS tree_11,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.475740666667
            ELSE 0.351668666667
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.206721333333
            ELSE 0.337895333333
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.133216000000
            ELSE 0.283640000000
          END
          ELSE CASE
            WHEN "bloodureanitro" <= 28.2500003391996 THEN 0.257015333333
            ELSE 0.365261333333
          END
        END
      END AS tree_12,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.475352000000
            ELSE 0.352184000000
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.206848666667
            ELSE 0.336409333333
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.133930666667
            ELSE 0.283956000000
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.349854666667
            ELSE 0.254253333333
          END
        END
      END AS tree_13,
      CASE
        WHEN "rcount_0" <= 0.5 THEN CASE
          WHEN "rcount_1" <= 0.5 THEN CASE
            WHEN "rcount_2" <= 0.5 THEN 0.474592666667
            ELSE 0.354935333333
          END
          ELSE CASE
            WHEN "facid_4" <= 0.5 THEN 0.208048666667
            ELSE 0.337843333333
          END
        END
        ELSE CASE
          WHEN "facid_4" <= 0.5 THEN CASE
            WHEN "hemo" <= 0.500000008934971 THEN 0.133814000000
            ELSE 0.281373333333
          END
          ELSE CASE
            WHEN "hematocrit" <= 9.62499997953770 THEN 0.356671333333
            ELSE 0.254970000000
          END
        END
      END AS tree_14
    FROM
      (
        SELECT
          CASE
            WHEN "rcount" = '0' THEN 1
            ELSE 0
          END AS "rcount_0",
          CASE
            WHEN "rcount" = '1' THEN 1
            ELSE 0
          END AS "rcount_1",
          CASE
            WHEN "rcount" = '2' THEN 1
            ELSE 0
          END AS "rcount_2",
          CASE
            WHEN "rcount" = '3' THEN 1
            ELSE 0
          END AS "rcount_3",
          CASE
            WHEN "rcount" = '4' THEN 1
            ELSE 0
          END AS "rcount_4",
          CASE
            WHEN "rcount" = '5+' THEN 1
            ELSE 0
          END AS "rcount_5",
          "gender",
          CASE
            WHEN "facid" = 'A' THEN 1
            ELSE 0
          END AS "facid_0",
          CASE
            WHEN "facid" = 'B' THEN 1
            ELSE 0
          END AS "facid_1",
          CASE
            WHEN "facid" = 'C' THEN 1
            ELSE 0
          END AS "facid_2",
          CASE
            WHEN "facid" = 'D' THEN 1
            ELSE 0
          END AS "facid_3",
          CASE
            WHEN "facid" = 'E' THEN 1
            ELSE 0
          END AS "facid_4",
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
  ) AS F