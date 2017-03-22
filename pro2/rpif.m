function hx = rpif(fun,x,e,m)
hx = [x fun(x)];
k = 0 ;
%%con el comando plot en octave se hacen los graficos plot(x,f(x)) es la forma. te grafica f(x) y x es un vector de datos para graficar f, para mas info imput help plot. linspace para crear vectores  ej linspace(a,b,100) = [a,a+1/99,...,b]
while and(abs(hx(end)-hx(end-1)) >= e, k < m)
hx(end+1) = fun(hx(end));
k = k + 1;
end

end
%%plot(x,y) grafica la funcion f(x) = y; para que tenga sentido cardinal de x = cadinal de y. (por eso usamos linspace)
%%hold on 
%% plot
%% hold on ( para poner otra funcion en el grafico)
