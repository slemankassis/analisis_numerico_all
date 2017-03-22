function p=aproxgradn(x,y,n)
% Calcula la mejor aproximación polinómica de grado n en el sentido de cuadrados mínimos de los pares (x(i),y(i))
% p=[a1,...,an] donde la mejor aproximación es p(x)=a0+a1*x+...+an*xn
m=length(x);
sumx=[];

for j=1:(2*n)
	t=0;
	for i=1:m
		t=t+(x(i))^j;
	endfor
	sumx(j)=t;
endfor
sumx=[m,sumx];

A=[];
for j=1:(n+1)
	fj=[];
	for i=1:(n+1)
		fj=[fj,sumx(i+j-1)];
	endfor
	A=[A;fj];
endfor

sumy=[];
for i=1:(n+1)
	t=0;
	for j=1:m
		t=t+y(j)*(x(j))^(i-1);
	endfor
	sumy=[sumy;t];
endfor

c=(A^(-1))*sumy;
p=c';
