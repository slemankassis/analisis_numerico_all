function [x,k] = jacobi(A,b,e,m)
l = 10000; %%cosa que entre al bucle si o si (demasiado grande diez mil de error)
r = 0;
i=0;
k=0;
n = length(b); 
x = zeros(1,n);         %hay q dar un valor inicial de los xi, por defecto elijo q sean ceros.
  %% e tolerancia error, m cantidad maximas de iteraciones.
while (l>e )
    y =  x;
    x(i=1:n) = (b(i)-A(i,j=1:n)*y(j))/A(i,j);   %%que es una formula de bi,aij, xi, no hace falta calcular D,L, U etc.:j!=i
    l = max(x-y); %%que es el maximo ya q (x-y) es un vector
    r = r + 1;
end

k = r;
x
end
