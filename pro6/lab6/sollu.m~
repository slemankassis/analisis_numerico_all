function x = sollu(A,b)

[L,U,P] = lu(A);
b = P*(b');
b = b';
y = soleg(L,b);
x = soleg(U,y); 


end
