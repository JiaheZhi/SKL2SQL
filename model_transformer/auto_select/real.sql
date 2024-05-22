CASE
  WHEN ((usa_accident."Station"):: numeric <= 0.5) THEN CASE
    WHEN ((usa_accident."Traffic_Signal"):: numeric <= 0.5) THEN CASE
      WHEN (
        (
          CASE
            WHEN ((usa_accident."Source"):: text = 'Source1':: text) T HEN 1298600
            WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
            WHEN ((usa_accident."Source"):: text = 'Source3':: text) THEN 28921
            ELSE 0
          END
        ):: numeric <= 1144798.5
      ) THEN CASE
        WHEN (
          (
            CASE
              WHEN ((usa_accident."Source"):: text = 'Source1':: text) THEN 1298600
              WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
              WHEN ((usa_accident."Source"):: text = 'Source3':: text) THEN 28921
              ELSE 0
            END
          ):: numeric <= 509959.0
        ) THEN CASE
          WHEN ((usa_accident."Stop"):: numeric <= 0.5) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN ((usa_accident."Stop"):: numeric <= 0.5) THEN 1.0
          ELSE 1.0
        END
      END
      ELSE CASE
        WHEN (
          COALESCE(
            u sa_accident."Pressure(in)",
            '29.96':: double precision
          ) <= '59.581277142849984':: double precision
        ) THEN CASE
          WHEN (
            (
              COALESCE(
                usa_accident."Timezone",
                'US/Eastern':: character varying
              )
            ):: text <> 'US/Eastern':: t ext
          ) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN (
            (
              COALESCE(
                usa_accident."Timezone",
                'US/Eastern':: character varying
              )
            ):: text <> 'US/Central':: text
          ) THEN 1.0
          ELSE 1.0
        END
      END
    END
    ELSE CASE
      WHEN (
        (
          CASE
            WHEN ((usa_acc ident."Source"):: text = 'Source1':: text) THEN 1298600
            WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
            WHEN ((usa_accident."Source"):: text = 'Source3':: text) THEN 28921
            ELSE 0
          END
        ):: numeric <= 1144798.5
      ) THEN CASE
        WHEN (
          (
            CASE
              WHEN ((usa_accident."Source"):: text = 'Source1':: text) THEN 1298600
              WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
              WHEN ((usa_accident."Source"):: text = 'Source3':: text) THEN 28921
              ELSE 0
            END
          ):: numeric <= 509959.0
        ) THEN CASE
          WHEN (
            (
              COALESCE(
                usa_accident."Timezone",
                'US/Eastern':: character varying
              )
            ):: text <> 'US/Mountain':: text
          ) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN (
            (
              COALESCE(
                usa_accident."Timezone",
                'US/Eastern':: character varying
              )
            ):: text <> 'US/Pacific':: text
          ) THEN 1.0
          ELSE 1.0
        END
      END
      ELSE CASE
        WHEN (
          (
            COALESCE(
              usa_accident."Timezone",
              'US/Eastern':: charact er varying
            )
          ):: text <> 'US/Pacific':: text
        ) THEN CASE
          WHEN (
            COALESCE(
              usa_accident."Pressure(in)",
              '29.96':: double precision
            ) <= '58.291276920126506':: double precision
          ) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN ((us a_accident."Stop"):: numeric <= 0.5) THEN 1.0
          ELSE 1.0
        END
      END
    END
  END
  ELSE CASE
    WHEN (
      (
        CASE
          WHEN ((usa_accident."Source"):: text = 'Source1':: text) THEN 1298600
          WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
          WHEN ((usa_accident."Source"):: text = 'Source3':: text) THEN 28921
          ELSE 0
        END
      ):: numeric <= 1144798.5
    ) THEN CASE
      WHEN (
        (
          COALESCE(
            usa_accident."Timezone",
            'US/Eastern':: character varying
          )
        ):: text <> 'US/Mountain':: text
      ) THEN CASE
        WHEN (
          (
            COALESCE(
              usa_accident."Timezone",
              'US/Eastern':: character varying
            )
          ):: text <> 'US/Central':: text
        ) THEN CASE
          WHEN (
            (
              COALESCE(
                usa_accident."Timezone",
                'US/Eastern':: character varying
              )
            ):: text <> 'US/Pacific':: text
          ) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN (
            COALESCE(
              usa_accident."Pressure(in)",
              '29.96':: double precision
            ) <= '59.061277709937386':: double precision
          ) THEN 1.0 EL SE 1.0
        END
      END
      ELSE CASE
        WHEN ((usa_accident."Traffic_Signal"):: numeric <= 0.5) THEN CASE
          WHEN ((usa_accident."Stop"):: numeric <= 0.5) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN ((usa_accident."Stop"):: numeric <= 0.5) THEN 1.0
          ELSE 1.0
        END
      END
    END
    ELSE CASE
      WHEN (
        (
          COALESCE(
            usa_accident."Timezone",
            'US/Eastern':: character varying
          )
        ):: text <> 'US/Eastern':: text
      ) THEN CASE
        WHEN ((usa_accident."Traffic_Signal"):: numeric < = 0.5) THEN CASE
          WHEN (
            (
              COALESCE(
                usa_accident."Timezone",
                'US/Eastern':: character varying
              )
            ):: text <> 'US/Central':: text
          ) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN (
            (
              COALESCE(
                usa_accident."Timezone",
                'US/Eastern':: character varying
              )
            ):: text <> 'US/Mountain':: text
          ) THEN 1.0
          ELSE 1.0
        END
      END
      ELSE CASE
        WHEN ((usa_accident."Traffic_Signal"):: numeric <= 0.5) THEN CASE
          WHEN (
            COALESCE(
              usa_accident."Pressure(in)",
              '29.96':: do uble precision
            ) <= '58.22127745420015':: double precision
          ) THEN 1.0
          ELSE 1.0
        END
        ELSE CASE
          WHEN (
            COALESCE(
              usa_accident."Pressure(in)",
              '29.96':: double precision
            ) <= '58.21127766650906':: double precision
          ) THEN 1.0
          ELSE 1.0
        END
      END
    END
  END
END CASE
  WHEN (
    CASE
      WHEN ((usa_accident."Source"):: text = 'Source1':: text) THEN 1298600
      WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
      WHEN ((usa_accident."Source"):: text = 'Source
3':: text) THEN 28921
      ELSE 0
    END < 100000
  ) THEN 0
  WHEN (
    CASE
      WHEN ((usa_accident."Source"):: text = 'Source1':: text) THEN 1298600
      WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
      WHEN ((usa_a ccident."Source"):: text = 'Source3':: text) THEN 28921
      ELSE 0
    END < 1298600
  ) THEN 1
  ELSE 3
END CASE
  WHEN (
    CASE
      WHEN ((usa_accident."Source"):: text = 'Source1':: text) THEN 1298600
      WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
      WHEN ((usa_accident."Source"):: text = 'Source
3':: text) THEN 28921
      ELSE 0
    END < 100000
  ) THEN 0
  WHEN (
    CASE
      WHEN ((usa_accident."Source"):: text = 'Source1':: text) THEN 1298600
      WHEN ((usa_accident."Source"):: text = 'Source2':: text) THEN 990997
      WHEN ((usa_a ccident."Source"):: text = 'Source3':: text) THEN 28921
      ELSE 0
    END < 1298600
  ) THEN 1
  ELSE 3
END