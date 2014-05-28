%LU_test.m 
%Dieses Skript testet die Implemntierung der LR_Zerlegung mit 
%Zufalls-Matrizen und Vektoren unterschiedlicher Grosse.

%die Funktionen mit mehreren LGS verschiedener Groessen testen
for n =[3,4,10]

%Zufaellige Matrizen und Vektoren erzeugen 
A = rand(n);
b = rand(n,1);

%LR-Zerlegung erstellen

LU = LU_decompose(A);

%vorwaertseisetzen
z = forward_solve(LU,b);

%ruekwerts einsetzen

printf(['LR Zerlegung', '\n'])
x = backward_solve(LU,z)

%Zum Vergleich LSG direkt mit MATLAB loesen
printf(['Direkt mit MATLAB / Octave:', '\n'])
x_test = A\b
printf('######################\n')
end
