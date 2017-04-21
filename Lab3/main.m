more off;
clc;

% 1.
A = [ 3, 1, -1; -1, 5, -1; 2, 4, 8 ];
b = [ 6; 10; 2 ];

% 2.
x = A \ b

% 3., 4.
% A - kwadratowa macierz wspó³czynników
% b - wektor wyrazów wolnych
% x - wektor szukanych (rozwi¹zanie URL)
% Ur - macierz rozszerzona uk³adu przekszta³cona do macierzy trójk¹tnej górnej
[ x, Ur ] = f_gauss( A, b )

% 5.
disp( 'Rozklad LU - natywna funkcja' );
[ L, U ] = lu( A )

% 6., 7.
disp( 'Rozklad LU - z zaimplementowanych metod' )
[ L, U ] = f_gauss_doolittle( A )

% 8., 9.
k_max = 10;
tol = 0.001;
% A - kwadratowa macierz wspó³czynników
% b - wektor wyrazów wolnych
% k_max - maksymalna iloœæ iteracji
% tol - ¿¹dana dok³adnoœæ rozwi¹zania
% xx - wektor szukanych (rozwi¹zanie URL)
% kk - numer iteracji, na której zakoñczono obliczenia
[ xx, kk ] = f_jacobi( A, b, k_max, tol )

% 10.
% A - kwadratowa macierz wspó³czynników
% b - wektor wyrazów wolnych
% x - wektor szukanych (rozwi¹zanie URL)
[ x ] = f_gauss_jordan( A, b )