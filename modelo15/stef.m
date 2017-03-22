function [hx,hf]=stef(funn,x0,e,M)

hx=[];
hf=[];
f=funn(x0);

if abs(f)<e
	hx=[hx,x0];
	hf=[hf,f];
	return;
end

for k=1:M
	x1=x0-(f^2/(funn(x0+f)-f));
	f=funn(x1);
	
	hx=[hx,x1];
	hf=[hf,f];
	
	if (abs(f)<e || abs((x1-x0)/x1)<e)
		disp("raiz:");
		hx(end)
		return;
	else
		x0=x1;
	end
end
disp("raiz:");
hx(end)