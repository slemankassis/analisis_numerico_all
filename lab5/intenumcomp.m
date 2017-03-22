function S=intenumcomp(fun,a,b,n,regla)

x=linspace(a,b,n);
h=(b-a)/(n-1);

%x=[a:h:b];
y=fun(x);

if a==b
	S=0;
	return;
end

switch regla
	case {"pm"}
		S=(2*h)*sum(y(2:2:n-1));
	case {"trapecio"}
		S=(h/2)*(y(1)+2*sum(y(2:n-1))+y(n));
	case {"simpson"}
	if(mod)
		S=(h/3)*(y(1)+2*sum(y(3:2:n-2))+4*sum(y(2:2:n-1))+y(n));
end

%n puntos
%n-1 intervalos