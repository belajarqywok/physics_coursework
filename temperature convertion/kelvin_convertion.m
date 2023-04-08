function result = kelvin_convertion ( kelvin )

    % Konversi Kelvin

    
    
    % Kelvin ke Celcius
    % Rumus : °K - 273
    kelvin_to_celcius = kelvin - 273;
    
    
    % Kelvin ke Reamur
    % Rumus : (°K - 273.15) * 4/5
    kelvin_to_reamur = (kelvin - 273.15) * (4/5);
    
    
    % Kelvin ke Farenheit
    % Rumus : 1.8 * (°K - 273) + 32
    kelvin_to_farenheit = 1.8 * (kelvin - 273) + 32;


    % Index Array  : [Celcius, Reamur, Farenheit]
    result = [kelvin_to_celcius, kelvin_to_reamur, kelvin_to_farenheit];

end

