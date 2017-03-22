function y=u2(x)

% Grafica la función del ejercicio 7 del práctico
% usando el método de Newton
% y la función auxiliar fej7u2
global x0
y=[];

for i=1:length(x)
	x0=x(i);
	[hx,hf]=newton('fej7u2',3,1e-8,100);
	n=length(hx);
	y=[y,hx(n)];
endfor

plot(x,y,"k")

end


