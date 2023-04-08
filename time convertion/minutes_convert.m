% Engineer : Al-Fariqy Raihan Azhwar - 202143501514


% Untuk Melakukan konversi ke dalam bentuk menit.

function count = minutes_convert (hours, minutes, seconds, miliseconds)


    
    % Melakukan konversi dari jam ke menit.
    % Rumus : jam * 60
    hours_to_minutes = hours * 60;
    
    
    % Melakukan konversi dari detik ke menit.
    % Rumus : detik / 60
    seconds_to_minutes = seconds / 60;
    
    
    % Melakukan konversi dari milisekon ke menit
    % Rumus : milisekon / (6*10^4)
    miliseconds_to_minutes = miliseconds / (6*10^4);
    
    
    
    % Melakukan penjumlahan menit dan pengembalian nilai
    count = minutes + hours_to_minutes + seconds_to_minutes + miliseconds_to_minutes;

end

