

x = linspace(0, 10, 20); //%%te separa el intervalo en 50 puntos equidistantes 

for i=1:20
	y(i)=3/4.*x(i)-1/2;
	a=randn(1,20); // rand(x) te da un numero cuqluiera, azar. en este caso el a es un vector fila de 20 numeros azarosos
zi=yi+a;

p=polyfit(xi,zi,1); // te da el polinomio de grado 1 en este caso que aproxima con el metodo de cuadrados minimos a tus xi, zi.
x=0:0.5:10;
w=polyval(p,x); //evalua el polinmomio p en los valores x.

plot(xi,w)
