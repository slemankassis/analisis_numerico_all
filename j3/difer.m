function c=difer(x,y)
%Calcula los coeficientes de Newton usando diferencias divididas

c=[y(1)];
l=y;
for j=1:(length(x)-1)
	n=[];
	b=length(l)-1;
	for i=1:b
		n(i)=(l(i+1)-l(i))/(x(i+j)-x(i));
	endfor
	c=[c,n(1)];
	l=n;
endfor

end

more off
