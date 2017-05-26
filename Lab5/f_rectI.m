function [ OUT ] = f_rectI( f, xp, xk, n )
    h = ( xk - xp ) / n;

    xi = linspace( xp + 0.5 * h, xk - .5 * h, n );

    yi = eval( [ f '(xi)' ] );

    OUT = h * sum( yi );
end
