clc;
clear;
close all;
pkg load symbolic

% Penyelesaian Soal: Menghitung galat sin(1) dengan Deret Taylor
x = 1;
N_array = [1, 2, 3, 4, 5];

% Perhitungan nilai eksak sin(x)
eksak = sin(x);
fprintf('Nilai Eksak sin(1) \t= %5.15f\n\n', eksak);

% Perulangan untuk mengevaluasi setiap nilai N
for j = 1:length(N_array)
    N_val = N_array(j);
    hampiran = 0;

    % Perhitungan deret Taylor untuk n = 0 sampai N_val
    for n = 0:N_val
        suku_ke_n = ((-1)^n) * (x^(2*n + 1)) / factorial(2*n + 1);
        hampiran = hampiran + suku_ke_n;
    end

    % Menghitung galat mutlak
    galat = abs(eksak - hampiran);

    % Menampilkan hasil baris per baris
    fprintf(' %d | %25.15f | %15.15f\n', N_val, hampiran, galat);
end


















