CREATE FUNCTION split_line(lines STRING) RETURNS INTEGER
LANGUAGE PYTHON {
    result = [len(str(line).split(' ')) for line in lines]
    return result
};

CREATE FUNCTION time_months(times STRING) RETURNS INTEGER
LANGUAGE PYTHON {
    result = [(int(str(time)[0:4])*12 + int(str(time)[5:7])) for time in times]
    return result
};

DROP FUNCTION bad_count;
CREATE FUNCTION bad_count(weathers STRING) RETURNS INTEGER
LANGUAGE PYTHON {
    with open('/root/volume/SKL2SQL/logs/vector.log', 'a') as log:
        log.write("input:"+str(weathers)+" 's \n")
        log.write("input size:"+str(len(weathers))+" 's \n")
    result = []
    bad_conditions = ['rain', 'snow', 'fog', 'wind', 'thunder', 'storm', 'drizzle', 'sand', 'whirlwind']
    for weather in weathers:
        weather = weather.lower()
        bad_value = 0
        for bad_cond in bad_conditions:
            if bad_cond in weather:
                bad_value += 1
        result.append(bad_value)    
    return result
};