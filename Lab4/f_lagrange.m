function [ y ] = f_lagrange( x0, y0, x )
    n = size( x0, 2 );
    y = 0;

    for i = 1:n
        L( i, 1:size( x, 2 ) ) = 1;

        for j = 1:n
            if ( i ~= j )
                L( i, : ) = L( i, : ) .* ( x - x0( j ) ) / ( x0( i ) - x0( j ) );
            end
        end

        y = y + y0( i ) * L( i, : );
    end
end
