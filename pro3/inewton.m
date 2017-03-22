function w = inewton(x,y,z)
w = [];
n = length(x);
r = length(z);
c = coeficientes(x,y);
s = 0;

for k = 1 : r
    for i = 1 : n
    s = s + c(i)*productorio(i,z(k),x)
    end
w(k) = s
s = 0;
end


