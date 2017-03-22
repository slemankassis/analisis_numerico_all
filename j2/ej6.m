function [xN,N]=ej6(fun,x0,e,m)

% Me dice el último valor generado por el método de Punto Fijo
% y cuántas iteraciones se hicieron
% y hace un gráfico donde aparecen la recta identidad, la función y la poligonal generada por la sucesión de puntos del método.

[hx]=puntofijo(fun,x0,e,m);
N=length(hx);
xN=hx(N);

close
hold on
plot(x0,hx(1),"b")

for i=1:(N-1)
	
    plot(hx(i),hx(i),"b")
    plot(hx(i),hx(i+1),"b")
endfor

plot(hx(N),hx(N),"b")
x=[0.5:0.1:3];
plot(x,x,"r")
plot(x,fun(x),"g")

end
