% Engineer : Al-Fariqy Raihan Azhwar - 202143501514


% Untuk Melakukan konversi ke dalam bentuk jam.

function count = hours_convert (hours, minutes, seconds, miliseconds)



    % Melakukan konversi dari menit ke jam.
    % Rumus : menit / 60
    minutes_to_hours = minutes / 60;
    
    
    % Melakukan konversi dari detik ke jam.
    % Rumus : detik / (36*10^2)
    seconds_to_hours = seconds / (36*10^2);
    
    
    % Melakukan konversi dari milisekon ke jam.
    % Rumus : milisekon / (36*10^5)
    miliseconds_to_hours = miliseconds / (36*10^5);
    
    
    
    % Melakukan penjumlahan jam dan mengembalikan nilai.
    count = hours + minutes_to_hours + seconds_to_hours + miliseconds_to_hours;
    
    
end

