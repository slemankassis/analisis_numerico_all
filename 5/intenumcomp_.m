function S=intenumcomp_(fun,a,b,N,regla)

if a==b
	S=0;
	return;
end

h=(b-a)/N;

if strcmp(regla,"pm")
	if mod(N,2) == 0
		
		p=0;
		for i=1:N/2
			p=p+fun(a+(2*i-1)*h);
		end

		S=(2*h)*p;
	else
		disp("no definido para n par");
	end

elseif strcmp(regla,"trapecio")

	p=0;
	for i=1:N-1
		p=p+fun(a+i*h);
	end

	S=h/2*(fun(a)+2*p+fun(b));

elseif strcmp(regla,"simpson")
	if mod(N,2) == 0

		p1=0;
		for i=1:2:(N-1)
			p1=p1+fun(a+i*h);
		end

		p2=0;
		for i=2:2:(N-1)
			p2=p2+fun(a+i*h);
		end

		S=h/3*(fun(a)+2*p2+4*p1+fun(b));
	else
		disp("no definido para n par");
	end
else
	disp("regla erronea");
end