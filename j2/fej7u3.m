function [m]=fej7u3(n)
%Es la función del ejercicio 7 pero considerando x0 fijo
global x0

m=exp(-(1-x0.*n).*(1-x0.*n));

end

