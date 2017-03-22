function [f df] = fun_ej4(x)
f = x^3-27 ;
df = 3*x^2 ;  %%no deberia compilar por que el archivo se llama fun2.m pero la funcion fun_ej4, correcion agregada dos meses despues de hacer este archivo
end
