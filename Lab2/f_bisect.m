function [ c, yc, OUT ] = f_bisect( fun, a, b, k_max, tol )
    ya = eval( [fun '(a)'] );
    yb = eval( [fun '(b)'] );

    if ( sign( ya ) == sign( yb ) )
        error('Funkcja nie ma roznych znakow na koncach przedzialu.')
    endif
    
    disp('Krok      a    b    c     yc  blad') ;
    
    for ii=1:1:k_max
        c = ( a + b ) / 2;

        yc = eval( [fun '(c)'] );

        blad = ( b - a ) / 2;

        out = [ ii a b c yc blad ]; 
        disp( out );
        OUT( ii, : ) = out;

        if ( abs( yc ) < tol )
            disp( ['Metoda bisekcji zbiezna po ' num2str(ii) 'krokach.'] )
            break;
        endif

        if ( sign( ya ) == sign( yc ) )
            a = c;     
            ya = yc;
        else
            b = c;
            yb = yc; 
        endif

        if ( ii >= k_max )
            disp( 'Nie odnaleziono zera funkcji z zadana dokladnoscia.' )
        endif
    endfor
endfunction
