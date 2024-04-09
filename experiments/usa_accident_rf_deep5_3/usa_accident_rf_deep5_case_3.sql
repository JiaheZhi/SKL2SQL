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
              WHEN "State" in (
                'CA',
                'FL',
                'TX',
                'SC',
                'NY',
                'NC',
                'VA',
                'PA',
                'MN',
                'OR',
                'AZ',
                'TN',
                'LA',
                'NJ',
                'AL',
                'UT',
                'OK',
                'NE',
                'MT',
                'AR',
                'NV',
                'DC',
                'WV',
                'DE',
                'ID',
                'NH',
                'ND',
                'ME'
              ) THEN CASE
                WHEN "Timezone" <> 'US/Pacific' THEN CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Source" <= 1144798.5 THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" in ('OK', 'MT', 'ND') THEN 3.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Wind_Direction" in (
                  'CALM',
                  'S',
                  'W',
                  'SSW',
                  'WNW',
                  'NW',
                  'SW',
                  'WSW',
                  'SSE',
                  'NNW',
                  'N',
                  'SE',
                  'E',
                  'ESE',
                  'ENE',
                  'NE',
                  'NNE',
                  'VAR',
                  'nan'
                ) THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Stop" <= 0.5 THEN CASE
                WHEN "State" in (
                  'FL',
                  'SC',
                  'NC',
                  'OR',
                  'AZ',
                  'LA',
                  'OK',
                  'MT',
                  'ID',
                  'ND'
                ) THEN CASE
                  WHEN "Wind_Direction" in (
                    'CALM',
                    'S',
                    'W',
                    'SSW',
                    'WNW',
                    'NW',
                    'SW',
                    'WSW',
                    'SSE',
                    'NNW',
                    'N',
                    'SE',
                    'E',
                    'ESE',
                    'ENE',
                    'NE',
                    'NNE',
                    'VAR',
                    'nan'
                  ) THEN CASE
                    WHEN "State" in ('SC', 'NC', 'OR', 'AZ', 'LA', 'OK', 'MT', 'ID', 'ND') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Direction" in ('CALM', 'S', 'W', 'N', 'E', 'VAR') THEN CASE
                    WHEN "State" in (
                      'FL',
                      'SC',
                      'NC',
                      'MN',
                      'OR',
                      'AZ',
                      'LA',
                      'OK',
                      'MT',
                      'DC',
                      'WV',
                      'ID',
                      'ND'
                    ) THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
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
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'NNW',
                      'N',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'nan'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Pressure(in)" <= 59.98127721929206 THEN CASE
                    WHEN "Source" <= 1144798.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
          END AS tree_0,
          CASE
            WHEN "Stop" <= 0.5 THEN CASE
              WHEN "Source" <= 1144798.5 THEN CASE
                WHEN "Traffic_Signal" <= 0.5 THEN CASE
                  WHEN "Wind_Direction" in ('CALM', 'E', 'VAR') THEN CASE
                    WHEN "Pressure(in)" <= 54.45127751920676 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'NNW',
                      'N',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'nan'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "State" in ('SC', 'NC', 'OR', 'AZ', 'LA', 'OK', 'MT', 'ID', 'ND') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Pressure(in)" <= 59.43127747121747 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "State" in (
                    'CA',
                    'FL',
                    'TX',
                    'SC',
                    'NY',
                    'NC',
                    'VA',
                    'PA',
                    'MN',
                    'OR',
                    'AZ',
                    'TN',
                    'LA',
                    'NJ',
                    'AL',
                    'UT',
                    'OK',
                    'NE',
                    'MT',
                    'AR',
                    'NV',
                    'DC',
                    'WV',
                    'DE',
                    'ID',
                    'NH',
                    'ND',
                    'ME'
                  ) THEN CASE
                    WHEN "State" in (
                      'CA',
                      'FL',
                      'SC',
                      'NC',
                      'MN',
                      'OR',
                      'AZ',
                      'LA',
                      'OK',
                      'MT',
                      'DC',
                      'WV',
                      'ID',
                      'ND'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'SSW',
                      'WNW',
                      'NW',
                      'SW',
                      'WSW',
                      'SSE',
                      'NNW',
                      'N',
                      'SE',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'nan'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "State" in ('OK', 'MT', 'ND') THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'SSW',
                      'WNW',
                      'NW',
                      'SW',
                      'WSW',
                      'SSE',
                      'NNW',
                      'N',
                      'SE',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'nan',
                      'Variable'
                    ) THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "State" in (
                'CA',
                'FL',
                'TX',
                'SC',
                'NC',
                'PA',
                'MN',
                'OR',
                'AZ',
                'TN',
                'LA',
                'NJ',
                'AL',
                'UT',
                'OK',
                'NE',
                'MT',
                'NV',
                'DC',
                'WV',
                'ID',
                'NH',
                'ND',
                'ME'
              ) THEN CASE
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Source" <= 509959.0 THEN CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'NW',
                      'SW',
                      'NNW',
                      'N',
                      'SE',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'nan'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Timezone" <> 'US/Eastern' THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Wind_Direction" in (
                    'CALM',
                    'S',
                    'W',
                    'SSW',
                    'WNW',
                    'NW',
                    'SW',
                    'WSW',
                    'SSE',
                    'NNW',
                    'N',
                    'SE',
                    'E',
                    'ESE',
                    'ENE',
                    'NE',
                    'NNE',
                    'VAR',
                    'nan',
                    'Variable'
                  ) THEN CASE
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
                    WHEN "State" in (
                      'CA',
                      'FL',
                      'TX',
                      'SC',
                      'NY',
                      'NC',
                      'VA',
                      'PA',
                      'MN',
                      'OR',
                      'AZ',
                      'IL',
                      'TN',
                      'MI',
                      'LA',
                      'NJ',
                      'MD',
                      'OH',
                      'WA',
                      'AL',
                      'UT',
                      'OK',
                      'MO',
                      'CT',
                      'IN',
                      'MA',
                      'NE',
                      'MT',
                      'IA',
                      'AR',
                      'NV',
                      'KS',
                      'DC',
                      'MS',
                      'WV',
                      'DE',
                      'ID',
                      'NM',
                      'NH',
                      'WY',
                      'ND',
                      'ME',
                      'SD'
                    ) THEN 3.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'SSW',
                      'WNW',
                      'NW',
                      'SW',
                      'WSW',
                      'SSE',
                      'NNW',
                      'N',
                      'SE',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'South',
                      'nan',
                      'Variable'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "State" in (
                    'CA',
                    'FL',
                    'TX',
                    'SC',
                    'NC',
                    'PA',
                    'MN',
                    'OR',
                    'AZ',
                    'TN',
                    'LA',
                    'NJ',
                    'AL',
                    'UT',
                    'OK',
                    'NE',
                    'MT',
                    'NV',
                    'DC',
                    'WV',
                    'DE',
                    'ID',
                    'NH',
                    'ND',
                    'ME'
                  ) THEN CASE
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
              WHEN "Traffic_Signal" <= 0.5 THEN CASE
                WHEN "Station" <= 0.5 THEN CASE
                  WHEN "Stop" <= 0.5 THEN CASE
                    WHEN "Pressure(in)" <= 54.211277854177 THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" in (
                      'FL',
                      'SC',
                      'NC',
                      'OR',
                      'AZ',
                      'LA',
                      'OK',
                      'MT',
                      'ID',
                      'ND'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Source" <= 509959.0 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" in ('CALM', 'S', 'W', 'N', 'E', 'ESE', 'ENE', 'VAR', 'nan') THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.281277799584956 THEN CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "State" in ('SC', 'NC', 'OR', 'AZ', 'LA', 'OK', 'MT', 'ID', 'ND') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "State" in ('SC', 'NC', 'OR', 'AZ', 'LA', 'OK', 'MT', 'ID', 'ND') THEN CASE
                    WHEN "State" in ('MT', 'ND') THEN 2.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Timezone" <> 'US/Central' THEN CASE
                WHEN "Wind_Direction" in (
                  'CALM',
                  'S',
                  'W',
                  'SSW',
                  'WNW',
                  'NW',
                  'SW',
                  'WSW',
                  'SSE',
                  'NNW',
                  'N',
                  'SE',
                  'E',
                  'ESE',
                  'ENE',
                  'NE',
                  'NNE',
                  'VAR',
                  'nan'
                ) THEN CASE
                  WHEN "Timezone" <> 'US/Mountain' THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" in (
                      'CA',
                      'FL',
                      'TX',
                      'SC',
                      'NC',
                      'PA',
                      'MN',
                      'OR',
                      'AZ',
                      'TN',
                      'LA',
                      'UT',
                      'OK',
                      'NE',
                      'MT',
                      'NV',
                      'DC',
                      'WV',
                      'ID',
                      'ND',
                      'ME'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Timezone" <> 'US/Mountain' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Stop" <= 0.5 THEN 1.0
                    ELSE 3.0
                  END
                END
              END
              ELSE CASE
                WHEN "Pressure(in)" <= 59.351277265511314 THEN CASE
                  WHEN "Pressure(in)" <= 58.51127796186279 THEN CASE
                    WHEN "Wind_Direction" in ('CALM', 'VAR') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "State" in (
                    'CA',
                    'FL',
                    'TX',
                    'SC',
                    'NY',
                    'NC',
                    'VA',
                    'PA',
                    'MN',
                    'OR',
                    'AZ',
                    'TN',
                    'MI',
                    'LA',
                    'NJ',
                    'MD',
                    'WA',
                    'AL',
                    'UT',
                    'OK',
                    'MA',
                    'NE',
                    'MT',
                    'AR',
                    'NV',
                    'KS',
                    'DC',
                    'MS',
                    'WV',
                    'DE',
                    'ID',
                    'NH',
                    'ND',
                    'ME'
                  ) THEN CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'SSW',
                      'WNW',
                      'NW',
                      'SW',
                      'WSW',
                      'SSE',
                      'NNW',
                      'N',
                      'SE',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'nan'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 2.0
                  END
                END
              END
            END
          END AS tree_2,
          CASE
            WHEN "State" in (
              'CA',
              'FL',
              'TX',
              'SC',
              'NY',
              'NC',
              'VA',
              'PA',
              'MN',
              'OR',
              'AZ',
              'TN',
              'LA',
              'NJ',
              'AL',
              'UT',
              'OK',
              'NE',
              'MT',
              'AR',
              'NV',
              'DC',
              'WV',
              'DE',
              'ID',
              'NH',
              'ND',
              'ME'
            ) THEN CASE
              WHEN "State" in (
                'FL',
                'SC',
                'NC',
                'MN',
                'OR',
                'AZ',
                'LA',
                'OK',
                'MT',
                'DC',
                'WV',
                'ID',
                'ND'
              ) THEN CASE
                WHEN "State" in (
                  'FL',
                  'SC',
                  'NC',
                  'MN',
                  'OR',
                  'AZ',
                  'LA',
                  'OK',
                  'MT',
                  'DC',
                  'WV',
                  'ID',
                  'ND'
                ) THEN CASE
                  WHEN "State" in (
                    'FL',
                    'SC',
                    'NC',
                    'MN',
                    'OR',
                    'AZ',
                    'LA',
                    'OK',
                    'MT',
                    'DC',
                    'WV',
                    'ID',
                    'ND'
                  ) THEN CASE
                    WHEN "State" in ('SC', 'NC', 'OR', 'AZ', 'LA', 'OK', 'MT', 'ID', 'ND') THEN 1.0
                    ELSE 1.0
                  END
                  ELSE 3.0
                END
                ELSE 2.0
              END
              ELSE CASE
                WHEN "Source" <= 1144798.5 THEN CASE
                  WHEN "Timezone" <> 'US/Pacific' THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Station" <= 0.5 THEN CASE
                    WHEN "Timezone" <> 'US/Pacific' THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "State" in (
                      'CA',
                      'FL',
                      'TX',
                      'SC',
                      'NC',
                      'PA',
                      'MN',
                      'OR',
                      'AZ',
                      'TN',
                      'LA',
                      'UT',
                      'OK',
                      'NE',
                      'MT',
                      'NV',
                      'DC',
                      'WV',
                      'ID',
                      'ND',
                      'ME'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
              END
            END
            ELSE CASE
              WHEN "Source" <= 1144798.5 THEN CASE
                WHEN "Stop" <= 0.5 THEN CASE
                  WHEN "Traffic_Signal" <= 0.5 THEN CASE
                    WHEN "Source" <= 509959.0 THEN 2.0
                    ELSE 2.0
                  END
                  ELSE CASE
                    WHEN "State" in (
                      'CA',
                      'FL',
                      'TX',
                      'SC',
                      'NY',
                      'NC',
                      'VA',
                      'PA',
                      'MN',
                      'OR',
                      'AZ',
                      'TN',
                      'LA',
                      'NJ',
                      'AL',
                      'UT',
                      'OK',
                      'NE',
                      'MT',
                      'AR',
                      'NV',
                      'DC',
                      'WV',
                      'DE',
                      'ID',
                      'NH',
                      'ND',
                      'ME'
                    ) THEN 2.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'SSW',
                      'WNW',
                      'NW',
                      'SW',
                      'WSW',
                      'SSE',
                      'NNW',
                      'N',
                      'SE',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'nan'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
              END
              ELSE CASE
                WHEN "State" in (
                  'CA',
                  'FL',
                  'TX',
                  'SC',
                  'NY',
                  'NC',
                  'VA',
                  'PA',
                  'MN',
                  'OR',
                  'AZ',
                  'TN',
                  'LA',
                  'NJ',
                  'AL',
                  'UT',
                  'OK',
                  'MA',
                  'NE',
                  'MT',
                  'AR',
                  'NV',
                  'KS',
                  'DC',
                  'WV',
                  'DE',
                  'ID',
                  'NH',
                  'ND',
                  'ME'
                ) THEN CASE
                  WHEN "Timezone" <> 'US/Central' THEN CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 3.0
                    ELSE 3.0
                  END
                  ELSE CASE
                    WHEN "Wind_Direction" in (
                      'CALM',
                      'S',
                      'W',
                      'SSW',
                      'WNW',
                      'NW',
                      'SW',
                      'WSW',
                      'SSE',
                      'NNW',
                      'N',
                      'SE',
                      'E',
                      'ESE',
                      'ENE',
                      'NE',
                      'NNE',
                      'VAR',
                      'South',
                      'nan',
                      'Variable'
                    ) THEN 1.0
                    ELSE 1.0
                  END
                END
                ELSE CASE
                  WHEN "Timezone" <> 'US/Eastern' THEN CASE
                    WHEN "Station" <= 0.5 THEN 1.0
                    ELSE 1.0
                  END
                  ELSE CASE
                    WHEN "Traffic_Signal" <= 0.5 THEN 1.0
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
              "Station",
              "Stop",
              "Traffic_Signal"
            FROM
              (
                SELECT
                  COALESCE("Timezone", 'US/Eastern') AS "Timezone",
                  COALESCE("Pressure(in)", 29.96) AS "Pressure(in)",
                  COALESCE("Wind_Direction", 'CALM') AS "Wind_Direction",
                  "Source",
                  "State",
                  "Station",
                  "Stop",
                  "Traffic_Signal"
                FROM
                  usa_accident
              ) AS data
          ) AS data
      ) AS F
  ) AS F