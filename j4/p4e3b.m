load datos3b.mat

% Tengo un modelo y= x/(A*x+B). Linealizo el modelo: 1/y=(A*x+B)/x=A+B*(1/x)
% Luego los datos 1/xi y 1/yi están relacionados linealmente, y A y B son los coeficientes de la aproximación lineal usando esos datos

for i=2:length(xd)
	x(i)=1/xd(i);
endfor

for j=2:length(yd)
	y(i)=1/yd(i);
endfor

% Uso sólo los lugares no nulos de xd (es decir todos menos el primero, que es 0) y sus correspondientes en yd

[A,B]=aproxlin(x,y)
