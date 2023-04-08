disp('------------- konversi celcius -------------');
celcius_value = 90;
fprintf('Celcius : %.2d\n\n', celcius_value);
result = celcius_convertion(celcius_value);
fprintf('Farenheit : %.2f\n', result(1));
fprintf('Kelvin : %.2f\n', result(2));
fprintf('Reamur : %.2f\n', result(3));
fprintf('\n');



disp('------------- konversi farenheit -------------');
farenheit_value = 110;
fprintf('Farenheit : %d\n\n', farenheit_value);
result = farenheit_convertion(farenheit_value);
fprintf('Celcius : %.2f\n', result(1));
fprintf('Kelvin  : %.2f\n', result(2));
fprintf('Reamur  : %.2f\n', result(3));
fprintf('\n');



disp('------------- konversi kelvin -------------');
kelvin_value = 70;
fprintf('Kelvin : %d\n\n', kelvin_value);
result = kelvin_convertion(kelvin_value);
fprintf('Celcius : %.2f\n', result(1));
fprintf('Reamur  : %.2f\n', result(2));
fprintf('Farenheit  : %.2f\n', result(3));
fprintf('\n');



disp('------------- konversi reamur -------------');
reamur_value = 70;
fprintf('Reamur : %d\n\n', reamur_value);
result = reamur_convertion(reamur_value);
fprintf('Celcius : %.2f\n', result(1));
fprintf('Kelvin  : %.2f\n', result(2));
fprintf('Farenheit  : %.2f\n', result(3));
fprintf('\n');