clc;
clear;
close all;
pkg load symbolic

#======================================

#Menghitung nilai e^0.3
x = 0.3;
n_array = [0, 1, 2, 3, 4];

#Perhitungan nilai e^0.3 dengan cara eksak
eksak = exp(x);

#Perhitungan nilai e^0.3 dengan deret Taylor
for j = 1:length(n_array)
    n = n_array(j);
    p = 0;

    % Perhitungan deret Taylor sampai orde ke-n
    for i = 0:n
      p = p + (x^i/factorial(i));
    end

    % Menghitung galat (error)
    galat = abs(eksak - p);

    % Menampilkan hasil
    fprintf(' %d | %25.15f | %15.15f\n', n, p, galat);
end










