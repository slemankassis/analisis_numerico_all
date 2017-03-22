function [f,df]=fun_ej2(x)
f= x^3 - 10*x^2 + 10*x + 1;
if nargout>1
	df= 3*x^2 - 10*x + 10;
end