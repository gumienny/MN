function [ y ] = f_lagrange( x0, y0, x )
    y = zeros( size( x ) );

    for i = 1:length( x0 )
        L = 1;
        for j = [ 1:( i-1 ), ( i+1 ):length( x0 ) ]
            L = L .* ( x - x0( j ) ) / ( x0( i ) - x0( j ) );
        end

        y = y + y0( i ) * L;
    end
end
