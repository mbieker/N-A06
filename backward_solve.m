%backward_solve.m
%Diese Funktion loesst das LGS Rx=z und liefert damit die entgueltige Loesung
%des LGS Ax=b

function x = backward_solve(LU, z)
	[m,n] = size(LU);
	x = zeros(n,1);
	if n ~= m
		printf('Fehler LU ist nicht quadratisch!')
	end
	%Rueckwerts einsetzen von n bis 1
	for i = n:-1:1
		%Hier muss am Ende durch das Diagonalelement geteilt werden
		%da die Elemente der R-Matrix dort nicht zwingend 1 sind.
		x(i) = (z(i) - LU(i,i+1:n)*x(i+1:n))/LU(i,i);
	end
end 
