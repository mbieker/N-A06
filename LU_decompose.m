function LU = LU_decompose(A)

%Groesse der Matrix bestimmen

[m, n] = size(A);

if m ~= n
printf('Fehler!! A muss quadratisch sein.')
end

for i = [1:n-1]

% Zum Bestimmen der q-Werte wird die Aktuelle Alles unter der
%Aktuellen Spalte durch das Pivot-Element geteilt

q = A(i+1:n,i)/ A(i,i);

%Die Werte der i-ten Zeile werden mit q geichtet. Diese werden 
%danch von der unteren Ecke der Matrix abgezogen. 

A(i+1:n,i+1:n)= A(i+1:n,i+1:n)- q*A(i,i+1:n);
% Die Matrix L besteht aus den q-werten der einzelnen Schritte und 
%wird in der Unteren Ecke von A gespeichert
A(i+1:n,i)= q;
end
LU = A;
end
