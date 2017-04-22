function [ L, U ] = f_gauss_doolittle( A )
    [ null, N ] = size( A );
    
    for kk = 1:1:N
        L( kk, kk ) = 1;
        
        for jj = kk:1:N
            sum = 0;

            for ss = 1:1:kk-1
                sum = sum + L( kk, ss ) * U( ss, jj );
            endfor

            U( kk, jj ) = A( kk, jj ) - sum;
            sum = 0;
        endfor

        for ii = kk+1:1:N
            sum = 0;

            for ss = 1:1:kk-1
                sum = sum + L( ii, ss ) * U( ss, kk );
            endfor

            L( ii, kk ) = ( A( ii, kk ) - sum ) / U( kk, kk );
            sum = 0;
        endfor
    endfor
endfunction