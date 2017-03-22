function [hx,hf]=seccionaurea(fun,I,e,M)

hx=[];
hf=[];
k=1;

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

if fun(a) == 0
	hx(k) = a;
	hf(k) = 0;
	return
end
if fun(b) == 0
	hx(k) = b;
	hf(k) = 0;
	return
end

if fun(a)*fun(b)>0
	disp("no se puede");
	return
end

for k=1:M
	
	d=(3-sqrt(5))/2;
	c=d*a+(1-d)*b;
	hx(k)=c;
	hf(k)=fun(c);

	if abs(fun(c))<e
		return;
	else
		if fun(a)*fun(c)<0
			b=c;
		else 
			a=c;
		end
	end
end