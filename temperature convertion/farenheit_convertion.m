function result = farenheit_convertion ( farenheit )

    % Konversi Farenheit

    
    
    % Farenheit ke Celcius
    % Rumus : (5/9) * (°F - 32)
    fahrenheit_to_celcius = (5/9) * (farenheit - 32);
    
    
    % Farenheit ke Kelvin
    % Rumus : (°F + 459.67) * 5/9
    fahrenheit_to_kelvin = (farenheit + 459.67) * 5/9;
    
    
    % Farenheit ke Reamur
    % Rumus : (°F - 32) * 4/9
    fahrenheit_to_reamur = (farenheit - 32) * 4/9;


    % Index Array  : [Celcius, Kelvin, Reamur]
    result = [fahrenheit_to_celcius, fahrenheit_to_kelvin, fahrenheit_to_reamur];
    

end

