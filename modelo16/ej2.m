a=0;
b=1;
x=linspace(a,b,100);
plot(x,0.5*exp(x),x,sin(x+1));
% ir viendo a ojo con plot, probando varios intervalos y puntos

[hx,hf]=rbisec(@fun_ej2,[0,1],1e-6,100);
hx(end)