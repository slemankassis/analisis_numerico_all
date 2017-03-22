load datos1a.mat

[a0,a1]=aproxlin(xd,yd);
z=[0:0.1:5];
w=a0+a1*z;
plot(xd,yd,"o",z,w,"g");
legend("puntos","aproximacion lineal");