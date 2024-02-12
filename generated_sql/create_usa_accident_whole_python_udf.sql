CREATE OR REPLACE FUNCTION predict_model(airport VARCHAR(45),zipcode VARCHAR(45),source VARCHAR(10),timezone VARCHAR(45),country VARCHAR(45),temperature Double, wind Double, humidity Double, pressure Double, visibility Double, description STRING,starttime VARCHAR(45),weather VARCHAR(45))
RETURNS INTEGER LANGUAGE PYTHON {
    import numpy as np
    import pandas as pd
    import category_encoders as ce
    import joblib
    import time

    binary_encoder_cols = ['Airport_Code']
    frequency_encoder_cols = ['Zipcode']
    onehot_encoder_cols = ['Source', 'Timezone', 'Country']
    numerical_cols = ['Temperature(F)', 'Wind_Chill(F)', 'Humidity(%)', 'Pressure(in)', 'Visibility(mi)']
    udf_cols = ['Description', 'Start_Time', 'Weather_Condition']
    dataset_init = np.column_stack((airport, zipcode, source, timezone, country, temperature, wind, humidity, pressure, visibility, description, starttime, weather))

    begin1 = time.perf_counter()
    data = pd.DataFrame(dataset_init)
    data.columns = ['Airport_Code', 'Zipcode', 'Source', 'Timezone', 'Country', 'Temperature(F)', 'Wind_Chill(F)', 'Humidity(%)', 'Pressure(in)', 'Visibility(mi)', 'Description', 'Start_Time', 'Weather_Condition']
    begin2 = time.perf_counter()

    with open('/root/volume/SKL2SQL/logs/monet_udf.log', 'a') as log:
        log.write(str(type(dataset_init))+" 's \n")
        log.write(str(dataset_init))
    with open('/root/volume/SKL2SQL/logs/monet_udf.log', 'a') as log:
        log.write("to df cost "+str(begin2-begin1)+" 's \n")

    begin3 = time.perf_counter()
    # clean data
    for col in data.columns:
        if len(data[col].isna().unique()) > 1:
            # data[col] = data[col].fillna(0)
            most_common_value = data[col].value_counts().idxmax()  # 获取每列中出现最多的值
            data[col].fillna(most_common_value, inplace=True)  # 使用最常见的值填充 NaN
    # preprocess
    binary_encoder = ce.BinaryEncoder(cols=binary_encoder_cols)
    data = binary_encoder.fit_transform(data)
    counter_encoder = ce.CountEncoder(cols=frequency_encoder_cols)
    data = counter_encoder.fit_transform(data)
    def f(weather: str):
        bad_conditions = ['rain', 'snow', 'fog', 'wind', 'thunder', 'storm', 'drizzle', 'sand', 'whirlwind']
        weather = weather.lower()
        bad_value = 0
        for bad_cond in bad_conditions:
            if bad_cond in weather:
                bad_value += 1
        return bad_value
    begin4 = time.perf_counter()
    data['Description'] = data['Description'].apply(lambda row: len(str(row).split(' ')))
    data['Start_Time'] = data['Start_Time'].apply(lambda time: int(str(time)[0:4])*12 + int(str(time)[5:7]))
    data['Weather_Condition'] = data['Weather_Condition'].apply(lambda weather: f(str(weather)))
    begin5 = time.perf_counter()

    # Loading Model
    model = joblib.load('/root/volume/SKL2SQL/trained_model/usa_accident_rf_pipeline_py3.10.joblib')
    begin5 = time.perf_counter()
    prd_y = model.predict(data)
    begin6 = time.perf_counter()

    with open('/root/volume/SKL2SQL/logs/monet_udf.log', 'a') as log:
        log.write("pipe trans cost "+str(begin2-begin1)+" 's \n")
        log.write("preprocess cost "+str(begin5-begin3)+" 's \n")
        log.write("str prep cost "+str(begin5-begin4)+" 's \n")
        log.write("model predict cost "+str(begin6-begin5)+" 's \n")

    return []
};