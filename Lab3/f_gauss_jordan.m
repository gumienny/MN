function [ x ] = f_gauss_jordan( A, b )
	Ar = [ A, b ];
	[ N, null ] = size( Ar );

	for kk = 1:1:N
		Ar(kk,:) /= Ar(kk,kk);

		for ii = 1:1:N
			if ( ii != kk )
				Ar(ii,:) = Ar(ii,:) - Ar(ii,kk)*Ar(kk,:);
			endif
		endfor
	endfor

	x = Ar( :, N + 1)'; 
endfunction
