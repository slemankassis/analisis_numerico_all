function [hx hf] = rnewton(fun,x,e,m)
hx = [x] ; %las raices que va generando, osea las aproximaciones
hf = [] ; %el valor de la funcion evaluadas en dichas raices
[f df] = fun(x);
hf = [f] ;
k = 0;
 %fun te devuelve el valor de la funcion en x, y el valor de la derivada b de f en x.como hago para decirle que me devuelva uno u otro valor unicamente? asi.


g = 1;
while and(abs(f) >= e, k < m, abs(hx(end) - g)/abs(hx(end)) >= e)
g = hx(end);
[f df] = fun(hx(end));
if (f == 0)
    return
end
if (df == 0)
    disp(' Metodo no definido ')
    return
end
hx(end+1) = hx(end) - f/df;

k = k + 1;  %si ahora df se hace cero ?
end
hx(end) ;
end




