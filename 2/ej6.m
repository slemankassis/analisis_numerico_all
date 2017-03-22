function [xn,N]=ej6(fun,x0,e,m)
%[xn,N]=ej6(@fun,3,0.0001,100) ejecutar
x=ripf(fun,x0,e,m);
N=length(x);
xn=x(end);

M=max(x);
m=min(x);

xgrilla=m:(M-m)/100:M;

y(1:length(xgrilla))=fun(xgrilla(1:end));
plot(xgrilla,xgrilla)
hold on
plot(xgrilla,y,'g')
X=x(1);
Y=[x(2),x(2)];
for i=3:N
	X=[X,x(i-1),x(i-1)];
	Y=[Y,x(i),x(i)];
end
X=[X,x(N)];

plot(X,Y,'r',[0 1])
hold off