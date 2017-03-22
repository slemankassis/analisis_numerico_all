function  [a,b] = eje1pro4(x,y)

%% con el comando A/b me resuelve la matriz, osea me da los x, Ax = b

n = length(x);
v = ones(1,n);
M = [v ; x];
M' %%te da la transpuesta
%%A = zeros(10,10)
%%A(5,1) = para 

A = M*M';
w = sum(y);
z = dot(x,y); %producto interno, para ahorrarme el do de la suma de xiyi

B = [w ; z]; 

h = A\B; %% ax+ b
b = h(1)
a = h(2)
%%c(1:n) = a*x(1:n)+b;

plot(x,y,'*') 
hold on
plot(x,a*x+b)
end
 
