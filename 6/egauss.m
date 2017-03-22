function [u,y]=egauss(A,b)

n=length(b);
    for k=1:n-1
	    if A(k,k)==0
	    u=[];
	    y=[];
	    return
    end
	for i=k+1:n
		m=A(i,k)/A(k,k);
		A(i,k)=0;
		for j=k+1:n
			A(i,j)=A(i,j)-m*A(k,j);
		end
		b(i)=b(i)-m*b(k);
	end
end
u=A;
y=b;