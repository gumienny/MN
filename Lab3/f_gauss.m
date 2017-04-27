function [ x, Ur ] = f_gauss( A, b )
    Ur = [ A, b ];
    N = size( A )(1);
    
    for kk = 1:1:N-1
        if ( A( kk, kk ) == 0 )
            error( '0 on the diagonal' );
        end

        for jj = kk+1:1:N+1
            for ii = kk+1:1:N
                Ur( ii, jj ) = Ur( ii, jj ) - ( Ur( ii, kk ) / Ur( kk, kk ) ) * Ur( kk, jj );
            end
        end
    end
    
    x = 0;
    
    for ii = N:-1:1
        S = 0;

        for jj = ii+1:1:N
            S = S + Ur( ii, jj ) * x( jj );
        end

        x( ii ) = ( Ur( ii, N+1 ) - S ) / Ur( ii, ii );
    end
end