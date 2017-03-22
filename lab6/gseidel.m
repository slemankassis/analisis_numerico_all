function [x,k]=gseidel(A,b,x0,e,m)

N=A-diag(diag(A));

k=1;
while k<m
	for i=1:length(b)
		c=0;
		for j=1:i-1
			c=c+N(i,j)*x(j);
		end
		for j=i+1:length(b)
			c=c+N(i,j)*x0(j);
		end
		x(i,1)=(b(i)-c)/A(i,i);
	end
	if (norm(x-x0,inf)<e)
		return;
	end
	k=k+1;
	x0=x;
end
x=x0;
disp("Se alcanzó el máximo de iteraciones");