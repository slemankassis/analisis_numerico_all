function x=ej4(a)
global b
b=a; 
[hx,hf]=rnewton(@fun_ej4,2,1e-6,1000);
x=hx(end);

%llamar a la global con otro nombre