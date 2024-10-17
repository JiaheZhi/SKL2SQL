EXPLAIN ANALYZE
SELECT
  (
    tree_0 + tree_1 + tree_2
  ) AS Score
FROM
  (
    SELECT
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 0.7307692468166351 THEN CASE
            WHEN "Year" <= 0.550000011920929 THEN CASE
              WHEN "Year" <= 0.2500000074505806 THEN CASE
                WHEN "Power" <= 105.0 THEN CASE
                  WHEN "Year" <= 0.05000000074505806 THEN 0.460000000000
                  ELSE 0.751033333333
                END
                ELSE CASE
                  WHEN "Location_1" <= 0.5 THEN 1.041830000000
                  ELSE 1.675000000000
                END
              END
              ELSE CASE
                WHEN "Name_12" <= 0.5 THEN CASE
                  WHEN "Power" <= 105.0 THEN 1.145943333333
                  ELSE 1.732180000000
                END
                ELSE CASE
                  WHEN "Location_4" <= 0.5 THEN 6.000000000000
                  ELSE 4.688890000000
                END
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Power" <= 63.12 THEN 1.037770000000
                  ELSE 1.424066666667
                END
                ELSE CASE
                  WHEN "Year" <= 0.75 THEN 1.729460000000
                  ELSE 2.256566666667
                END
              END
              ELSE CASE
                WHEN "Name_140" <= 0.5 THEN CASE
                  WHEN "Name_61" <= 0.5 THEN 2.742596666667
                  ELSE 4.007026666667
                END
                ELSE CASE
                  WHEN "Location_7" <= 0.5 THEN 7.666666666667
                  ELSE 10.516666666667
                END
              END
            END
          END
          ELSE CASE
            WHEN "Year" <= 0.8499999940395355 THEN CASE
              WHEN "Transmission_1" <= 0.5 THEN CASE
                WHEN "Year" <= 0.3500000089406967 THEN CASE
                  WHEN "Name_1" <= 0.5 THEN 2.287536666667
                  ELSE 4.222223333333
                END
                ELSE CASE
                  WHEN "Name_127" <= 0.5 THEN 4.877990000000
                  ELSE 6.596250000000
                END
              END
              ELSE CASE
                WHEN "Year" <= 0.45000000298023224 THEN CASE
                  WHEN "Year" <= 0.2500000074505806 THEN 1.550726666667
                  ELSE 2.350470000000
                END
                ELSE CASE
                  WHEN "Name_187" <= 0.5 THEN 2.913960000000
                  ELSE 3.952440000000
                END
              END
            END
            ELSE CASE
              WHEN "Name_83" <= 0.5 THEN CASE
                WHEN "Mileage" <= 17.05 THEN CASE
                  WHEN "Brand" <= 266.0 THEN 4.927193333333
                  ELSE 5.873940000000
                END
                ELSE CASE
                  WHEN "Name_23" <= 0.5 THEN 9.294546666667
                  ELSE 3.290000000000
                END
              END
              ELSE CASE
                WHEN "Location_4" <= 0.5 THEN 18.713333333333
                ELSE 11.666666666667
              END
            END
          END
        END
        ELSE CASE
          WHEN "Power" <= 193.64000000000033 THEN CASE
            WHEN "Year" <= 0.550000011920929 THEN CASE
              WHEN "Year" <= 0.3500000089406967 THEN CASE
                WHEN "Brand" <= 409.0 THEN CASE
                  WHEN "Power" <= 174.33 THEN 2.754430000000
                  ELSE 4.130333333333
                END
                ELSE CASE
                  WHEN "Owner_Type" <= 0.5 THEN 2.097500000000
                  ELSE 1.244903333333
                END
              END
              ELSE CASE
                WHEN "Name_79" <= 0.5 THEN CASE
                  WHEN "Name_48" <= 0.5 THEN 5.477770000000
                  ELSE 2.120000000000
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 0.2500000037252903 THEN 10.666666666667
                  ELSE 8.000000000000
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 0.75 THEN CASE
                WHEN "Fuel_Type_1" <= 0.5 THEN CASE
                  WHEN "Brand" <= 244.0 THEN 3.661110000000
                  ELSE 5.963636666667
                END
                ELSE CASE
                  WHEN "Seats" <= 7.0 THEN 8.140910000000
                  ELSE 5.997926666667
                END
              END
              ELSE CASE
                WHEN "Transmission_1" <= 0.5 THEN CASE
                  WHEN "Seats" <= 7.0 THEN 10.995140000000
                  ELSE 7.741316666667
                END
                ELSE CASE
                  WHEN "Power" <= 174.33 THEN 5.862306666667
                  ELSE 11.074443333333
                END
              END
            END
          END
          ELSE CASE
            WHEN "Kilometers_Driven" <= 0.2500000074505806 THEN CASE
              WHEN "Name_83" <= 0.5 THEN CASE
                WHEN "Brand" <= 7.0 THEN 40.000000000000
                ELSE CASE
                  WHEN "Year" <= 0.6500000059604645 THEN 11.833333333333
                  ELSE 17.184693333333
                END
              END
              ELSE CASE
                WHEN "Mileage" <= 13.1 THEN 32.356666666667
                ELSE 53.333333333333
              END
            END
            ELSE CASE
              WHEN "Year" <= 0.45000000298023224 THEN CASE
                WHEN "Kilometers_Driven" <= 0.6071428656578064 THEN CASE
                  WHEN "Brand" <= 119.0 THEN 15.240556666667
                  ELSE 7.6666666666675143
                END
                ELSE CASE
                  WHEN "Location_5" <= 0.5 THEN 1.50000000000088776666667
                  ELSE 8.724706666667
                END
              END
              ELSE CASE
                WHEN "Engine" <= 0.9615384638309479 THEN CASE
                  WHEN "Brand" <= 551.0 THEN 9.975290000000
                  ELSE 5.242856666667
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 0.8214285671710968 THEN 14.136326666667
                  ELSE 9.510333333333
                END
              END
            END
          END
        END
      END AS tree_0,
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 0.7307692468166351 THEN CASE
            WHEN "Year" <= 0.550000011920929 THEN CASE
              WHEN "Name_83" <= 0.5 THEN CASE
                WHEN "Year" <= 0.2500000074505806 THEN CASE
                  WHEN "Power" <= 105.0 THEN 0.678910000000
                  ELSE 1.094966666667
                END
                ELSE CASE
                  WHEN "Name_12" <= 0.5 THEN 1.278586666667
                  ELSE 4.779166666667
                END
              END
              ELSE CASE
                WHEN "Location_9" <= 0.5 THEN 13.626666666667
                ELSE 8.833333333333
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Name_105" <= 0.5 THEN 1.286640000000
                  ELSE 2.236666666667
                END
                ELSE CASE
                  WHEN "Year" <= 0.8499999940395355 THEN 1.816070000000
                  ELSE 2.430276666667
                END
              END
              ELSE CASE
                WHEN "Name_140" <= 0.5 THEN CASE
                  WHEN "Year" <= 0.75 THEN 2.460813333333
                  ELSE 3.643916666667
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 0.1071428582072258 THEN 10.061110000000
                  ELSE 7.883333333333
                END
              END
            END
          END
          ELSE CASE
            WHEN "Transmission_0" <= 0.5 THEN CASE
              WHEN "Year" <= 0.45000000298023224 THEN CASE
                WHEN "Year" <= 0.2500000074505806 THEN CASE
                  WHEN "Name_187" <= 0.5 THEN 1.228616666667
                  ELSE 1.875606666667
                END
                ELSE CASE
                  WHEN "Brand" <= 277.5 THEN 1.943890000000
                  ELSE 2.803520000000
                END
              END
              ELSE CASE
                WHEN "Brand" <= 266.0 THEN CASE
                  WHEN "Name_97" <= 0.5 THEN 2.672073333333
                  ELSE 3.501603333333
                END
                ELSE CASE
                  WHEN "Mileage" <= 13.1 THEN 3.911873333333
                  ELSE 6.202550000000
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 0.8499999940395355 THEN CASE
                WHEN "Year" <= 0.45000000298023224 THEN CASE
                  WHEN "Name_83" <= 0.5 THEN 2.994683333333
                  ELSE 6.194443333333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 0.3928571492433548 THEN 6.676233333333
                  ELSE 5.069513333333
                END
              END
              ELSE CASE
                WHEN "Mileage" <= 13.1 THEN CASE
                  WHEN "Year" <= 0.949999988079071 THEN 11.666666666667
                  ELSE 18.603333333333
                END
                ELSE CASE
                  WHEN "Mileage" <= 16.5 THEN 12.2366666666675
                  ELSE 8.969230000000
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Year" <= 0.6500000059604645 THEN CASE
            WHEN "Seats" <= 5.0 THEN CASE
              WHEN "Engine" <= 0.8846153914928436 THEN CASE
                WHEN "Brand" <= 214.0 THEN CASE
                  WHEN "Year" <= 0.45000000298023224 THEN 7.333333333333
                  ELSE 8.594443333333
                END
                ELSE 1.916666666667
              END
              ELSE CASE
                WHEN "Brand" <= 114.0 THEN CASE
                  WHEN "Year" <= 0.10000000149011612 THEN 19.666666666667
                  ELSE 16.398483333333
                END
                ELSE CASE
                  WHEN "Name_11" <= 0.5 THEN 14.269523333333
                  ELSE 9.666666666667
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 0.3500000089406967 THEN CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Brand" <= 409.0 THEN 3.326423333333
                  ELSE 1.559090000000
                END
                ELSE CASE
                  WHEN "Year" <= 0.15000000223517418 THEN 3.738443333333
                  ELSE 6.937833333333
                END
              END
              ELSE CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Name_131" <= 0.5 THEN 5.867683333333
                  ELSE 12.916666666667
                END
                ELSE CASE
                  WHEN "Brand" <= 551.0 THEN 9.892836666667
                  ELSE 4.343056666667
                END
              END
            END
          END
          ELSE CASE
            WHEN "Power" <= 193.64000000000033 THEN CASE
              WHEN "Kilometers_Driven" <= 0.5357142984867096 THEN CASE
                WHEN "Seats" <= 7.0 THEN CASE
                  WHEN "Engine" <= 0.8076923191547394 THEN 9.592733333333
                  ELSE 13.191913333333
                END
                ELSE CASE
                  WHEN "Power" <= 174.33 THEN 7.013646666667
                  ELSE 9.396110000000
                END
              END
              ELSE CASE
                WHEN "Location_3" <= 0.5 THEN CASE
                  WHEN "Seats" <= 5.0 THEN 1.500000000000
                  ELSE 6.429750000000
                END
                ELSE CASE
                  WHEN "Year" <= 0.75 THEN 4.653333333333
                  ELSE 10.119046666667
                END
              END
            END
            ELSE CASE
              WHEN "Engine" <= 0.9615384638309479 THEN CASE
                WHEN "Mileage" <= 11.5000000000003 THEN CASE
                  WHEN "Brand" <= 551.0 THEN 10.405896666667
                  ELSE 6.391110000000
                END
                ELSE CASE
                  WHEN "Name_129" <= 0.5 THEN 13.692380000000
                  ELSE 18.858890000000
                END
              END
              ELSE CASE
                WHEN "Name_41" <= 0.5 THEN CASE
                  WHEN "Name_83" <= 0.5 THEN 20.143380000000
                  ELSE 36.414443333333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 0.2142857201397419 THEN 11.404763333333
                  ELSE 9.821666666667
                END
              END
            END
          END
        END
      END AS tree_1,
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 0.7307692468166351 THEN CASE
            WHEN "Year" <= 0.550000011920929 THEN CASE
              WHEN "Name_83" <= 0.5 THEN CASE
                WHEN "Year" <= 0.3500000089406967 THEN CASE
                  WHEN "Year" <= 0.05000000074505806 THEN 0.508820000000
                  ELSE 0.931176666667
                END
                ELSE CASE
                  WHEN "Power" <= 98.6 THEN 1.182800000000
                  ELSE 1.829380000000
                END
              END
              ELSE CASE
                WHEN "Owner_Type" <= 0.5 THEN 13.626666666667
                ELSE CASE
                  WHEN "Year" <= 0.05000000074505806 THEN 5.370000000000
                  ELSE 8.833333333333
                END
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Name_105" <= 0.5 THEN 1.273443333333
                  ELSE 2.900833333333
                END
                ELSE CASE
                  WHEN "Year" <= 0.75 THEN 1.696180000000
                  ELSE 2.284520000000
                END
              END
              ELSE CASE
                WHEN "Name_140" <= 0.5 THEN CASE
                  WHEN "Year" <= 0.75 THEN 2.402760000000
                  ELSE 3.521763333333
                END
                ELSE CASE
                  WHEN "Year" <= 0.7000000178813934 THEN 7.666666666667
                  ELSE 10.550000000000
                END
              END
            END
          END
          ELSE CASE
            WHEN "Year" <= 0.75 THEN CASE
              WHEN "Transmission_1" <= 0.5 THEN CASE
                WHEN "Year" <= 0.45000000298023224 THEN CASE
                  WHEN "Name_83" <= 0.5 THEN 3.214373333333
                  ELSE 5.944443333333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 0.5357142984867096 THEN 5.881563333333
                  ELSE 4.078420000000
                END
              END
              ELSE CASE
                WHEN "Year" <= 0.2500000074505806 THEN CASE
                  WHEN "Name_187" <= 0.5 THEN 1.180923333333
                  ELSE 1.948246666667
                END
                ELSE CASE
                  WHEN "Brand" <= 277.5 THEN 2.498063333333
                  ELSE 3.433940000000
                END
              END
            END
            ELSE CASE
              WHEN "Engine" <= 0.8846153914928436 THEN CASE
                WHEN "Brand" <= 24.000000000000 THEN CASE
                  WHEN "Location_3" <= 0.5 THEN 13.833333333333
                  ELSE 18.713333333333
                END
                ELSE CASE
                  WHEN "Transmission_1" <= 0.5 THEN 8.0000000000000853
                  ELSE 3.526666666667
                END
              END
              ELSE CASE
                WHEN "Brand" <= 98.0 THEN 11.666666666667
                ELSE CASE
                  WHEN "Name_187" <= 0.5 THEN 3.984610000000
                  ELSE 5.533453333333
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Year" <= 0.6500000059604645 THEN CASE
            WHEN "Seats" <= 5.0 THEN CASE
              WHEN "Engine" <= 0.8846153914928436 THEN CASE
                WHEN "Fuel_Type_1" <= 0.5 THEN CASE
                  WHEN "Year" <= 0.45000000298023224 THEN 11.666666666667
                  ELSE 9.222223333333
                END
                ELSE 2.916666666667
              END
              ELSE CASE
                WHEN "Brand" <= 114.0 THEN CASE
                  WHEN "Kilometers_Driven" <= 0.321428582072258 THEN 24.000000000000
                  ELSE 16.388333333333
                END
                ELSE CASE
                  WHEN "Name_13" <= 0.5 THEN 13.452776666667
                  ELSE 15.500000000000
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 0.3500000089406967 THEN CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Brand" <= 409.0 THEN 3.534836666667
                  ELSE 1.626363333333
                END
                ELSE CASE
                  WHEN "Name_83" <= 0.5 THEN 5.336436666667
                  ELSE 17.833333333333
                END
              END
              ELSE CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Name_83" <= 0.5 THEN 5.747713333333
                  ELSE 10.055833333333
                END
                ELSE CASE
                  WHEN "Engine" <= 0.9615384638309479 THEN 6.450666666667
                  ELSE 10.756666666667
                END
              END
            END
          END
          ELSE CASE
            WHEN "Power" <= 193.64000000000033 THEN CASE
              WHEN "Year" <= 0.949999988079071 THEN CASE
                WHEN "Kilometers_Driven" <= 0.1785714328289032 THEN CASE
                  WHEN "Name_131" <= 0.5 THEN 10.300120000000
                  ELSE 16.096666666667
                END
                ELSE CASE
                  WHEN "Mileage" <= 15.6 THEN 6.795963333333
                  ELSE 8.8333333333332259
                END
              END
              ELSE CASE
                WHEN "Power" <= 174.33 THEN CASE
                  WHEN "Mileage" <= 17.9 THEN 7.621026666667
                  ELSE 14.417776666667
                END
                ELSE CASE
                  WHEN "Location_9" <= 0.5 THEN 13.740863333333
                  ELSE 20.416666666667
                END
              END
            END
            ELSE CASE
              WHEN "Kilometers_Driven" <= 0.1785714328289032 THEN CASE
                WHEN "Engine" <= 0.9230769276618958 THEN CASE
                  WHEN "Name_129" <= 0.5 THEN 13.562500000000
                  ELSE 52.1200000000005
                END
                ELSE CASE
                  WHEN "Name_41" <= 0.5 THEN 22.223430000000
                  ELSE 11.388890000000
                END
              END
              ELSE CASE
                WHEN "Name_129" <= 0.5 THEN CASE
                  WHEN "Brand" <= 27.333333333333 THEN 15.908810000000
                  ELSE 10.834226666667
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 0.3571428582072258 THEN 21.030000000000
                  ELSE 16.333333333333
                END
              END
            END
          END
        END
      END AS tree_2
    FROM
      (
        SELECT
          CASE
            WHEN "Owner_Type" = 'First' THEN 0.0
            WHEN "Owner_Type" = 'Second' THEN 1.0
            WHEN "Owner_Type" = 'Third' THEN 2.0
            WHEN "Owner_Type" = 'Fourth & Above' THEN 3.0
          END AS "Owner_Type",
          CASE
            WHEN "Location" = 'Ahmedabad' THEN 1
            ELSE 0
          END AS "Location_0",
          CASE
            WHEN "Location" = 'Bangalore' THEN 1
            ELSE 0
          END AS "Location_1",
          CASE
            WHEN "Location" = 'Chennai' THEN 1
            ELSE 0
          END AS "Location_2",
          CASE
            WHEN "Location" = 'Coimbatore' THEN 1
            ELSE 0
          END AS "Location_3",
          CASE
            WHEN "Location" = 'Delhi' THEN 1
            ELSE 0
          END AS "Location_4",
          CASE
            WHEN "Location" = 'Hyderabad' THEN 1
            ELSE 0
          END AS "Location_5",
          CASE
            WHEN "Location" = 'Jaipur' THEN 1
            ELSE 0
          END AS "Location_6",
          CASE
            WHEN "Location" = 'Kochi' THEN 1
            ELSE 0
          END AS "Location_7",
          CASE
            WHEN "Location" = 'Kolkata' THEN 1
            ELSE 0
          END AS "Location_8",
          CASE
            WHEN "Location" = 'Mumbai' THEN 1
            ELSE 0
          END AS "Location_9",
          CASE
            WHEN "Location" = 'Pune' THEN 1
            ELSE 0
          END AS "Location_10",
          CASE
            WHEN "Fuel_Type" = 'CNG' THEN 1
            ELSE 0
          END AS "Fuel_Type_0",
          CASE
            WHEN "Fuel_Type" = 'Diesel' THEN 1
            ELSE 0
          END AS "Fuel_Type_1",
          CASE
            WHEN "Fuel_Type" = 'Electric' THEN 1
            ELSE 0
          END AS "Fuel_Type_2",
          CASE
            WHEN "Fuel_Type" = 'LPG' THEN 1
            ELSE 0
          END AS "Fuel_Type_3",
          CASE
            WHEN "Fuel_Type" = 'Petrol' THEN 1
            ELSE 0
          END AS "Fuel_Type_4",
          CASE
            WHEN "Transmission" = 'Manual' THEN 0
            ELSE 1
          END AS "Transmission_0",
          CASE
            WHEN "Transmission" = 'Automatic' THEN 0
            ELSE 1
          END AS "Transmission_1",
          CASE
            WHEN "Name" = 'Audi A3' THEN 1
            ELSE 0
          END AS "Name_0",
          CASE
            WHEN "Name" = 'Audi A4' THEN 1
            ELSE 0
          END AS "Name_1",
          CASE
            WHEN "Name" = 'Audi A6' THEN 1
            ELSE 0
          END AS "Name_2",
          CASE
            WHEN "Name" = 'Audi A7' THEN 1
            ELSE 0
          END AS "Name_3",
          CASE
            WHEN "Name" = 'Audi A8' THEN 1
            ELSE 0
          END AS "Name_4",
          CASE
            WHEN "Name" = 'Audi Q3' THEN 1
            ELSE 0
          END AS "Name_5",
          CASE
            WHEN "Name" = 'Audi Q5' THEN 1
            ELSE 0
          END AS "Name_6",
          CASE
            WHEN "Name" = 'Audi Q7' THEN 1
            ELSE 0
          END AS "Name_7",
          CASE
            WHEN "Name" = 'Audi RS5' THEN 1
            ELSE 0
          END AS "Name_8",
          CASE
            WHEN "Name" = 'Audi TT' THEN 1
            ELSE 0
          END AS "Name_9",
          CASE
            WHEN "Name" = 'BMW 1' THEN 1
            ELSE 0
          END AS "Name_10",
          CASE
            WHEN "Name" = 'BMW 3' THEN 1
            ELSE 0
          END AS "Name_11",
          CASE
            WHEN "Name" = 'BMW 5' THEN 1
            ELSE 0
          END AS "Name_12",
          CASE
            WHEN "Name" = 'BMW 6' THEN 1
            ELSE 0
          END AS "Name_13",
          CASE
            WHEN "Name" = 'BMW 7' THEN 1
            ELSE 0
          END AS "Name_14",
          CASE
            WHEN "Name" = 'BMW X1' THEN 1
            ELSE 0
          END AS "Name_15",
          CASE
            WHEN "Name" = 'BMW X3' THEN 1
            ELSE 0
          END AS "Name_16",
          CASE
            WHEN "Name" = 'BMW X5' THEN 1
            ELSE 0
          END AS "Name_17",
          CASE
            WHEN "Name" = 'BMW X6' THEN 1
            ELSE 0
          END AS "Name_18",
          CASE
            WHEN "Name" = 'BMW Z4' THEN 1
            ELSE 0
          END AS "Name_19",
          CASE
            WHEN "Name" = 'Bentley Continental' THEN 1
            ELSE 0
          END AS "Name_20",
          CASE
            WHEN "Name" = 'Chevrolet Aveo' THEN 1
            ELSE 0
          END AS "Name_21",
          CASE
            WHEN "Name" = 'Chevrolet Beat' THEN 1
            ELSE 0
          END AS "Name_22",
          CASE
            WHEN "Name" = 'Chevrolet Cruze' THEN 1
            ELSE 0
          END AS "Name_23",
          CASE
            WHEN "Name" = 'Chevrolet Enjoy' THEN 1
            ELSE 0
          END AS "Name_24",
          CASE
            WHEN "Name" = 'Chevrolet Optra' THEN 1
            ELSE 0
          END AS "Name_25",
          CASE
            WHEN "Name" = 'Chevrolet Sail' THEN 1
            ELSE 0
          END AS "Name_26",
          CASE
            WHEN "Name" = 'Chevrolet Spark' THEN 1
            ELSE 0
          END AS "Name_27",
          CASE
            WHEN "Name" = 'Chevrolet Tavera' THEN 1
            ELSE 0
          END AS "Name_28",
          CASE
            WHEN "Name" = 'Datsun GO' THEN 1
            ELSE 0
          END AS "Name_29",
          CASE
            WHEN "Name" = 'Datsun Redi' THEN 1
            ELSE 0
          END AS "Name_30",
          CASE
            WHEN "Name" = 'Datsun redi-GO' THEN 1
            ELSE 0
          END AS "Name_31",
          CASE
            WHEN "Name" = 'Fiat Avventura' THEN 1
            ELSE 0
          END AS "Name_32",
          CASE
            WHEN "Name" = 'Fiat Grande' THEN 1
            ELSE 0
          END AS "Name_33",
          CASE
            WHEN "Name" = 'Fiat Linea' THEN 1
            ELSE 0
          END AS "Name_34",
          CASE
            WHEN "Name" = 'Fiat Punto' THEN 1
            ELSE 0
          END AS "Name_35",
          CASE
            WHEN "Name" = 'Force One' THEN 1
            ELSE 0
          END AS "Name_36",
          CASE
            WHEN "Name" = 'Ford Aspire' THEN 1
            ELSE 0
          END AS "Name_37",
          CASE
            WHEN "Name" = 'Ford Classic' THEN 1
            ELSE 0
          END AS "Name_38",
          CASE
            WHEN "Name" = 'Ford EcoSport' THEN 1
            ELSE 0
          END AS "Name_39",
          CASE
            WHEN "Name" = 'Ford Ecosport' THEN 1
            ELSE 0
          END AS "Name_40",
          CASE
            WHEN "Name" = 'Ford Endeavour' THEN 1
            ELSE 0
          END AS "Name_41",
          CASE
            WHEN "Name" = 'Ford Fiesta' THEN 1
            ELSE 0
          END AS "Name_42",
          CASE
            WHEN "Name" = 'Ford Figo' THEN 1
            ELSE 0
          END AS "Name_43",
          CASE
            WHEN "Name" = 'Ford Freestyle' THEN 1
            ELSE 0
          END AS "Name_44",
          CASE
            WHEN "Name" = 'Ford Fusion' THEN 1
            ELSE 0
          END AS "Name_45",
          CASE
            WHEN "Name" = 'Ford Ikon' THEN 1
            ELSE 0
          END AS "Name_46",
          CASE
            WHEN "Name" = 'Ford Mustang' THEN 1
            ELSE 0
          END AS "Name_47",
          CASE
            WHEN "Name" = 'Honda Accord' THEN 1
            ELSE 0
          END AS "Name_48",
          CASE
            WHEN "Name" = 'Honda Amaze' THEN 1
            ELSE 0
          END AS "Name_49",
          CASE
            WHEN "Name" = 'Honda BR-V' THEN 1
            ELSE 0
          END AS "Name_50",
          CASE
            WHEN "Name" = 'Honda BRV' THEN 1
            ELSE 0
          END AS "Name_51",
          CASE
            WHEN "Name" = 'Honda Brio' THEN 1
            ELSE 0
          END AS "Name_52",
          CASE
            WHEN "Name" = 'Honda CR-V' THEN 1
            ELSE 0
          END AS "Name_53",
          CASE
            WHEN "Name" = 'Honda City' THEN 1
            ELSE 0
          END AS "Name_54",
          CASE
            WHEN "Name" = 'Honda Civic' THEN 1
            ELSE 0
          END AS "Name_55",
          CASE
            WHEN "Name" = 'Honda Jazz' THEN 1
            ELSE 0
          END AS "Name_56",
          CASE
            WHEN "Name" = 'Honda Mobilio' THEN 1
            ELSE 0
          END AS "Name_57",
          CASE
            WHEN "Name" = 'Honda WR-V' THEN 1
            ELSE 0
          END AS "Name_58",
          CASE
            WHEN "Name" = 'Honda WRV' THEN 1
            ELSE 0
          END AS "Name_59",
          CASE
            WHEN "Name" = 'Hyundai Accent' THEN 1
            ELSE 0
          END AS "Name_60",
          CASE
            WHEN "Name" = 'Hyundai Creta' THEN 1
            ELSE 0
          END AS "Name_61",
          CASE
            WHEN "Name" = 'Hyundai EON' THEN 1
            ELSE 0
          END AS "Name_62",
          CASE
            WHEN "Name" = 'Hyundai Elantra' THEN 1
            ELSE 0
          END AS "Name_63",
          CASE
            WHEN "Name" = 'Hyundai Elite' THEN 1
            ELSE 0
          END AS "Name_64",
          CASE
            WHEN "Name" = 'Hyundai Getz' THEN 1
            ELSE 0
          END AS "Name_65",
          CASE
            WHEN "Name" = 'Hyundai Grand' THEN 1
            ELSE 0
          END AS "Name_66",
          CASE
            WHEN "Name" = 'Hyundai Santa' THEN 1
            ELSE 0
          END AS "Name_67",
          CASE
            WHEN "Name" = 'Hyundai Santro' THEN 1
            ELSE 0
          END AS "Name_68",
          CASE
            WHEN "Name" = 'Hyundai Sonata' THEN 1
            ELSE 0
          END AS "Name_69",
          CASE
            WHEN "Name" = 'Hyundai Tucson' THEN 1
            ELSE 0
          END AS "Name_70",
          CASE
            WHEN "Name" = 'Hyundai Verna' THEN 1
            ELSE 0
          END AS "Name_71",
          CASE
            WHEN "Name" = 'Hyundai Xcent' THEN 1
            ELSE 0
          END AS "Name_72",
          CASE
            WHEN "Name" = 'Hyundai i10' THEN 1
            ELSE 0
          END AS "Name_73",
          CASE
            WHEN "Name" = 'Hyundai i20' THEN 1
            ELSE 0
          END AS "Name_74",
          CASE
            WHEN "Name" = 'ISUZU D-MAX' THEN 1
            ELSE 0
          END AS "Name_75",
          CASE
            WHEN "Name" = 'Isuzu MUX' THEN 1
            ELSE 0
          END AS "Name_76",
          CASE
            WHEN "Name" = 'Jaguar F' THEN 1
            ELSE 0
          END AS "Name_77",
          CASE
            WHEN "Name" = 'Jaguar XE' THEN 1
            ELSE 0
          END AS "Name_78",
          CASE
            WHEN "Name" = 'Jaguar XF' THEN 1
            ELSE 0
          END AS "Name_79",
          CASE
            WHEN "Name" = 'Jaguar XJ' THEN 1
            ELSE 0
          END AS "Name_80",
          CASE
            WHEN "Name" = 'Jeep Compass' THEN 1
            ELSE 0
          END AS "Name_81",
          CASE
            WHEN "Name" = 'Lamborghini Gallardo' THEN 1
            ELSE 0
          END AS "Name_82",
          CASE
            WHEN "Name" = 'Land Rover' THEN 1
            ELSE 0
          END AS "Name_83",
          CASE
            WHEN "Name" = 'Mahindra Bolero' THEN 1
            ELSE 0
          END AS "Name_84",
          CASE
            WHEN "Name" = 'Mahindra E' THEN 1
            ELSE 0
          END AS "Name_85",
          CASE
            WHEN "Name" = 'Mahindra KUV' THEN 1
            ELSE 0
          END AS "Name_86",
          CASE
            WHEN "Name" = 'Mahindra Logan' THEN 1
            ELSE 0
          END AS "Name_87",
          CASE
            WHEN "Name" = 'Mahindra NuvoSport' THEN 1
            ELSE 0
          END AS "Name_88",
          CASE
            WHEN "Name" = 'Mahindra Quanto' THEN 1
            ELSE 0
          END AS "Name_89",
          CASE
            WHEN "Name" = 'Mahindra Renault' THEN 1
            ELSE 0
          END AS "Name_90",
          CASE
            WHEN "Name" = 'Mahindra Scorpio' THEN 1
            ELSE 0
          END AS "Name_91",
          CASE
            WHEN "Name" = 'Mahindra Ssangyong' THEN 1
            ELSE 0
          END AS "Name_92",
          CASE
            WHEN "Name" = 'Mahindra TUV' THEN 1
            ELSE 0
          END AS "Name_93",
          CASE
            WHEN "Name" = 'Mahindra Thar' THEN 1
            ELSE 0
          END AS "Name_94",
          CASE
            WHEN "Name" = 'Mahindra Verito' THEN 1
            ELSE 0
          END AS "Name_95",
          CASE
            WHEN "Name" = 'Mahindra XUV300' THEN 1
            ELSE 0
          END AS "Name_96",
          CASE
            WHEN "Name" = 'Mahindra XUV500' THEN 1
            ELSE 0
          END AS "Name_97",
          CASE
            WHEN "Name" = 'Mahindra Xylo' THEN 1
            ELSE 0
          END AS "Name_98",
          CASE
            WHEN "Name" = 'Maruti 800' THEN 1
            ELSE 0
          END AS "Name_99",
          CASE
            WHEN "Name" = 'Maruti A-Star' THEN 1
            ELSE 0
          END AS "Name_100",
          CASE
            WHEN "Name" = 'Maruti Alto' THEN 1
            ELSE 0
          END AS "Name_101",
          CASE
            WHEN "Name" = 'Maruti Baleno' THEN 1
            ELSE 0
          END AS "Name_102",
          CASE
            WHEN "Name" = 'Maruti Celerio' THEN 1
            ELSE 0
          END AS "Name_103",
          CASE
            WHEN "Name" = 'Maruti Ciaz' THEN 1
            ELSE 0
          END AS "Name_104",
          CASE
            WHEN "Name" = 'Maruti Dzire' THEN 1
            ELSE 0
          END AS "Name_105",
          CASE
            WHEN "Name" = 'Maruti Eeco' THEN 1
            ELSE 0
          END AS "Name_106",
          CASE
            WHEN "Name" = 'Maruti Ertiga' THEN 1
            ELSE 0
          END AS "Name_107",
          CASE
            WHEN "Name" = 'Maruti Esteem' THEN 1
            ELSE 0
          END AS "Name_108",
          CASE
            WHEN "Name" = 'Maruti Grand' THEN 1
            ELSE 0
          END AS "Name_109",
          CASE
            WHEN "Name" = 'Maruti Ignis' THEN 1
            ELSE 0
          END AS "Name_110",
          CASE
            WHEN "Name" = 'Maruti Omni' THEN 1
            ELSE 0
          END AS "Name_111",
          CASE
            WHEN "Name" = 'Maruti Ritz' THEN 1
            ELSE 0
          END AS "Name_112",
          CASE
            WHEN "Name" = 'Maruti S' THEN 1
            ELSE 0
          END AS "Name_113",
          CASE
            WHEN "Name" = 'Maruti S-Cross' THEN 1
            ELSE 0
          END AS "Name_114",
          CASE
            WHEN "Name" = 'Maruti SX4' THEN 1
            ELSE 0
          END AS "Name_115",
          CASE
            WHEN "Name" = 'Maruti Swift' THEN 1
            ELSE 0
          END AS "Name_116",
          CASE
            WHEN "Name" = 'Maruti Versa' THEN 1
            ELSE 0
          END AS "Name_117",
          CASE
            WHEN "Name" = 'Maruti Vitara' THEN 1
            ELSE 0
          END AS "Name_118",
          CASE
            WHEN "Name" = 'Maruti Wagon' THEN 1
            ELSE 0
          END AS "Name_119",
          CASE
            WHEN "Name" = 'Maruti Zen' THEN 1
            ELSE 0
          END AS "Name_120",
          CASE
            WHEN "Name" = 'Mercedes-Benz A' THEN 1
            ELSE 0
          END AS "Name_121",
          CASE
            WHEN "Name" = 'Mercedes-Benz B' THEN 1
            ELSE 0
          END AS "Name_122",
          CASE
            WHEN "Name" = 'Mercedes-Benz C-Class' THEN 1
            ELSE 0
          END AS "Name_123",
          CASE
            WHEN "Name" = 'Mercedes-Benz CLA' THEN 1
            ELSE 0
          END AS "Name_124",
          CASE
            WHEN "Name" = 'Mercedes-Benz E-Class' THEN 1
            ELSE 0
          END AS "Name_125",
          CASE
            WHEN "Name" = 'Mercedes-Benz GL-Class' THEN 1
            ELSE 0
          END AS "Name_126",
          CASE
            WHEN "Name" = 'Mercedes-Benz GLA' THEN 1
            ELSE 0
          END AS "Name_127",
          CASE
            WHEN "Name" = 'Mercedes-Benz GLC' THEN 1
            ELSE 0
          END AS "Name_128",
          CASE
            WHEN "Name" = 'Mercedes-Benz GLE' THEN 1
            ELSE 0
          END AS "Name_129",
          CASE
            WHEN "Name" = 'Mercedes-Benz GLS' THEN 1
            ELSE 0
          END AS "Name_130",
          CASE
            WHEN "Name" = 'Mercedes-Benz M-Class' THEN 1
            ELSE 0
          END AS "Name_131",
          CASE
            WHEN "Name" = 'Mercedes-Benz New' THEN 1
            ELSE 0
          END AS "Name_132",
          CASE
            WHEN "Name" = 'Mercedes-Benz R-Class' THEN 1
            ELSE 0
          END AS "Name_133",
          CASE
            WHEN "Name" = 'Mercedes-Benz S' THEN 1
            ELSE 0
          END AS "Name_134",
          CASE
            WHEN "Name" = 'Mercedes-Benz S-Class' THEN 1
            ELSE 0
          END AS "Name_135",
          CASE
            WHEN "Name" = 'Mercedes-Benz SL-Class' THEN 1
            ELSE 0
          END AS "Name_136",
          CASE
            WHEN "Name" = 'Mercedes-Benz SLC' THEN 1
            ELSE 0
          END AS "Name_137",
          CASE
            WHEN "Name" = 'Mercedes-Benz SLK-Class' THEN 1
            ELSE 0
          END AS "Name_138",
          CASE
            WHEN "Name" = 'Mini Clubman' THEN 1
            ELSE 0
          END AS "Name_139",
          CASE
            WHEN "Name" = 'Mini Cooper' THEN 1
            ELSE 0
          END AS "Name_140",
          CASE
            WHEN "Name" = 'Mini Countryman' THEN 1
            ELSE 0
          END AS "Name_141",
          CASE
            WHEN "Name" = 'Mitsubishi Lancer' THEN 1
            ELSE 0
          END AS "Name_142",
          CASE
            WHEN "Name" = 'Mitsubishi Outlander' THEN 1
            ELSE 0
          END AS "Name_143",
          CASE
            WHEN "Name" = 'Mitsubishi Pajero' THEN 1
            ELSE 0
          END AS "Name_144",
          CASE
            WHEN "Name" = 'Nissan Evalia' THEN 1
            ELSE 0
          END AS "Name_145",
          CASE
            WHEN "Name" = 'Nissan Micra' THEN 1
            ELSE 0
          END AS "Name_146",
          CASE
            WHEN "Name" = 'Nissan Sunny' THEN 1
            ELSE 0
          END AS "Name_147",
          CASE
            WHEN "Name" = 'Nissan Teana' THEN 1
            ELSE 0
          END AS "Name_148",
          CASE
            WHEN "Name" = 'Nissan Terrano' THEN 1
            ELSE 0
          END AS "Name_149",
          CASE
            WHEN "Name" = 'Nissan X-Trail' THEN 1
            ELSE 0
          END AS "Name_150",
          CASE
            WHEN "Name" = 'Porsche Boxster' THEN 1
            ELSE 0
          END AS "Name_151",
          CASE
            WHEN "Name" = 'Porsche Cayenne' THEN 1
            ELSE 0
          END AS "Name_152",
          CASE
            WHEN "Name" = 'Porsche Panamera' THEN 1
            ELSE 0
          END AS "Name_153",
          CASE
            WHEN "Name" = 'Renault Captur' THEN 1
            ELSE 0
          END AS "Name_154",
          CASE
            WHEN "Name" = 'Renault Duster' THEN 1
            ELSE 0
          END AS "Name_155",
          CASE
            WHEN "Name" = 'Renault Fluence' THEN 1
            ELSE 0
          END AS "Name_156",
          CASE
            WHEN "Name" = 'Renault KWID' THEN 1
            ELSE 0
          END AS "Name_157",
          CASE
            WHEN "Name" = 'Renault Koleos' THEN 1
            ELSE 0
          END AS "Name_158",
          CASE
            WHEN "Name" = 'Renault Lodgy' THEN 1
            ELSE 0
          END AS "Name_159",
          CASE
            WHEN "Name" = 'Renault Pulse' THEN 1
            ELSE 0
          END AS "Name_160",
          CASE
            WHEN "Name" = 'Renault Scala' THEN 1
            ELSE 0
          END AS "Name_161",
          CASE
            WHEN "Name" = 'Skoda Fabia' THEN 1
            ELSE 0
          END AS "Name_162",
          CASE
            WHEN "Name" = 'Skoda Laura' THEN 1
            ELSE 0
          END AS "Name_163",
          CASE
            WHEN "Name" = 'Skoda Octavia' THEN 1
            ELSE 0
          END AS "Name_164",
          CASE
            WHEN "Name" = 'Skoda Rapid' THEN 1
            ELSE 0
          END AS "Name_165",
          CASE
            WHEN "Name" = 'Skoda Superb' THEN 1
            ELSE 0
          END AS "Name_166",
          CASE
            WHEN "Name" = 'Skoda Yeti' THEN 1
            ELSE 0
          END AS "Name_167",
          CASE
            WHEN "Name" = 'Tata Bolt' THEN 1
            ELSE 0
          END AS "Name_168",
          CASE
            WHEN "Name" = 'Tata Hexa' THEN 1
            ELSE 0
          END AS "Name_169",
          CASE
            WHEN "Name" = 'Tata Indica' THEN 1
            ELSE 0
          END AS "Name_170",
          CASE
            WHEN "Name" = 'Tata Indigo' THEN 1
            ELSE 0
          END AS "Name_171",
          CASE
            WHEN "Name" = 'Tata Manza' THEN 1
            ELSE 0
          END AS "Name_172",
          CASE
            WHEN "Name" = 'Tata Nano' THEN 1
            ELSE 0
          END AS "Name_173",
          CASE
            WHEN "Name" = 'Tata New' THEN 1
            ELSE 0
          END AS "Name_174",
          CASE
            WHEN "Name" = 'Tata Nexon' THEN 1
            ELSE 0
          END AS "Name_175",
          CASE
            WHEN "Name" = 'Tata Safari' THEN 1
            ELSE 0
          END AS "Name_176",
          CASE
            WHEN "Name" = 'Tata Sumo' THEN 1
            ELSE 0
          END AS "Name_177",
          CASE
            WHEN "Name" = 'Tata Tiago' THEN 1
            ELSE 0
          END AS "Name_178",
          CASE
            WHEN "Name" = 'Tata Tigor' THEN 1
            ELSE 0
          END AS "Name_179",
          CASE
            WHEN "Name" = 'Tata Venture' THEN 1
            ELSE 0
          END AS "Name_180",
          CASE
            WHEN "Name" = 'Tata Xenon' THEN 1
            ELSE 0
          END AS "Name_181",
          CASE
            WHEN "Name" = 'Tata Zest' THEN 1
            ELSE 0
          END AS "Name_182",
          CASE
            WHEN "Name" = 'Toyota Camry' THEN 1
            ELSE 0
          END AS "Name_183",
          CASE
            WHEN "Name" = 'Toyota Corolla' THEN 1
            ELSE 0
          END AS "Name_184",
          CASE
            WHEN "Name" = 'Toyota Etios' THEN 1
            ELSE 0
          END AS "Name_185",
          CASE
            WHEN "Name" = 'Toyota Fortuner' THEN 1
            ELSE 0
          END AS "Name_186",
          CASE
            WHEN "Name" = 'Toyota Innova' THEN 1
            ELSE 0
          END AS "Name_187",
          CASE
            WHEN "Name" = 'Toyota Platinum' THEN 1
            ELSE 0
          END AS "Name_188",
          CASE
            WHEN "Name" = 'Toyota Prius' THEN 1
            ELSE 0
          END AS "Name_189",
          CASE
            WHEN "Name" = 'Toyota Qualis' THEN 1
            ELSE 0
          END AS "Name_190",
          CASE
            WHEN "Name" = 'Volkswagen Ameo' THEN 1
            ELSE 0
          END AS "Name_191",
          CASE
            WHEN "Name" = 'Volkswagen Beetle' THEN 1
            ELSE 0
          END AS "Name_192",
          CASE
            WHEN "Name" = 'Volkswagen CrossPolo' THEN 1
            ELSE 0
          END AS "Name_193",
          CASE
            WHEN "Name" = 'Volkswagen Jetta' THEN 1
            ELSE 0
          END AS "Name_194",
          CASE
            WHEN "Name" = 'Volkswagen Passat' THEN 1
            ELSE 0
          END AS "Name_195",
          CASE
            WHEN "Name" = 'Volkswagen Polo' THEN 1
            ELSE 0
          END AS "Name_196",
          CASE
            WHEN "Name" = 'Volkswagen Tiguan' THEN 1
            ELSE 0
          END AS "Name_197",
          CASE
            WHEN "Name" = 'Volkswagen Vento' THEN 1
            ELSE 0
          END AS "Name_198",
          CASE
            WHEN "Name" = 'Volvo S60' THEN 1
            ELSE 0
          END AS "Name_199",
          CASE
            WHEN "Name" = 'Volvo S80' THEN 1
            ELSE 0
          END AS "Name_200",
          CASE
            WHEN "Name" = 'Volvo V40' THEN 1
            ELSE 0
          END AS "Name_201",
          CASE
            WHEN "Name" = 'Volvo XC60' THEN 1
            ELSE 0
          END AS "Name_202",
          CASE
            WHEN "Name" = 'Volvo XC90' THEN 1
            ELSE 0
          END AS "Name_203",
          CASE
            WHEN "Year" >= 1998.0
            AND "Year" < 2008.0 THEN 0.0
            WHEN "Year" >= 2008.0
            AND "Year" < 2010.0 THEN 0.1
            WHEN "Year" >= 2010.0
            AND "Year" < 2011.0 THEN 0.2
            WHEN "Year" >= 2011.0
            AND "Year" < 2012.0 THEN 0.30000000000000004
            WHEN "Year" >= 2012.0
            AND "Year" < 2013.0 THEN 0.4
            WHEN "Year" >= 2013.0
            AND "Year" < 2014.0 THEN 0.5
            WHEN "Year" >= 2014.0
            AND "Year" < 2015.0 THEN 0.6000000000000001
            WHEN "Year" >= 2015.0
            AND "Year" < 2016.0 THEN 0.7000000000000001
            WHEN "Year" >= 2016.0
            AND "Year" < 2017.0 THEN 0.8
            WHEN "Year" >= 2017.0
            AND "Year" < 2018.0 THEN 0.9
            ELSE 1.0
          END AS "Year",
          CASE
            WHEN "Kilometers_Driven" >= 600.0
            AND "Kilometers_Driven" < 14910.0 THEN 0.0
            WHEN "Kilometers_Driven" >= 14910.0
            AND "Kilometers_Driven" < 22894.8 THEN 0.0714285714285714
            WHEN "Kilometers_Driven" >= 22894.8
            AND "Kilometers_Driven" < 29000.0 THEN 0.1428571428571428
            WHEN "Kilometers_Driven" >= 29000.0
            AND "Kilometers_Driven" < 34687.2 THEN 0.2142857142857142
            WHEN "Kilometers_Driven" >= 34687.2
            AND "Kilometers_Driven" < 40000.0 THEN 0.2857142857142856
            WHEN "Kilometers_Driven" >= 40000.0
            AND "Kilometers_Driven" < 45000.0 THEN 0.357142857142857
            WHEN "Kilometers_Driven" >= 45000.0
            AND "Kilometers_Driven" < 50000.0 THEN 0.4285714285714284
            WHEN "Kilometers_Driven" >= 50000.0
            AND "Kilometers_Driven" < 55000.0 THEN 0.4999999999999998
            WHEN "Kilometers_Driven" >= 55000.0
            AND "Kilometers_Driven" < 60000.0 THEN 0.5714285714285712
            WHEN "Kilometers_Driven" >= 60000.0
            AND "Kilometers_Driven" < 65000.0 THEN 0.6428571428571426
            WHEN "Kilometers_Driven" >= 65000.0
            AND "Kilometers_Driven" < 71000.0 THEN 0.714285714285714
            WHEN "Kilometers_Driven" >= 71000.0
            AND "Kilometers_Driven" < 78500.0 THEN 0.7857142857142854
            WHEN "Kilometers_Driven" >= 78500.0
            AND "Kilometers_Driven" < 88502.2 THEN 0.8571428571428568
            WHEN "Kilometers_Driven" >= 88502.2
            AND "Kilometers_Driven" < 109000.0 THEN 0.9285714285714282
            ELSE 0.9999999999999996
          END AS "Kilometers_Driven",
          CASE
            WHEN "Engine" >= 72.0
            AND "Engine" < 998.0 THEN 0.0
            WHEN "Engine" >= 998.0
            AND "Engine" < 1193.0 THEN 0.0769230769230769
            WHEN "Engine" >= 1193.0
            AND "Engine" < 1197.0 THEN 0.1538461538461538
            WHEN "Engine" >= 1197.0
            AND "Engine" < 1198.0 THEN 0.2307692307692307
            WHEN "Engine" >= 1198.0
            AND "Engine" < 1248.0 THEN 0.3076923076923076
            WHEN "Engine" >= 1248.0
            AND "Engine" < 1399.0 THEN 0.38461538461538447
            WHEN "Engine" >= 1399.0
            AND "Engine" < 1497.0 THEN 0.4615384615384614
            WHEN "Engine" >= 1497.0
            AND "Engine" < 1498.0 THEN 0.5384615384615383
            WHEN "Engine" >= 1498.0
            AND "Engine" < 1598.0 THEN 0.6153846153846152
            WHEN "Engine" >= 1598.0
            AND "Engine" < 1968.0 THEN 0.6923076923076921
            WHEN "Engine" >= 1968.0
            AND "Engine" < 1999.0 THEN 0.7692307692307689
            WHEN "Engine" >= 1999.0
            AND "Engine" < 2179.0 THEN 0.8461538461538459
            WHEN "Engine" >= 2179.0
            AND "Engine" < 2835.0 THEN 0.9230769230769228
            ELSE 0.9999999999999997
          END AS "Engine",
          "Power",
          "Mileage",
          "Seats",
          CASE
            WHEN "Brand" = 'Maruti' THEN 959
            WHEN "Brand" = 'Hyundai' THEN 850
            WHEN "Brand" = 'Honda' THEN 499
            WHEN "Brand" = 'Toyota' THEN 319
            WHEN "Brand" = 'Mercedes-Benz' THEN 252
            WHEN "Brand" = 'Volkswagen' THEN 236
            WHEN "Brand" = 'Ford' THEN 233
            WHEN "Brand" = 'Mahindra' THEN 213
            WHEN "Brand" = 'BMW' THEN 211
            WHEN "Brand" = 'Audi' THEN 192
            WHEN "Brand" = 'Tata' THEN 150
            WHEN "Brand" = 'Skoda' THEN 138
            WHEN "Brand" = 'Renault' THEN 112
            WHEN "Brand" = 'Chevrolet' THEN 98
            WHEN "Brand" = 'Nissan' THEN 71
            WHEN "Brand" = 'Land' THEN 46
            WHEN "Brand" = 'Jaguar' THEN 36
            WHEN "Brand" = 'Mini' THEN 22
            WHEN "Brand" = 'Fiat' THEN 19
            WHEN "Brand" = 'Mitsubishi' THEN 18
            WHEN "Brand" = 'Volvo' THEN 17
            WHEN "Brand" = 'Porsche' THEN 13
            WHEN "Brand" = 'Jeep' THEN 11
            WHEN "Brand" = 'Datsun' THEN 10
            WHEN "Brand" = 'Force' THEN 3
            WHEN "Brand" = 'Isuzu' THEN 1
            WHEN "Brand" = 'Lamborghini' THEN 1
            WHEN "Brand" = 'Bentley' THEN 1
            WHEN "Brand" = 'ISUZU' THEN 1
          END AS "Brand"
        FROM
          (
            SELECT
              "Owner_Type",
              "Location",
              "Fuel_Type",
              "Transmission",
              "Name",
              COALESCE("Year", 2014.0) AS "Year",
              "Kilometers_Driven",
              COALESCE("Engine", 1197.0) AS "Engine",
              COALESCE("Power", 74.0) AS "Power",
              "Mileage",
              "Seats",
              "Brand"
            FROM
              car_price
          ) AS data
      ) AS data
  ) AS F