function x=soleg(A,b)

[U,y]=egauss(A,b);
x=soltrsup(U,y);

% Resuelve el sistema Ax=b usando eliminación gaussiana