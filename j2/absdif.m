function [f,df]=absdif(x,p)
% ejecutar [f,df]=absdif(x,p)
%	funcion diferenciable que aproxima al valor absoluto
%	f(x)=a/2 x^2, si -1/a<= x<= 1/a; f(x)=|x|-1/(2a), caso contrario.
%	donde length(p)=2 tal que
%	p=[1,0] regresa solo el valor f(x)
%	p=[0,1] regresa solo el valor df(x) (la derivada)
%	p=[1,1] regresa f(x) y df(x)
a=1.5;		% a mayor valor mejor aproximacion
f=[]; df=[];
if nargin==1	% si hay un solo argumento de entrada definiremos un "p" por defecto.
	p=[1,0];
end
xn=(x<-1/a);	% de igual dimension de x con componente 1 si la relacion logica es verdadera, 0 si es falsa.
xp=(x>1/a);
x0=(-1/a<=x & x<=1/a);
% esta NO ES la mejor forma de definir esta funcion, ya que cada elemento de x se esta comparando al menos 3 veces.
if p(1)==1
	f=xn.*(-x-1/(2*a)) + a/2*x0.*x.^2 + xp.*(x-1/(2*a));
end
if p(2)==1
	df=-xn + a*x0.*x + xp;
end
 
