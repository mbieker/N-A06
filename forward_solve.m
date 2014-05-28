%Diese Funktion soll das LGS Lz= b loesen. Uebergeben wird
%die LR-Zerlegung einer Matrix und die rechte Seite b.
function z = forward_solve(LU, b)
	[m,n] = size(LU);
	z = zeros(n,1);
	if n ~= m
		printf('Fehler LU ist nicht quadratisch!')
	end
	for i = 1:n
		%Hier muss nicht am Ende durch das Diagonalelement geteilt 
		%werden,da die Elemente der R-Matrix dort immer  1 sind.
		z(i) = b(i)-LU(i,1:i-1)*z(1:i-1);
	end
end
