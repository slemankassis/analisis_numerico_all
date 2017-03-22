function w = ilagrange(x,y,z)

l = 0; %seria un vector q tiene numeros, donde cada uno es un numero re li(i).
p = 0; %seria y(i)*li(i)
s = 0; %seria sumatoria y(i)*li(i)
i = 1;
k = 1;
h = 0;
w = [];
for k = 1 : length(z) 
    for i = 1 : length(x)
        h = z(k);
        l = li(i,x,y,h);
        p = y(i)*l;
        s = s + p;
    end
    w(k) = s;
    s = 0;
end