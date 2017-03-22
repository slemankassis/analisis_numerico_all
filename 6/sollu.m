function x=sollu(A,b)

[L,U,P]=lu(A);
y=soltrinf(L,b*P);
x=soltrsup(U,y);