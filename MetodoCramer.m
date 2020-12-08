input('Metodo Cramer');
N=input('Digita el numero de variables para tu sistema de ecuaciones ');
fprintf('Tu sistema de ecuaciones sera de %d por %d',N,N);
fprintf('\n');

for F=1:N
    for C=1:N
        fprintf('Inserte valor de la fila %d columna %d : ',F,C);
        fprintf('\n');
        A(F,C)=input('\n');
    end 
end

fprintf('Tu matiz es la sgte \n');
disp(A);

fprintf('Ahora ingresa tu vector solucion\n');
for C=1:N
    fprintf('Inserta el valor 1,%d ',C);
    B(1,C)=input('\');
end

fprintf('Este es tu vector solucion');
disp(B');

deterA=det(A);
disp(deterA);
P=A;
B=B';
cont;
for cont=1:size(B)
    [fA,cA]=size(A);
    for i=1:fA
        for j=1:fA
            P(i,j)=A(i,j);
        end
    end
    deterMom=0;
    for j=1:size(B)
        P(j,cont)=B(j);
    end
    deterMom=det(P);
    disp(deterMom);
    valueVar=deterMom/deterA;
    rpta=['El valor de la variable es ', num2str(valueVar)];
    disp(rpta);
    fprintf('El valor para X%1.0f es %6.5f',cont,valueVar);
end

