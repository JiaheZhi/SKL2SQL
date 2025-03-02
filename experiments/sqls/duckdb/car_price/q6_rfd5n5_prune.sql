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
          WHEN "Engine" <= 1968.0 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Year" <= 2011.0 THEN CASE
                WHEN "Power" <= 105.0 THEN CASE
                  WHEN "Year" <= 2008.0 THEN 0.460000000000
                  ELSE 0.751033333333
                END
                ELSE CASE
                  WHEN "Location" <> 'Bangalore' THEN 1.041830000000
                  ELSE 1.675000000000
                END
              END
              ELSE CASE
                WHEN "Name" <> 'BMW 5' THEN CASE
                  WHEN "Power" <= 105.0 THEN 1.145943333333
                  ELSE 1.732180000000
                END
                ELSE CASE
                  WHEN "Location" <> 'Delhi' THEN 6.000000000000
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
                  WHEN "Year" <= 2016.0 THEN 1.729460000000
                  ELSE 2.256566666667
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mini Cooper' THEN CASE
                  WHEN "Name" <> 'Hyundai Creta' THEN 2.742596666667
                  ELSE 4.007026666667
                END
                ELSE CASE
                  WHEN "Location" <> 'Kochi' THEN 7.666666666667
                  ELSE 10.516666666667
                END
              END
            END
          END
          ELSE CASE
            WHEN "Year" <= 2017.0 THEN CASE
              WHEN "Transmission" <> 'Manual' THEN CASE
                WHEN "Year" <= 2012.0 THEN CASE
                  WHEN "Name" <> 'Audi A4' THEN 2.287536666667
                  ELSE 4.222223333333
                END
                ELSE CASE
                  WHEN "Name" <> 'Mercedes-Benz GLA' THEN 4.877990000000
                  ELSE 6.596250000000
                END
              END
              ELSE CASE
                WHEN "Year" <= 2013.0 THEN CASE
                  WHEN "Year" <= 2011.0 THEN 1.550726666667
                  ELSE 2.350470000000
                END
                ELSE CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 2.913960000000
                  ELSE 3.952440000000
                END
              END
            END
            ELSE CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Mileage" <= 17.05 THEN CASE
                  WHEN "Brand" <= 266.0 THEN 4.927193333333
                  ELSE 5.873940000000
                END
                ELSE CASE
                  WHEN "Name" <> 'Chevrolet Cruze' THEN 9.294546666667
                  ELSE 3.290000000000
                END
              END
              ELSE CASE
                WHEN "Location" <> 'Delhi' THEN 18.713333333333
                ELSE 11.666666666667
              END
            END
          END
        END
        ELSE CASE
          WHEN "Power" <= 193.64000000000033 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Year" <= 2012.0 THEN CASE
                WHEN "Brand" <= 409.0 THEN CASE
                  WHEN "Power" <= 174.33 THEN 2.754430000000
                  ELSE 4.130333333333
                END
                ELSE CASE
                  WHEN "Owner_Type" in ('First') THEN 2.097500000000
                  ELSE 1.244903333333
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Jaguar XF' THEN CASE
                  WHEN "Name" <> 'Honda Accord' THEN 5.477770000000
                  ELSE 2.120000000000
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 34687.2 THEN 10.666666666667
                  ELSE 8.000000000000
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2016.0 THEN CASE
                WHEN "Fuel_Type" <> 'Diesel' THEN CASE
                  WHEN "Brand" <= 244.0 THEN 3.661110000000
                  ELSE 5.963636666667
                END
                ELSE CASE
                  WHEN "Seats" <= 7.0 THEN 8.140910000000
                  ELSE 5.997926666667
                END
              END
              ELSE CASE
                WHEN "Transmission" <> 'Manual' THEN CASE
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
            WHEN "Kilometers_Driven" <= 34687.2 THEN CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Brand" <= 7.0 THEN 40.000000000000
                ELSE CASE
                  WHEN "Year" <= 2015.0 THEN 11.833333333333
                  ELSE 17.184693333333
                END
              END
              ELSE CASE
                WHEN "Mileage" <= 13.1 THEN 32.356666666667
                ELSE 53.333333333333
              END
            END
            ELSE CASE
              WHEN "Year" <= 2013.0 THEN CASE
                WHEN "Kilometers_Driven" <= 60000.0 THEN CASE
                  WHEN "Brand" <= 119.0 THEN 15.240556666667
                  ELSE 7.6666666666675143
                END
                ELSE CASE
                  WHEN "Location" <> 'Hyderabad' THEN 1.50000000000088776666667
                  ELSE 8.724706666667
                END
              END
              ELSE CASE
                WHEN "Engine" <= 2811.666666666667 THEN CASE
                  WHEN "Brand" <= 551.0 THEN 9.975290000000
                  ELSE 5.242856666667
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 78500.0 THEN 14.136326666667
                  ELSE 9.510333333333
                END
              END
            END
          END
        END
      END AS tree_0,
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 1968.0 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Year" <= 2011.0 THEN CASE
                  WHEN "Power" <= 105.0 THEN 0.678910000000
                  ELSE 1.094966666667
                END
                ELSE CASE
                  WHEN "Name" <> 'BMW 5' THEN 1.278586666667
                  ELSE 4.779166666667
                END
              END
              ELSE CASE
                WHEN "Location" <> 'Mumbai' THEN 13.626666666667
                ELSE 8.833333333333
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Name" <> 'Maruti Dzire' THEN 1.286640000000
                  ELSE 2.236666666667
                END
                ELSE CASE
                  WHEN "Year" <= 2017.0 THEN 1.816070000000
                  ELSE 2.430276666667
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mini Cooper' THEN CASE
                  WHEN "Year" <= 2016.0 THEN 2.460813333333
                  ELSE 3.643916666667
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 22894.8 THEN 10.061110000000
                  ELSE 7.883333333333
                END
              END
            END
          END
          ELSE CASE
            WHEN "Transmission" <> 'Automatic' THEN CASE
              WHEN "Year" <= 2013.0 THEN CASE
                WHEN "Year" <= 2011.0 THEN CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 1.228616666667
                  ELSE 1.875606666667
                END
                ELSE CASE
                  WHEN "Brand" <= 277.5 THEN 1.943890000000
                  ELSE 2.803520000000
                END
              END
              ELSE CASE
                WHEN "Brand" <= 266.0 THEN CASE
                  WHEN "Name" <> 'Mahindra XUV500' THEN 2.672073333333
                  ELSE 3.501603333333
                END
                ELSE CASE
                  WHEN "Mileage" <= 13.1 THEN 3.911873333333
                  ELSE 6.202550000000
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2017.0 THEN CASE
                WHEN "Year" <= 2013.0 THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 2.994683333333
                  ELSE 6.194443333333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 45000.0 THEN 6.676233333333
                  ELSE 5.069513333333
                END
              END
              ELSE CASE
                WHEN "Mileage" <= 13.1 THEN CASE
                  WHEN "Year" <= 206.000000000000 THEN 11.666666666667
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
          WHEN "Year" <= 2015.0 THEN CASE
            WHEN "Seats" <= 5.0 THEN CASE
              WHEN "Engine" <= 2179.0 THEN CASE
                WHEN "Brand" <= 214.0 THEN CASE
                  WHEN "Year" <= 2013.0 THEN 7.333333333333
                  ELSE 8.594443333333
                END
                ELSE 1.916666666667
              END
              ELSE CASE
                WHEN "Brand" <= 114.0 THEN CASE
                  WHEN "Year" <= 2010.0 THEN 19.666666666667
                  ELSE 16.398483333333
                END
                ELSE CASE
                  WHEN "Name" <> 'BMW 3' THEN 14.269523333333
                  ELSE 9.666666666667
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2012.0 THEN CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Brand" <= 409.0 THEN 3.326423333333
                  ELSE 1.559090000000
                END
                ELSE CASE
                  WHEN "Year" <= 2010.0 THEN 3.738443333333
                  ELSE 6.937833333333
                END
              END
              ELSE CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Name" <> 'Mercedes-Benz M-Class' THEN 5.867683333333
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
              WHEN "Kilometers_Driven" <= 55000.0 THEN CASE
                WHEN "Seats" <= 7.0 THEN CASE
                  WHEN "Engine" <= 1999.0 THEN 9.592733333333
                  ELSE 13.191913333333
                END
                ELSE CASE
                  WHEN "Power" <= 174.33 THEN 7.013646666667
                  ELSE 9.396110000000
                END
              END
              ELSE CASE
                WHEN "Location" <> 'Coimbatore' THEN CASE
                  WHEN "Seats" <= 5.0 THEN 1.500000000000
                  ELSE 6.429750000000
                END
                ELSE CASE
                  WHEN "Year" <= 2016.0 THEN 4.653333333333
                  ELSE 10.119046666667
                END
              END
            END
            ELSE CASE
              WHEN "Engine" <= 2811.666666666667 THEN CASE
                WHEN "Mileage" <= 11.5000000000003 THEN CASE
                  WHEN "Brand" <= 551.0 THEN 10.405896666667
                  ELSE 6.391110000000
                END
                ELSE CASE
                  WHEN "Name" <> 'Mercedes-Benz GLE' THEN 13.692380000000
                  ELSE 18.858890000000
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Ford Endeavour' THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 20.143380000000
                  ELSE 36.414443333333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 34687.2 THEN 11.404763333333
                  ELSE 9.821666666667
                END
              END
            END
          END
        END
      END AS tree_1,
      CASE
        WHEN "Power" <= 150.0 THEN CASE
          WHEN "Engine" <= 1968.0 THEN CASE
            WHEN "Year" <= 2014.0 THEN CASE
              WHEN "Name" <> 'Land Rover' THEN CASE
                WHEN "Year" <= 2012.0 THEN CASE
                  WHEN "Year" <= 2008.0 THEN 0.508820000000
                  ELSE 0.931176666667
                END
                ELSE CASE
                  WHEN "Power" <= 98.6 THEN 1.182800000000
                  ELSE 1.829380000000
                END
              END
              ELSE CASE
                WHEN "Owner_Type" in ('First') THEN 13.626666666667
                ELSE CASE
                  WHEN "Year" <= 2008.0 THEN 5.370000000000
                  ELSE 8.833333333333
                END
              END
            END
            ELSE CASE
              WHEN "Power" <= 105.0 THEN CASE
                WHEN "Power" <= 73.94 THEN CASE
                  WHEN "Name" <> 'Maruti Dzire' THEN 1.273443333333
                  ELSE 2.900833333333
                END
                ELSE CASE
                  WHEN "Year" <= 2016.0 THEN 1.696180000000
                  ELSE 2.284520000000
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mini Cooper' THEN CASE
                  WHEN "Year" <= 2016.0 THEN 2.402760000000
                  ELSE 3.521763333333
                END
                ELSE CASE
                  WHEN "Year" <= 2016.0 THEN 7.666666666667
                  ELSE 10.550000000000
                END
              END
            END
          END
          ELSE CASE
            WHEN "Year" <= 2016.0 THEN CASE
              WHEN "Transmission" <> 'Manual' THEN CASE
                WHEN "Year" <= 2013.0 THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 3.214373333333
                  ELSE 5.944443333333
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 55000.0 THEN 5.881563333333
                  ELSE 4.078420000000
                END
              END
              ELSE CASE
                WHEN "Year" <= 2011.0 THEN CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 1.180923333333
                  ELSE 1.948246666667
                END
                ELSE CASE
                  WHEN "Brand" <= 277.5 THEN 2.498063333333
                  ELSE 3.433940000000
                END
              END
            END
            ELSE CASE
              WHEN "Engine" <= 2179.0 THEN CASE
                WHEN "Brand" <= 24.000000000000 THEN CASE
                  WHEN "Location" <> 'Coimbatore' THEN 13.833333333333
                  ELSE 18.713333333333
                END
                ELSE CASE
                  WHEN "Transmission" <> 'Manual' THEN 8.0000000000000853
                  ELSE 3.526666666667
                END
              END
              ELSE CASE
                WHEN "Brand" <= 98.0 THEN 11.666666666667
                ELSE CASE
                  WHEN "Name" <> 'Toyota Innova' THEN 3.984610000000
                  ELSE 5.533453333333
                END
              END
            END
          END
        END
        ELSE CASE
          WHEN "Year" <= 2015.0 THEN CASE
            WHEN "Seats" <= 5.0 THEN CASE
              WHEN "Engine" <= 2179.0 THEN CASE
                WHEN "Fuel_Type" <> 'Diesel' THEN CASE
                  WHEN "Year" <= 2013.0 THEN 11.666666666667
                  ELSE 9.222223333333
                END
                ELSE 2.916666666667
              END
              ELSE CASE
                WHEN "Brand" <= 114.0 THEN CASE
                  WHEN "Kilometers_Driven" <= 40000.0 THEN 24.000000000000
                  ELSE 16.388333333333
                END
                ELSE CASE
                  WHEN "Name" <> 'BMW 6' THEN 13.452776666667
                  ELSE 15.500000000000
                END
              END
            END
            ELSE CASE
              WHEN "Year" <= 2012.0 THEN CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Brand" <= 409.0 THEN 3.534836666667
                  ELSE 1.626363333333
                END
                ELSE CASE
                  WHEN "Name" <> 'Land Rover' THEN 5.336436666667
                  ELSE 17.833333333333
                END
              END
              ELSE CASE
                WHEN "Power" <= 193.64000000000033 THEN CASE
                  WHEN "Name" <> 'Land Rover' THEN 5.747713333333
                  ELSE 10.055833333333
                END
                ELSE CASE
                  WHEN "Engine" <= 2811.666666666667 THEN 6.450666666667
                  ELSE 10.756666666667
                END
              END
            END
          END
          ELSE CASE
            WHEN "Power" <= 193.64000000000033 THEN CASE
              WHEN "Year" <= 206.000000000000 THEN CASE
                WHEN "Kilometers_Driven" <= 29000.0 THEN CASE
                  WHEN "Name" <> 'Mercedes-Benz M-Class' THEN 10.300120000000
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
                  WHEN "Location" <> 'Mumbai' THEN 13.740863333333
                  ELSE 20.416666666667
                END
              END
            END
            ELSE CASE
              WHEN "Kilometers_Driven" <= 29000.0 THEN CASE
                WHEN "Engine" <= 2811.666666666667 THEN CASE
                  WHEN "Name" <> 'Mercedes-Benz GLE' THEN 13.562500000000
                  ELSE 52.1200000000005
                END
                ELSE CASE
                  WHEN "Name" <> 'Ford Endeavour' THEN 22.223430000000
                  ELSE 11.388890000000
                END
              END
              ELSE CASE
                WHEN "Name" <> 'Mercedes-Benz GLE' THEN CASE
                  WHEN "Brand" <= 27.333333333333 THEN 15.908810000000
                  ELSE 10.834226666667
                END
                ELSE CASE
                  WHEN "Kilometers_Driven" <= 45000.0 THEN 21.030000000000
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
          "Owner_Type",
          "Location",
          "Fuel_Type",
          "Transmission",
          "Name",
          "Year",
          "Kilometers_Driven",
          "Engine",
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