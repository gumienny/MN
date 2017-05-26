function [ OUT ] = f_monte_carlo( f, xp, xk, n )  
    h = ( xk - xp ) / n;

    OUT = 0;

    for kk = 1:n 
        xi = rand( 1 ) * ( xk - xp ) + xp;

        yi = eval( [ f '(xi)' ] );

        OUT = OUT + yi * h;
    end 
end
