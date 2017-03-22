a=0;
b=10;
n=100;

global c;
x=linspace(a,b,n);
y=[];
for i=1:length(x)
	c=x(i);
	[hx,hf]=rbisec(@fun_ej1,[a,b],1e-6,n);
	y=[y,hx(end)];
end
plot(x,y);

h=(b-a)/(n-1);

S=h/3*(y(1)+2*sum(y(3:2:n-2))+4*sum(y(2:2:n-1))+y(n))