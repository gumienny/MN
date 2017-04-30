graphics_toolkit( 'gnuplot' );

% 1.
% x0, y0 - wspołrzędne punktów
% x - wektor argumentów, dla którego funkcja będzie poszukiwać rozwiązań
x0 = [1 2 4 6 8 10]
y0 = [6 6 4 2 0 0]
x = -2:0.05:12;
n = size( x0, 2 ) - 1;

% 2.
plot( x0, y0, 'k*', 'markersize', 10 )

% 3.
% aproksymacja wielomianem n - 1 stopnia
w4 = polyfit( x0, y0, n - 1 );
f4 = polyval( w4, x );
hold on
plot( x, f4, 'r' )
hold off

% aproksymacja wielomianem n stopnia
w5 = polyfit( x0, y0, n );
f5 = polyval( w5, x );
hold on
plot( x, f5, 'g' )
hold off

% aproksymacja wielomianem n + 1 stopnia
w6 = polyfit( x0, y0, n + 1 );
f6 = polyval( w6, x );
hold on
plot( x, f6, 'b' )
hold off

% 4., 5.
% y - wektor wartości wielomianu dla wektora x
y = f_lagrange( x0, y0, x )
hold on
plot( x, y, 'k' )
hold off

% 6., 7.
y = f_newton( x0, y0, x )
hold on
plot( x, y, 'm' )
hold off

% 8., 9.
y = f_aitken( x0, y0, x );
hold on
plot( x, y, 'g' )
hold off

