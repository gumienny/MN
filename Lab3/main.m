more off;
clc;

% 1.
% A - kwadratowa macierz współczynników
% b - wektor wyrazów wolnych
A = [ 3, 1, -1; -1, 5, -1; 2, 4, 8 ];
b = [ 6; 10; 2 ];

% 2.
disp( 'A\b' )
x = ( A \ b ).'

% 3., 4.
% x - wektor szukanych (rozwiązanie URL)
% Ur - macierz rozszerzona układu przekształcona do macierzy trójkątnej górnej
disp( 'Metoda Gaussa:' )
[ x, Ur ] = f_gauss( A, b )

% 5.
disp( 'Rozklad LU - natywna funkcja:' );
[ L, U ] = lu( A )

% 6., 7.
disp( 'Rozklad LU - z zaimplementowanej metody Gaussa-Doolittlea:' )
[ L, U ] = f_gauss_doolittle( A )

% 8., 9.
% k_max - maksymalna ilość iteracji
% tol - żądana dokładność rozwiązania
% xx - wektor szukanych (rozwiązanie URL)
% kk - numer iteracji, na której zakończono obliczenia
k_max = 20;
tol = 0.0001;
disp( 'Metoda Jacobiego:' )
[ xx, kk ] = f_jacobi( A, b, k_max, tol )

% 10.
% x - wektor szukanych (rozwiązanie URL)
disp( 'Metoda Gaussa-Jordana:' )
[ x ] = f_gauss_jordan( A, b )
