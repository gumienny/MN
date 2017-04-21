more off;
clc;

% 1.
A = [ 3, 1, -1; -1, 5, -1; 2, 4, 8 ];
b = [ 6; 10; 2 ];

% 2.
x = A \ b

% 3., 4.
% A - kwadratowa macierz wsp�czynnik�w
% b - wektor wyraz�w wolnych
% x - wektor szukanych (rozwi�zanie URL)
% Ur - macierz rozszerzona uk�adu przekszta�cona do macierzy tr�jk�tnej g�rnej
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
% A - kwadratowa macierz wsp�czynnik�w
% b - wektor wyraz�w wolnych
% k_max - maksymalna ilo�� iteracji
% tol - ��dana dok�adno�� rozwi�zania
% xx - wektor szukanych (rozwi�zanie URL)
% kk - numer iteracji, na kt�rej zako�czono obliczenia
[ xx, kk ] = f_jacobi( A, b, k_max, tol )

% 10.
% A - kwadratowa macierz wsp�czynnik�w
% b - wektor wyraz�w wolnych
% x - wektor szukanych (rozwi�zanie URL)
[ x ] = f_gauss_jordan( A, b )