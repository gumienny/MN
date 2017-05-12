%{  Projekt z Metod Numerycznych.

    50.Napisz skrypt realizujący rozwiązanie równania liniowego
    przy pomocy metody eliminacji Gaussa-Jordana.

	Równanie:
      .
     | 6x1 + 3x2 + 6x3 = 30
    <  2x1 + 3x2 + 3x3 = 17
     | 1x1 + 1x2 + 1x3 = 11
      `
%}

A = [ 6, 3, 6;
      2, 3, 3;
      1, 1, 1 ];

b = [ 30; 17; 11 ];

N = size( A )( 1 );

Ar = [ A, b ];

for ii = 1:N
	Ar( ii, : ) /= Ar( ii, ii );

	for jj = 1:N
		if ( jj ~= ii )
			Ar( jj, : ) -= Ar( jj, ii ) .* Ar( ii, : );
		end
	end
end

disp( 'Rozwiazanie metoda eliminacji Gaussa-Jordana:' )
x1 = Ar( 1, N + 1 )
x2 = Ar( 2, N + 1 )
x3 = Ar( 3, N + 1 )
