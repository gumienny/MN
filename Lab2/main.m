#{
 * Jakby się Octave wysypał: http://stackoverflow.com/questions/12032494/plot-window-not-responding
 * graphics_toolkit('gnuplot');
 * Dosyć długo trwa rysowanie wykresu :/
#}
graphics_toolkit('gnuplot');
more off;
clc ;
x = -3:0.1:3;

% zgrubne okreslenie polozenia miejsc zerowych
y = func( x );
plot(x, y, 'r' )
hold on
plot( [-3 3], [0 0], 'k' ) % os X
hold off

a = 1;
b = 2;
k_max = 30;
tol = 0.001;
disp('%%%%%%%%%%%%%%% METODA BISEKCJI');
[ c, yc, OUT ] = f_bisect( 'func', a, b, k_max, tol )
disp('%%%%%%%%%%%%%%% REGULA FALSI');
[ c, yc, OUT ] = f_rfalsi( 'func', a, b, k_max, tol )

xn0 = a;
xn1 = b;

disp('%%%%%%%%%%%%%%% METODA SIECZNYCH');
[xn2, yn2, OUT] = f_secant('func', xn0, xn1, k_max, tol)
disp('%%%%%%%%%%%%%%% METODA NEWTONA');
[xn1, yn1, OUT] = f_newton('func', 'dfunc', xn1, k_max, tol)
