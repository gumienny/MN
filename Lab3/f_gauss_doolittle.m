function [ L, U ] = f_gauss_doolittle( A )
    N = size( A )(1);
    
    for kk = 1:N
        L( kk, kk ) = 1;
        
        for jj = kk:N
            sum = 0;

            for ss = 1:kk-1
                sum = sum + L( kk, ss ) * U( ss, jj );
            end

            U( kk, jj ) = A( kk, jj ) - sum;
            sum = 0;
        end

        for ii = kk+1:N
            sum = 0;

            for ss = 1:kk-1
                sum = sum + L( ii, ss ) * U( ss, kk );
            end

            L( ii, kk ) = ( A( ii, kk ) - sum ) / U( kk, kk );
        end
    end
end