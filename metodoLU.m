function [L,U]=metodoLU (A,B)
[n,n]=size(A);
for k=1:n
    if abs(A(k, k)) < sqrt(eps)
        disp(['Pivote muy pequeño encontrado en la columna' int2str(k) '.']);
    end
    L(k,k)=1;
    for i=k+1:n
        L(i,k)=A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j)=A(i,j)-L(i,k)*A(k,j);
        end
    end
    for j=k:n
        U(k,j)=A(k,j);
    end   
end
    disp("L");
    disp(L);
    disp("U");
    disp(U);
    z=inv(L)*B;
    rpta=inv(U)*z;
    disp(rpta);
end
        