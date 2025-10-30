% CSV dosyasını oku
data = readtable('angularposition.csv', 'Delimiter', ',', 'ReadVariableNames', false);

% Zaman ve açısal pozisyon verilerini ayır
clock_data = string(data.Var1); % İlk sütunu metin formatına çevir
angular_position = data.Var2; % İkinci sütun: Açısal pozisyon

% Zaman verisini parçalara ayır (Saat, Dakika, Saniye.Milisaniye)
time_parts = split(clock_data, ':');
hours = str2double(time_parts(:,1));   % Saat
minutes = str2double(time_parts(:,2)); % Dakika
seconds = str2double(time_parts(:,3)); % Saniye.Milisaniye

% Toplam zamanı saniye cinsinden hesapla
total_seconds = hours * 3600 + minutes * 60 + seconds;

% İlk zaman değerini 0'a eşitle, kalanları ona göre ayarla
time_vector = total_seconds - total_seconds(1);

% Sabit örnekleme zamanı tanımla
Ts = 0.01; % Örnekleme zamanı (10 ms)
new_time_vector = 0:Ts:time_vector(end); % Sabit örnekleme zaman vektörü oluştur
final_time_vector = new_time_vector';

% Açısal pozisyonu sabit zaman aralığına yeniden örnekle (interpolasyon)
new_angular_position = interp1(time_vector, angular_position, new_time_vector, 'linear');
final_angular_position=transpose(new_angular_position);
% Sonuçları ekrana yazdır (Opsiyonel)
disp('New Time Vector (seconds):');
disp(new_time_vector);
disp('Resampled Angular Position Vector:');
disp(final_angular_position);


