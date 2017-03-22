function [U,y]=egauss(A,b)

for k=1:length(b)-1
	for i=k+1:length(b)
		if A(k,k)==0
			disp("A es singular");
			return;
		else
			for j=k+1:length(b)
				A(i,j)=A(i,j)- (A(i,k)/A(k,k)) *A(k,j);
			end
		end
		b(i)=b(i)- (A(i,k)/A(k,k)) *b(k);
	end
end
U=triu(A);
y=b;

% Implementa la eliminación gaussiana en el sistema Ax=b
% Para llegar al sistema Uy=b, donde U es triangular superior