
y = [];
x = [0, 0.5, 2*pi]
y = senint(x);

v = linspace(0,2*pi,100);
plot(v,y)
hold on
plot(v,sen(x))
