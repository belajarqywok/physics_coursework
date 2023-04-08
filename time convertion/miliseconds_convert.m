function count = miliseconds_convert (hours, minutes, seconds, miliseconds)
    
    % jam ke milisekon
    % formula : (jam * (60^2)) * (10^3)
    hours_to_miliseconds = (hours * (60^2)) * (10^3);
    minutes_to_miliseconds = (minutes * 60) * (10^3);
    seconds_to_miliseconds = seconds *(10^3);
    
    count = miliseconds + hours_to_miliseconds + minutes_to_miliseconds + seconds_to_miliseconds;


end

