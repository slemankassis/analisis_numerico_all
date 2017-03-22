function x = soltrsup(A,b)

n = length(b);
 %% para ejecutar en terminal: [1 2; 4 5] es la matriz fila 1 = [1 2], fila 2 = [4 5]
x(n) = b(n)/A(n,n);
for i = (n-1):(-1):1

    x(i)=(b(i)-A(i,i+1:n)*x(i+1:n)')/A(i,i);%% el ' me la traspone. 

end
end
