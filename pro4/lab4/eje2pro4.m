

xi = linspace(0, 10, 20); //%%te separa el intervalo en 50 puntos equidistantes 

yi = 0.75.*xi - 0.5;
a=randn(1,20); // rand(x) te da un numero cuqluiera, azar. en este caso el a es un vector fila de 20 numeros azarosos
zi=yi+a;

p=polyfit(xi,zi,1); // te da el polinomio de grado 1 en este caso que aproxima con el metodo de cuadrados minimos a tus xi, zi.
x=0:0.5:10;
w=polyval(p,x); //evalua el polinmomio p en los valores x.

plot(xi,w)
