more off;
clc;

graphics_toolkit( 'gnuplot' );

% porównaj wyniki dla różnych wartości kroku; 0.01, 0.1, 0.5
krok = 0.1;

x = [0:krok:1];

% warunek początkowy
y0 = 1;

[ y ] = f_mEulera( 'dy_dx', x, y0 )

plot( x, y, 'r' )

% rozwiązanie ścisłe
hold on
plot( x, 1 ./ ( 1 + x ), 'g' )
hold off
