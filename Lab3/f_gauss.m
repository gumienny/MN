function [ x, Ur ] = f_gauss( A, b )
    Ur = [ A, b ];
    [ null, N ] = size( A );
    
    for kk = 1:1:N-1
        if ( A( kk, kk ) == 0 )
            error( 'na przekatnej jest zero lub wartosc bliska zeru' );
        endif
        for jj = kk+1:1:N+1
            for ii = kk+1:1:N
                Ur( ii, jj ) = Ur( ii, jj ) - ( Ur( ii, kk ) / Ur( kk, kk ) ) * Ur( kk, jj );
            endfor
        endfor
    endfor
    
    x = 0;
    
    for ii = N:-1:1
        S = 0;
        for jj = ii+1:1:N
            S = S + Ur( ii, jj ) * x( jj );
        endfor
        x( ii ) = ( Ur( ii, N+1 ) - S ) / Ur( ii, ii );
    endfor
endfunction