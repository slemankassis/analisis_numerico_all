

    for i = 1 : 15
        x(i) = (2*(i - 1)/15) - 1;
end
    for j = 1 : 201
    z(j) = -1 + (j - 1)/100;
end
for i = 1 : 15
    y(i) = 1/(1 + 25*x(i)*x(i));
end
w = inewton(x,y,z);
for i = 1 : 201
    l(i) = 1/(1 + 25*z(i)*z(i));
end

plot(z,w)
hold on
plot(z,l)


