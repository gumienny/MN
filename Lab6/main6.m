more off;
clc;

x = [-2:0.01:2];
y = x.^3;

dxdy = diff( y ) ./ diff( x );

plot( x, [ dxdy, 12 ], 'r' );
