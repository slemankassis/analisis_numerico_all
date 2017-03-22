function y=u1(x)

% Grafica la función del ejercicio 7 del práctico
% usando el método de bisección
% y la función auxiliar fej7u1
global x0
y=[];

for i=1:length(x)
	x0=x(i);
	[hx,hf]=bisec('fej7u1',[-1,11],1e-5,100);
	n=length(hx);
	y=[y,hx(n)];
endfor

endfunction
