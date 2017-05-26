function [ OUT ] = f_trapI( f, xp, xk, n )
    h = ( xk - xp ) / n;

    xi = linspace( xp, xk, n + 1 );

    yi = eval( [ f '(xi)' ]);

    OUT = 0;

    for ii = 1:n
	    OUT = OUT + ( yi( ii ) + yi( ii + 1 ) ) * h / 2;
    end
end
