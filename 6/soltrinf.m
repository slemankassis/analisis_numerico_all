function x=soltrinf(A,b)

for i=1:length(b)
	if A(i,i)==0
		disp("A es singular");
		clear x;
		return;
	else

		p=0;
		for j=1:i-1
			p=p+ A(i,j)*x(j);
		end

		x(i)=(b(i)-p) / A(i,i);
	end
end

%Resuelve el sistema Ax=b, donde A es triangular inferior