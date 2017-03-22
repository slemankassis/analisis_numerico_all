function [x,k] = gseidell(A,b,e,m)

l = 10000; %%cosa que entre al bucle si o si (demasiado grande diez mil de error)
r = 0;
n = length(b); 
x = ones(1,n);         %hay q dar un valor inicial de los xi, por defecto elijo q sean ceros.
  %% e tolerancia error, m cantidad maximas de iteraciones.
while (l>e && r<m)
    y =  x;
    x(1) = (b(1) - A(1,2:n)*y(2:n)')/A(1,1);
    
    for i = 2 : n-1
    x(i) = (b(i)-A(i,1:(i-1))*x(1:i-1)-A(i,j=(i+1:n))*y(i+1:n))/A(i,i);   %%PONER LA DEl METodo de GAUSS LA Q ESTA PUESTA ES LA DE JACOBI que es una formula de bi,aij, xi, no hace falta calcular D,L, U
    end
    x(n) = (b(n) - A(n,1:n-1)*x(1:n-1)')/A(n,n);
    l = abs(x-y); %%que es el maximo ya q (x-y) es un vector
    r = r + 1;
end

k = r;








end

