load datos3b.mat

z=polyfit(x,x./y,1);

A=z(1)
B=z(2)

plot(x,y,"o",x,x./(A*x+B));
legend("puntos","aproximacion");