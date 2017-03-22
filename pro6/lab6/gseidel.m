function [x,k] = geseidel(A,b,e,m)

l = 10000; %%cosa que entre al bucle si o si (demasiado grande diez mil de error)
r = 0;
n = length(b); 
x = zeros(1,n);         %hay q dar un valor inicial de los xi, por defecto elijo q sean ceros.
  %% e tolerancia error, m cantidad maximas de iteraciones.
do (l>e && r<m)
    y =  x;
    x(i=1:n) = (b(i)-A(i,j=1:(i-1))*x(j)-A(i,j=(i+1:n))*y(i))/A(i,i);   %%PONER LA DEl METodo de GAUSS LA Q ESTA PUESTA ES LA DE JACOBI que es una formula de bi,aij, xi, no hace falta calcular D,L, U
    l = max(x-y); %%que es el maximo ya q (x-y) es un vector
    r = r + 1;
end

k = r;
x







end
