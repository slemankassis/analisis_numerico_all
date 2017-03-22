hold off
for n=1:15
	for i=1:(n+1)
		x(i)=2*(i-1)/n-1;
		y(i)=funej2y4(x(i));
	endfor

	for j=1:200
		z(j)=-101/100+j/100;
	endfor

	w=difdiv(x,y,z);
	fz=funej2y4(z);

	plot(z,fz,z,w)
	legend('funcion','polinomio')
	pause(1)

endfor
