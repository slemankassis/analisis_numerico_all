x=randn(0,10,20);
y=0.75*x+0.5;

[a0,a1]=aproxlin(x,y)
w=a0+a1*x;

plot(x,y,"o",x,a0*x+a1);

%z=y.*(1+0.05*randn(1,20));