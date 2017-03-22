function S=intenumcomp(fun,a,b,n,regla)

h=(b-a)/n;
x=[a:h:b]; %usar uno u otro
%x=linspace(a,b,n+1);
y=fun(x);

if a==b
	S=0;
	return;
end

switch regla
	case {"pm"}
		if mod(n,2) == 0
			S=(2*h)*sum(y(2:2:n));
		else
			disp("no definido para cantidad de intervalos impar");
		end

	case {"trapecio"}
		S=(h/2)*(y(1)+2*sum(y(2:n))+y(n+1));

	case {"simpson"}
		if mod(n,2) == 0
			S=(h/3)*(y(1)+2*sum(y(3:2:n-1))+4*sum(y(2:2:n))+y(n+1));
		else
			disp("no definido para cantidad de intervalos impar");
		end
end

%n cantidad intervalos, n+1 cantidad de puntos
%pares; todos; impares, pares