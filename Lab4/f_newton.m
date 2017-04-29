function [ y ] = f_newton( x0, y0, x )
    n = size( x0, 2 ) - 1;
    D = [ y0.', zeros( n + 1, n ) ];

    for i = 2:n+1
        for j = 2:i
            D( i, j ) = ( D( i, j - 1 ) - D( i - 1, j - 1 ) ) / ( x0( i ) - x0( i - j + 1 ) );
        end
    end

    P = D( 1, 1 );
    W = 1;

    for i = 2:n+1
        W = W .* ( x - x0( i - 1 ) );
        P = P + D( i, i ) .* W;
    end

    y = P;
end
