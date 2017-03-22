function [k,c,fc]=falsi(fun,I,e,M)

if length(I) ~= 2
	disp("no se puede");
	return
end
if I(1) >= I(2)
	disp("no se puede");
	return
end

a=I(1);
b=I(2);
fa=fun(a);
fb=fun(b);

if fa == 0
	c = a;
	fc = 0;
	return
end
if fb == 0
	c = b;
	fc = 0;
	return
end

if fa*fb>0
	disp("no se puede");
	return
end

k=1;
while k<=M
	c=(fb*a-fa*b)/(fb-fa);
	fc=fun(c);

	if abs(fc)<e
		return;
	else
		if fa*fc<0
			b=c;
		else 
			a=c;
		end
	end
	k++;
end