function [hx,hy]= rbisec(f,I,e,n)
	a = I(1);
	b = I(2);
	hx = [];
	hy = [];
	if (f(a)*f(b))>=0
		break
	end
	for k=1:n
		x=(a+b)/2;
		if abs(f(x))<e
			hx = [hx , x];
			hy = [hy , f(x)];
			break
		else
			if (f(a)*f(x))<0
				b=x;
			else
				a=x;
			end
		end
		hx = [hx , x];
		hy = [hy , f(x)];
	end
end
