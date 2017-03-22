function [hx,hf]=rnewton(funn,x0,e,M)

[f,df]=funn(x0);
hx=[x0];
hf=[f];

if abs(f)<e
	return;
end

for k=1:M
	hx(end+1)=hx(end)-(f/df);
	[f,df]=funn(hx(end));
	hf(end+1)=f;
	
	if (abs(f)<e || abs((hx(end)-hx(end-1))/hx(end))<e)
		disp("raiz:");
		hx(end)
		return;
	end
end

disp("raiz:");
hx(end)

% funn debe ser una función derivable de R a R2 que dado x siempre retorna funn(x) y funn'(x)
% por ejemplo [f(x),f'(x)]=funn(x)

%[v1,v2]=feval(funn,x0); %funn debe dar siempre dos argumentos de salida, pero por ejemplo la función 
%fp2ej5 otorga sólo uno pues necesito introducir p=[1,1] para que me dé fp2ej5(x1) y fp2ej5'(x1).
%Para que este algoritmo funcione con esta función en particular, esta línea debe ser [v1,v2]=feval(funn,x0,[1,1]). 
%Sin embargo dejé el algoritmo así para no perder generalidad.

%[v1,v2]=feval(funn,x1); %Al igual que antes debo cambiar por [v1,v2]=feval(funn,x1,[1,1]) para la función fp2ej5 en particular.
% donde p=[1,0] calcula f
%       p=[0,1] calcula df
%       p=[1,1] calcula f y df