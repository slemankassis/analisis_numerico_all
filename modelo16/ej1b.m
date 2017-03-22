n=5;
T=diag(-ones(n-1,1),1)+diag(-ones(n-1,1),-1);
A=kron(eye(n),T+4*eye(n))+kron(T,eye(n));
b=ones(length(A),1);

disp("sor");
[x,k]=sor(A,b,1.4,10e-7,100) %k=17

disp("gseidel");
[x,k]=gseidel(A,b,10e-7,100) %k=48