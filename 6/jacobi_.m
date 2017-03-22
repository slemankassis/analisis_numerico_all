function [x,k]=jacobi_(A,b,e,m)

N=A-diag(diag(A));
x0=zeros(1,length(b)); %si A es DDE entonces converge para todo x0

k=0;
while k<m
	for i=1:length(b)
		x(i,1)=(b(i) - sum(N(i,:)*x0(:))) / A(i,i);
	end

	if (norm(x-x0(:,end),inf)<e)
		return;
	end

	k=k+1;
	x0=x;
end

x=x0;
disp("Se alcanzó el máximo de iteraciones");