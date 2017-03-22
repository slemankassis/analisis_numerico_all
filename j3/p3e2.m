x=[1:5];

for i=1:length(x)
	y(i)=1/(x(i));
endfor

for j=1:101
	z(j)=24/25+j/25;
endfor

w=lagrange(x,y,z);

hold on
plot(x,y,'*')
plot(z,w,'r')

