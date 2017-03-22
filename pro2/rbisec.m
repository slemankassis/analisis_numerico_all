function [hx hf] = rbisec(funn,I,e,m)

hx = [] ;
hf = [] ;
%comentario añadido semanas despues de que anduvo bien esta funcion y terminar el eje, cambie fun por funn y el fun.m lo elimine y cree un funn.m sino compila es por eso. Aparentemente anda bien
a = I(1) ;
b = I(2) ;

fa = funn(a) ;
fb = funn(b) ;

if (fa*fb >= 0)
    disp('No se puede aplicar el metodo en este intervalo')
    return
end

hx(1) = (a+b)/ 2 ;
hf(1) = funn(hx(end)) ;

k = 0 ;

while and(abs(hf(end))>= e, k < m)

    if fa*funn(hx(end)) < 0
        a = a ;
        b = hx(end) ;
    else
        a = hx(end) ;
        b = b ;
        end
k = k + 1;
hx(end+1) = (a+b)/ 2 ;
hf(end+1) = funn(hx(end)) ;
end
end 
%para evaluar o compilar la fun la tengo que definir en un archivo fun.m  onda 
%function f=fun(x)
%f=x^2-2;
%end
%run('rbisec')
% rbisec(@fun,[0 5],0.001,1000)

