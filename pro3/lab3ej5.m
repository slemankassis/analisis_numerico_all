A=load("datos_aeroCBA.dat");

z=[1957:2012];
x=A(:,1);
y=(A(:,2)+A(:,3))/2;

w=interp1(x,y,z,"spline");

plot(z,w);