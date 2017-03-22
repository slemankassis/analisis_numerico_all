function x=soleg(A,b)

U=egauss(A,b);
x=soltrsup(U,b);
end
