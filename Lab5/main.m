more off;
clc;

xp = -1;
xk = 1;
n = 3;

delta =  0.001;

x = [ xp:0.01:xk ];
y = f1( x );
plot( x, y, 'r' )

Q = quad( 'f1', xp, xk, delta ) 
Q1 = quadl( 'f1', xp, xk, delta ) 
TRAPZ = trapz( x,y ) 	

[ OUT ] = f_rectI( 'f1', xp, xk, 10 )
[ OUT2 ] = f_trapI( 'f1', xp, xk, 10 )
[ OUT3 ] = f_monte_carlo( 'f1', xp, xk, 10 )
