function w=ilagrange(x,y,z)

w=[];
p=0;

for i=1:length(z)
	for j=1:length(x)
		l=1;
		for k=1:length(x)
			if j~=k
				l=l* (z(i)-x(k)) / (x(j)-x(k));
			end
		end
		p=p+ l* y(j);		
	end
	w=[w,p];
end

% Evalúa el polinomio interpolante de lagrange en el vector z
% Donde x,y cumple p(x)=y