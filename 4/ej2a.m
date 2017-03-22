x=linspace(0,1,50);
y=asin(x);

hold on
plot(x,y,"o");

for n=0:5
	z=polyfit(x,y,n);

	plot(x,polyval(z,x));
	pause(1);
end