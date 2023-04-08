function convertion_values = temperature_convertion ( get_temperature_data, user_choice )

    switch user_choice
    
        % celcius
        case 1
            celcius_conv = get_temperature_data;
            kelvin_conv = get_temperature_data + 273;
            reamur_conv = (4/5) * get_temperature_data;
            fahrenheit_conv = ((9/5) * get_temperature_data) + 32;
            

        % fahrenheit
        case 2
            celcius_conv = (5/9) * (get_temperature_data - 32);
            kelvin_conv = (get_temperature_data + 459.67) * 5/9;
            reamur_conv = (get_temperature_data - 32) * 4/9;
            fahrenheit_conv = get_temperature_data;

            
        % reamur
        case 3
            celcius_conv = (5/4) * get_temperature_data;
            kelvin_conv = (get_temperature_data * 5/4) + 273.15;
            reamur_conv = get_temperature_data;
            fahrenheit_conv = (get_temperature_data * (9/4)) + 32;

            
        % kelvin
        case 4
            celcius_conv = get_temperature_data - 273.15;
            kelvin_conv = get_temperature_data;
            reamur_conv = (get_temperature_data - 273.15) * (4/5);
            fahrenheit_conv = 1.8 * (get_temperature_data - 273.15) + 32;
            
    end;
    
    
    convertion_values  = [celcius_conv, kelvin_conv, reamur_conv, fahrenheit_conv];

end

