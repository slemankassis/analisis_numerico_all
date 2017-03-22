function y=u3(x)

% Grafica la función del ejercicio 7 del práctico
% usando el método de iteración de Punto Fijo
% y la función auxiliar fej7u1
global x0
y=[];

for i=1:length(x)
	x0=x(i);
	hx=puntofijo('fej7u3',0.19,1e-10,1000);
	n=length(hx);
	y=[y,hx(n)];
endfor

plot(x,y,"r")

end


