A=[3,1,1;2,6,1;1,1,4];
b=[5;9;6];

disp("1:");

[x,k]=jacobi(A,b,10e-11,1000);
disp("iteraciones jacobi");
disp(k);

[x,k]=gseidel(A,b,10e-11,1000);
disp("iteraciones gseidel");
disp(k);

A=[5,7,6,5;7,10,8,7;6,8,10,9;5,7,9,10];
b=[23;32;33;31];

disp("2:");

[x,k]=jacobi(A,b,10e-4,1000);
disp("iteraciones jacobi");
disp(k);

[x,k]=gseidel(A,b,10e-4,1000);
disp("iteraciones gseidel");
disp(k);