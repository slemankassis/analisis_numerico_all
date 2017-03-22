function S=intenumcomp_(fun,a,b,N,regla)

x=linspace(a,b,N);

if strcmp(regla,"pm")
	if (mod(N+1,2) == 1)
		S=2*h*sum(fun(x(2*(1:(n-1)/2))));
	else
		disp("no definido para n par");
	end

elseif strcmp(regla,"trapecio")
	S=h/2*(fun(x(1))+2*sum(fun(x(2:n-1)))+fun(x(n)));

elseif strcmp(regla,"simpson")
	if (mod(N+1,2) == 1)
		S=h/3*(fun(x(1))+2*sum(fun(x(2*(2:(n-1)/2)-1)))+4*sum(fun(x(2*(1:(n-1)/2))))+fun(x(n)));
	else
		disp("no definido para n par");
	end
else
	disp("regla erronea");
end