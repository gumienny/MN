function [ y ] = f_aitken( x0, y0, x )
    n = size( x0, 2 );
    t = y0.';
    
    index = 1;

    for xx = x
        W = [ t, zeros( n, n - 1 ) ];

        for j = 2:n
            for i = j:n
                W( i, j ) = ( ( W( j - 1, j - 1 ) * ( x0( 1, i ) - xx ) ) - ( W( i, j - 1 ) * ( x0( 1, j - 1 ) - xx ) ) ) / ( x0( 1, i ) - x0( 1, j - 1 ) );
            end
        end

        y( 1, index ) = W( n, n );
        index = index + 1;
    end
end
