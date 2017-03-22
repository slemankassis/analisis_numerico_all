


    for i = 1 : 101
        z(i) = (24 + i)/25 ;

end

x = [1 2 3 4 5]
n = length(x);
y = ones(1,n);
y = y./x
a = length(z);
l = ones(1,a);
l = l./z
w = inewton(x,y,z);

plot(z,w)
hold on
plot(z,l)


