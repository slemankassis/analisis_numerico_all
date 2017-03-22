function S=intenumcomp(fun,a,b,N,regla)

if strcmp(regla,"pm")
	if (mod(N+1,2) == 1)
		h=(b-a)/(N+2);

		p=0;
		for i=1:N/2+1
			p=p+fun(a+(2*i-1)*h);
		end

		S=2*h*p;
	else
		disp("no definido para n impar");
	end

elseif strcmp(regla,"trapecio")
	h=(b-a)/N;

	p=0;
	for i=1:N-1
		p=p+fun(a+i*h);
	end

	S=h/2*(fun(a)+2*p+fun(b));

elseif strcmp(regla,"simpson")
	if (mod(N+1,2) == 1)
		h=(b-a)/N;

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
		disp("no definido para n impar");
	end
else
	disp("regla erronea");
end