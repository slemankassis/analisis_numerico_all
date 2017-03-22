load datos3a.mat

z=polyfit(log(x),log(y),1);

A=z(1)
C=exp(z(2))

plot(x,y,"o",x,C*x.^A)
legend("puntos","aproximacion");