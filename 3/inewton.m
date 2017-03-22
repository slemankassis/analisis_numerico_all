function w=inewton(x,y,z)

w=[];
c=[y(1)];

for j=1:length(x)-1 %calcula coeficientes con diferencias divididas
	n=[];

	for i=1:length(y)-1
		n(i)=(y(i+1)-y(i)) / (x(i+j)-x(i));
	end

	c=[c,n(1)];
	y=n;
end

for i=1:length(z) %arma polinomio de newton y va valuando z
	p=c(1);

	for j=1:(length(x)-1)
		l=1;
		for k=1:j
			l=l* (z(i)-x(k));
		end
		p=p+ l* c(j+1);
	end

	w=[w,p];
end

% Evalúa el polinomio interpolante de Newton en el vector z
% Donde y cumple p(x)=y