function [xk, yk, OUT] = f_newton(fun, dfun, xn1, M, tol)
    % Obliczenie wartosci funkcji na krancach przedzialu
    yn1 = eval([fun '(xn1)']) ; % <=> fun(xn1) ;

    disp('Krok    xn1    xn2    yn2    blad') ;

    for ii=1:1:M
        % Obliczenie kolejnego przyblizenia pierwiastka
        xn2 = xn1 - yn1/eval([ dfun '(xn1)' ]);
        yn2 = eval( [ fun '(xn2)' ] );
        
        blad = (xn2-xn1)/2 ;
        
        % Wyswietlenie informacji dotyczacych ii-tej iteracji
        out = [ii xn1 xn2 yn2 blad]; 
        disp(out);
        OUT(ii,:) = out;
      
        xn1 = xn2;
        yn1 = yn2;

        % Sprawdzenie zbieznosci metody
        if (abs(yn2) < tol)
            yk = yn2;
            xk = xn2;
            disp(['Metoda Newtona zbiezna po ' num2str(ii) 'krokach.'])
            break;
        endif
    
        if (ii >= M)
            disp('Nie odnaleziono zera funkcji z zadana dokladnoscia.')
        endif
    endfor
endfunction