function [x,k]=jacobi(A,b,e,N)

D=diag(diag(A));
L=tril(A)-D;
U=triu(A)-D;

M=D;
N=-L-U;

invM=diag(1./diag(A));

x=ones(length(b),1);
y=(invM*N)*x+invM*b;


k=1;
while k<N
	if (max(abs(x-y))<e)
	  	return;
	else
	  	x=y;
	  	y=(invM*N)*x+invM*b;
	end
	k=k+1;
end