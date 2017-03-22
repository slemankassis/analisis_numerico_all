n=3;
b1=[ones(n,1);zeros(n,1)];
b2=ones(2*n,1);
I=eye(n);
B=diag(4*ones(n,1))-diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
A=[B,-I;-I,B];

x1eg=soleg(A,b1)
x1lu=sollu(A,b1)
disp("Soluciones de Ax=b1 con los dos métodos");

x2eg=soleg(A,b2)
x2lu=sollu(A,b2)
disp("Soluciones de Ax=b2 con los dos métodos");