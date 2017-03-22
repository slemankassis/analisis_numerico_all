for i=1:50
	x(i)=4*pi*i/50;
	y(i)=cos(x(i));
endfor

hold on
plot(x,y,'*')
pause(1)
for N=1:6
	p=aproxgradn(x,y,(N-1));
	z=[0:0.05:4*pi];
	for j=1:length(z)
		t=z(j);
		c=0;
		for k=1:length(p)
			c=c+p(k)*(t^(k-1));
		endfor
		w(j)=c;
	endfor
	plot(z,w)
	pause(1)
endfor
