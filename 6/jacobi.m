function [x,k]=jacobi(A,b,e,m)

N=A-diag(diag(A));
x0=zeros(1,length(b)); %si A es DDE entonces converge para todo x0

k=0;
while k<m
	for i=1:length(b)
		c=0;
		for j=1:length(b)
			c=c+ N(i,j)*x0(j);
		end

		x(i,1)=(b(i)-c)/A(i,i);
	end

	if (norm(x-x0(:,end),inf)<e)
		return;
	end

	k=k+1;
	x0=x;
end

x=x0;
disp("Se alcanzó el máximo de iteraciones");

%conviene dejar los for cuando uso 2 indices porque i cambia cuando pasaron todos los j
%los 2 indices no van a la misma velocidad