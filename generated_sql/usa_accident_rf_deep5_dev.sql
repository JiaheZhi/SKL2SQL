set
  threads = 4;


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
            WHEN "Pressure(in)" <= 59.401277156055485 THEN CASE
              WHEN "State" <= 2.279510736465454 THEN CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" <= 2.1089656352996826 THEN 3.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Wind_Direction" <= 2.2778862714767456 THEN CASE
                  WHEN "County_1" <= 0.5 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "County_2" <= 0.5 THEN CASE
                    WHEN "County_1" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "County_1" <= 0.5 THEN CASE
                WHEN "State" <= 2.1397147178649902 THEN CASE
                  WHEN "Wind_Direction" <= 2.2778862714767456 THEN CASE
                    WHEN "State" <= 2.1397109031677246 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Direction" <= 2.1805124282836914 THEN CASE
                    WHEN "State" <= 2.1650478839874268 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.2117825746536255 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.98127721929206 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "County_1" <= 0.5 THEN CASE
              WHEN "Source" <= 1144798.5 THEN CASE
                WHEN "County_2" <= 0.5 THEN CASE
                  WHEN "Wind_Direction" <= 2.1430686712265015 THEN CASE
                    WHEN "Pressure(in)" <= 54.45127751920676 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.2117825746536255 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "County_0" <= 0.5 THEN CASE
                    WHEN "State" <= 2.1340383291244507 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.43127747121747 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "County_0" <= 0.5 THEN CASE
                  WHEN "State" <= 2.279510736465454 THEN CASE
                    WHEN "State" <= 2.1650497913360596 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.2778862714767456 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "State" <= 2.1089656352996826 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.3492008447647095 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "State" <= 2.244383215904236 THEN CASE
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Source" <= 509959.0 THEN CASE
                    WHEN "Wind_Direction" <= 2.2176852226257324 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Direction" <= 2.3492008447647095 THEN CASE
                    WHEN "Pressure(in)" <= 59.2012775938788 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.14127696355483 THEN CASE
                  WHEN "Pressure(in)" <= 52.056277430444204 THEN CASE
                    WHEN "State" <= 2.441583752632141 THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.3746691942214966 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "State" <= 2.260842800140381 THEN CASE
                    WHEN "Timezone" <> 'US/Central' THEN 2.0
                    ELSE 0.0
                  END
                  ELSE CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_1,
          CASE
            WHEN "Source" <= 1144798.5 THEN CASE
              WHEN "County_2" <= 0.5 THEN CASE
                WHEN "County_0" <= 0.5 THEN CASE
                  WHEN "County_1" <= 0.5 THEN CASE
                    WHEN "Pressure(in)" <= 54.211277854177 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" <= 2.1397147178649902 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Source" <= 509959.0 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.207058906555176 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.281277799584956 THEN CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "State" <= 2.1340383291244507 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "State" <= 2.1340383291244507 THEN CASE
                    WHEN "State" <= 2.0781997442245483 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone" <> 'US/Central' THEN CASE
                WHEN "Wind_Direction" <= 2.2778862714767456 THEN CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" <= 2.226091504096985 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_1" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.351277265511314 THEN CASE
                  WHEN "Pressure(in)" <= 58.51127796186279 THEN CASE
                    WHEN "Wind_Direction" <= 2.1360117197036743 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "State" <= 2.3429551124572754 THEN CASE
                    WHEN "Wind_Direction" <= 2.2778862714767456 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_0" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "State" <= 2.279510736465454 THEN CASE
              WHEN "State" <= 2.1650478839874268 THEN CASE
                WHEN "State" <= 2.165045976638794 THEN CASE
                  WHEN "State" <= 2.162586212158203 THEN CASE
                    WHEN "State" <= 2.1397109031677246 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE 3.0
                END
                ELSE 2.0
              END
              ELSE CASE
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "County_0" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" <= 2.226091504096985 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Source" <= 1144798.5 THEN CASE
                WHEN "County_1" <= 0.5 THEN CASE
                  WHEN "County_2" <= 0.5 THEN CASE
                    WHEN "Source" <= 509959.0 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "State" <= 2.299591064453125 THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.2778862714767456 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "State" <= 2.3336371183395386 THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "County_2" <= 0.5 THEN 3.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" <= 2.3746691942214966 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "County_0" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "County_2" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_3
        FROM
          (
            SELECT
              CASE
                WHEN "Source" = 'Source1' THEN 1298600
                WHEN "Source" = 'Source2' THEN 990997
                WHEN "Source" = 'Source3' THEN 28921
              END AS "Source",
              "Timezone",
              "Pressure(in)",
              "Wind_Direction",
              "State",
              "County_0",
              "County_1",
              "County_2",
              "County_3",
              "County_4",
              "County_5",
              "County_6",
              "County_7",
              "County_8",
              "County_9",
              "County_10",
              "Station",
              "Stop",
              "Traffic_Signal"
            FROM
              (
                SELECT
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  COALESCE("Pressure(in)", 29.96) AS "Pressure(in)",
                  "Wind_Direction",
                  "Source",
                  "State",
                  "County_0",
                  "County_1",
                  "County_2",
                  "County_3",
                  "County_4",
                  "County_5",
                  "County_6",
                  "County_7",
                  "County_8",
                  "County_9",
                  "County_10",
                  "Station",
                  "Stop",
                  "Traffic_Signal"
                FROM
                  (
                    SELECT
                      Wind_Direction_target."enc_value" AS "Wind_Direction",
                      State_leave_one_out."enc_value" AS "State",
                      "Source",
                      "Timezone",
                      "Pressure(in)",
                      "County_0",
                      "County_1",
                      "County_2",
                      "County_3",
                      "County_4",
                      "County_5",
                      "County_6",
                      "County_7",
                      "County_8",
                      "County_9",
                      "County_10",
                      "Station",
                      "Stop",
                      "Traffic_Signal"
                    FROM
                      usa_accident
                      left join Wind_Direction_target on usa_accident.Wind_Direction = Wind_Direction_target.Wind_Direction
                      left join State_leave_one_out on usa_accident.State = State_leave_one_out.State
                      left join County_binary on usa_accident.County = County_binary.County
                  ) AS data
              ) AS data
          ) AS data
      ) AS F
  ) AS F;


-- DROP TABLE
--   Wind_Direction_target;


-- DROP TABLE
--   State_leave_one_out;


-- DROP TABLE
--   County_binary;