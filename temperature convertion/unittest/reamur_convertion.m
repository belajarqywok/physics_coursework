function result = reamur_convertion ( reamur )

    % Konversi Reamur

    
    
    % Reamur ke Celcius
    % Rumus : (5/4) * °R
    reamur_to_celcius = (5/4) * reamur;
    
    
    % Reamur ke Kelvin
    % Rumus : (°R * 5/4) + 273.15
    reamur_to_kelvin = (reamur * 5/4) + 273.15;
    
    
    % Reamur ke Farenheit
    % Rumus : (°R * 9/4) + 32
    reamur_to_farenheit = (reamur * (9/4)) + 32;


    % Index Array  : [Celcius, Kelvin, Farenheit]
    result = [reamur_to_celcius, reamur_to_kelvin, reamur_to_farenheit];
    
    %result = [format, format_name, count];

end

