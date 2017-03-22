function [a0,a1]=aproxlin(x,y)

sumx=0;
sumy=0;
sum2x=0;
sumxy=0;

for i=1:length(x)
	sumx=sumx+ x(i);
	sumy=sumy+ y(i);
	sum2x=sum2x+ x(i)*x(i);
	sumxy=sumxy+ x(i)*y(i);

end

a0=(sum2x*sumy-sumx*sumxy) / (length(x)*sum2x-sumx*sumx);
a1=(length(x)*sumxy-sumx*sumy) / (length(x)*sum2x-sumx*sumx);

% Calcula la mejor aproximación lineal en el sentido de cuadrados mínimos de los pares (x,y)