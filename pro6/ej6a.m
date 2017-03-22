A=[3,1,1;2,6,1;1,1,4];
b=[5;9;6];
xout=jacobi(A,b,10000,10e-11);
disp("jacobi");
disp(length(xout));
xout=gseidel(A,b,10000,10e-11);
disp("gseidel");
disp(length(xout));