function x = soleg(A,b)
[B,c] = egauss(A,b);
x = soltrsup(B,c);


end
