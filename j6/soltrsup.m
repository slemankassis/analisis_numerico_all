function x=soltrsup(A,b)

for i=length(b):-1:1
	if A(i,i)==0
		disp("A es singular");
		clear x;
		return;
	else

		p=0;
		for j=i+1:length(b)
			p=p+ A(i,j)*x(j);
		end

		x(i)=(b(i)-p) / A(i,i);
	end
end

%Resuelve el sistema Ax=b, donde A es triangular superior