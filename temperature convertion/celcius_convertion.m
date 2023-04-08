function result = celcius_convertion ( celcius )

    % Konversi Celcius


    % Celcius ke Farenheit
    % Formula : ((9/5) * °C) + 32
    celcius_to_farenheit = ((9/5) * celcius) + 32;
    
    
    % Celcius ke Kelvin
    % Formula : °C + 273
    celcius_to_kelvin = celcius + 273;
    
    
    % Celcius ke Reamur
    % Formula : (4/5) * °C
    celcius_to_reamur = (4/5) * celcius;
    
    
    % Index Array  : [Farenheit, Kelvin, Reamur]
    result = [celcius_to_farenheit, celcius_to_kelvin, celcius_to_reamur];
    
end

