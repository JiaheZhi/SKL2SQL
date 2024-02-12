DROP TABLE IF EXISTS usa_accident;
CREATE TABLE usa_accident_zipcode_map(
    "Zipcode"      VARCHAR(45),
    "Count"        INT
);
COPY INTO usa_accident_zipcode_map FROM '/root/volume/SKL2SQL/dataset/US_Accidents_March23_train_zipcode_counter.csv' USING DELIMITERS ',';