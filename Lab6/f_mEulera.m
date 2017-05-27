function y = f_mEulera( fn, x, y0 )
    n = length( x );

    y = zeros( 1, n );

    y( 1 ) = y0;

    for ii = 1:( n - 1 )
        f = eval( [ fn '( x( ii ), y( ii ) )' ] );
        y( ii + 1 ) = y( ii ) + f * ( x( ii + 1 ) - x( ii ) );
    end
end
