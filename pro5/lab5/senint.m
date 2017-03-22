function [y] = senint(x)

v = length(x);
j = 1;
n = ceil((b-a)*10); %viene de de que 0.1 mayor que h ) b-a/n (siendo n la cantidad de subntervalos) ceil es la funcion techo.
for i = 1 : v


y(j) = intenumcom(@coss,0,x(i),n,trapecio)
j = j + 1;
end

end
