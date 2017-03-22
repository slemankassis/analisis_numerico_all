function [x]=sollu(A,b)

[L,U]=lu(A);

y=soltrinf(L,b);
x=soltrsup(U,y);

end
