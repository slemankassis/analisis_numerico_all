load datos3a.mat

% Tengo un modelo y=C*x^A. Linealizo el modelo: ln y=ln(C*x^A)=ln C + A*ln x
% Como tengo los datos xi e yi, sé que los datos ln yi y los datos ln xi están relacionados linealmente, por unos coeficientes a0 y a1 tales que ln yi=a0+a1*ln xi
% Calculo a0 y a1 por el mètodo de cuadrados mínimos, y luego a1=A y ln C=a0, es decir C=e^a0

x=log(xd);
y=log(yd);

[a0,a1]=aproxlin(x,y);
A=a1
C=exp(a0)
