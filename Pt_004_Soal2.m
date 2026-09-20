clc;
clear;
close all;
pkg load symbolic

% Penyelesaian Soal 2: Menghitung galat deret harmonik (1/1 + 1/2 + ... + 1/20)
% a. Perhitungan secara eksak
eksak = 0;
for i = 1:20
    eksak = eksak + (1/i);
end
fprintf('--- Analisis Galat Deret Harmonik ---\n');
fprintf('a. Nilai Eksak (Referensi) \t\t= %5.15f\n', eksak);

% b. Masing-masing pembagian dibulatkan
pembulatan = 0;
for i = 1:20
    pembagian_dibulatkan = round((1/i) * 1000) / 1000;
    pembulatan = pembulatan + pembagian_dibulatkan;
end
galat_b = abs(eksak - pembulatan);
fprintf('b. Nilai Pembulatan (3 desimal) \t= %5.15f\n', pembulatan);
fprintf('   -> Galat Poin B \t\t\t= %5.15f\n', galat_b);

% c. Tanpa looping (menggunakan fungsi sum)
vektor_i = 1:20;
hasil_sum = sum(1 ./ vektor_i);
galat_c = abs(eksak - hasil_sum);
fprintf('c. Nilai Tanpa Looping (sum) \t\t= %5.15f\n', hasil_sum);
fprintf('   -> Galat Poin C \t\t\t= %5.15f\n', galat_c);
