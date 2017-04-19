function [c, yc, OUT] = f_bisect(fun, a, b, k_max, tol)
    % Obliczenie wartosci funkcji na krancach przedzialu
    ya = eval([fun '(a)']) ; % <=> fun(a) ;
    yb = eval([fun '(b)']) ; % <=> fun(b) ;
    
    % Sprawdzenie czy funkcja ma rozne znaki na krancach przedzialu poczatkowego
    if (sign(ya) == sign(yb)) % if (ya*yb>0)
        error('Funkcja nie ma roznych znakow na koncach przedzialu.')
    endif
    
    disp('Krok      a    b    c     yc  blad') ;
    
    for ii=1:1:k_max
        % Obliczenie kolejnego przyblizenia pierwiastka
        c = (a+b)/2;
    
        % Obliczenie wartosci funkcji dla ii-tego przyblizenia pierwiastka
        yc = eval([fun '(c)']) ; % fun1(c) ;
        
        blad = (b-a)/2 ;
        
        % Wyswietlenie informacji dotyczacych ii-tej iteracji
        out = [ii a b c yc blad]; 
        disp(out);
        OUT(ii,:) = out ;
        
        % Sprawdzenie zbieznosci metody
        if ( abs(yc) < tol )
            disp( ['Metoda bisekcji zbiezna po ' num2str(ii) 'krokach.'] )
            break ;
        endif
                
        % Wyznaczenie granic przedzialu dla kolejnej iteracji
        if ( sign(ya) == sign(yc) )
            a = c ;     ya = yc ;
        else
            b = c ;   yb = yc ; 
        endif

        % Wyswietlenie komunikatu w przypadku gdy przyblizenia z zadana dokladnoscia
        % nie odnaleziono w zadanej maksymalnej liczbie iteracji
        if (ii >= k_max)
            disp('Nie odnaleziono zera funkcji z zadana dokladnoscia.')
        endif
    endfor
endfunction