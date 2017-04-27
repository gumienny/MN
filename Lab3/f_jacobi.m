function [ xx, kk ] = f_jacobi( A, b, k_max, tol )
    n = size( A )(1);
    kk = 0;

    C = zeros( n, 1 );
    D = zeros( n );
    
    for ii = 1:n
        C( ii, 1 ) = b( ii, 1 ) / A( ii, ii );

        for jj = 1:n
            if ( ii != jj )
                D( ii, jj ) = -1 * A( ii, jj ) / A( ii, ii );
            end
        end
    end
    
    xx = C + D*C;
    
    while ( sum( abs( xx - ( C + D * xx ) ) ) > tol && k_max-- > 0 )
        kk++;
        xx = C + D * xx;
    end 
end