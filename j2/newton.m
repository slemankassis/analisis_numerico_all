function [hx,hf]=rnewton(funn,x0,e,M)
global a
hx=[];
hf=[];
[f,df]=funn(x0);

if abs(f)<e
	hx=[hx,x0];
	hf=[hf,f];
	return;
end

for k=1:M
	x1=x0-(f/df);
	[f,df]=funn(x1);
	hx=[hx,x1];
	hf=[hf,f];
	
	if (abs(f)<e || abs((x1-x0)/x1)<e)
		return;
	else
		x0=x1;
	end
end

% funn debe ser una función derivable de R a R2 que dado x siempre retorna funn(x) y funn'(x)
% por ejemplo [f(x),f'(x)]=funn(x)

%[v1,v2]=feval(funn,x0); %funn debe dar siempre dos argumentos de salida, pero por ejemplo la función 
%fp2ej5 otorga sólo uno pues necesito introducir p=[1,1] para que me dé fp2ej5(x1) y fp2ej5'(x1).
%Para que este algoritmo funcione con esta función en particular, esta línea debe ser [v1,v2]=feval(funn,x0,[1,1]). 
%Sin embargo dejé el algoritmo así para no perder generalidad.

%[v1,v2]=feval(funn,x1); %Al igual que antes debo cambiar por [v1,v2]=feval(funn,x1,[1,1]) para la función fp2ej5 en particular.