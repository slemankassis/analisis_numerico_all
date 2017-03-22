function [y1,y2]=fej7u2(n)
%Es la función del ejercicio 7 pero considerando x0 fijo
%Devuelve f(n) y f'(n)

global x0

y1=n-exp(-(1-x0.*n).*(1-x0.*n));

y2=1-2.*x0.*(1-x0.*n).*(exp(-(1-x0.*n).*(1-x0.*n)));

end
