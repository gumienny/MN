function [ x ] = f_gauss_jordan( A, b )
    Ar = [ A, b ];
    N = size( Ar )(1);
    
    for kk = 1:N
        Ar( kk, : ) /= Ar( kk, kk );

        for ii = 1:N
            if ( ii != kk )
                Ar( ii, : ) = Ar( ii, : ) - Ar( ii, kk ) * Ar( kk, : );
            end
        end
    end
    
    x = Ar( :, N + 1 ).'; 
end
