clc

% Form Input Illustration
jam = 1;
menit = 60;
detik = 3600;
milisekon = 3600000;

% Hours Convert
hours_convert_test = hours_convert (jam, menit, detik, milisekon);
fprintf('Hours Convert : %f Jam / Hours \n', hours_convert_test);

% Minutes Convert
minutes_convert_test = minutes_convert (jam, menit, detik, milisekon);
fprintf('Minutes Convert : %f Menit / Minutes \n', minutes_convert_test);

% Seconds Convert
seconds_convert_test = seconds_convert (jam, menit, detik, milisekon);
fprintf('Seconds Convert : %f Detik / Seconds \n', seconds_convert_test);

% Miliseconds Convert
miliseconds_convert_test = miliseconds_convert (jam, menit, detik, milisekon);
fprintf('Miliseconds Convert : %f Milisekon / Miliseconds \n', miliseconds_convert_test);

% NaN Preventive
value = NaN;
fprintf('NaN Prevent : %f\n', nan_prevent(value));
