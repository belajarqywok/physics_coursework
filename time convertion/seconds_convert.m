function count = seconds_convert (hours, minutes, seconds, miliseconds)


    hours_to_seconds = hours * (60^2);
    minutes_to_seconds = minutes * 60;
    miliseconds_to_seconds = miliseconds /(10^3);
    
    count = seconds + hours_to_seconds + minutes_to_seconds + miliseconds_to_seconds;
    

end

