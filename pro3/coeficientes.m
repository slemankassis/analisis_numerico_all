function c = coeficientes(x,y) 
c = [];
a = y;
n = length(x);
c(1) = y(1)
for j = 1 : n - 1

for i = 1 : n-j
    a(i) = (a(i + 1) - a(i))/(x(j + i) - x(i));

end
 c(j + 1) = a(1)
end












end
