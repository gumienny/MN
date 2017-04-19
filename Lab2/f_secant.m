function [xn2, yn2, OUT] = f_secant(fun, xn0, xn1, M, tol)
    % Obliczenie wartosci funkcji na krancach przedzialu
    yn0 = eval([fun '(xn0)']) ; % <=> fun(xn0) ;
    yn1 = eval([fun '(xn1)']) ; % <=> fun(xn1) ;

    % Sprawdzenie czy funkcja ma rozne znaki na krancach przedzialu poczatkowego
    if (sign(yn0) == sign(yn1)) % if ( ya * yb >0)
        error('Funkcja nie ma roznych znakow na koncach przedzialu.')
    endif

    disp('Krok    xn0    xn1    xn2    yn2    blad') ;

    for ii=1:1:M
        % Obliczenie kolejnego przyblizenia pierwiastka
        xn2 = xn1 - (xn1-xn0)/(yn1-yn0)*yn1;
    
        % Obliczenie wartosci funkcji dla ii-tego przyblizenia pierwiastka
        yn2 = eval([fun '(xn2)']);
      
        xn0 = xn1; yn0 = yn1;
        xn1 = xn2; yn1 = yn2;
        
        blad = (xn1-xn0)/2 ;
        
        % Wyswietlenie informacji dotyczacych ii-tej iteracji
        out = [ii xn0 xn1 xn2 yn2 blad]; 
        disp(out);
        OUT(ii,:) = out;
    
        % Sprawdzenie zbieznosci metody
        if (abs(yn2) < tol)
            disp(['Metoda siecznych zbie¿na po ' num2str(ii) 'krokach.'])
        break ;
        endif

        if (ii >= M)
            disp('Nie odnaleziono zera funkcji z zadana dokladnoscia.')
        endif 
    endfor
endfunction