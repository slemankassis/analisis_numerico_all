function [hx]=ripf(fun,x0,e,M)

hx=[];
x=x0;

for k=1:M
    y=fun(x);
    hx=[hx,y];

    if abs(y-x)<e
        return;
    else
        x=y;
    end
end

%con el comando plot en octave se hacen los graficos plot(x,f(x)) 
%es la forma. te grafica f(x) y x es un vector de datos para graficar f,
%para mas info imput help plot. linspace para crear vectores
%ej linspace(a,b,100) = [a,a+1/99,...,b]