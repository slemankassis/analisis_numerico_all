function S=fun_ej5

global x
for x<abs(1)
 S=intenumcomp(@fun_ej4,0,pi/2,100,'simpson');
else
 S=inf
end
plot(x,S)
