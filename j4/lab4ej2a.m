
x=linspace(0,1,50);
y=asin(x);

hold on
plot(x,y,'*');
pause(1);
for (N=1:9)
	z=polyfit(x,y,(N-1));
	w=polyval(z,x);
	plot(x,w);
	pause(1);	
endfor
