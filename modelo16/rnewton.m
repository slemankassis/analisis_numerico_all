function [hx,hf]=rnewton_(funn,x0,e,M)

hx=[];
hf=[];
[f,df]=funn(x0);

if abs(f)<e
	hx=[hx,x0];
	hf=[hf,f];
	return;
end

for k=1:M
	x1=x0-(f/df);
	[f,df]=funn(x1);
	
	hx=[hx,x1];
	hf=[hf,f];
	
	if (abs(f)<e || abs((x1-x0)/x1)<e)
		return;
	else
		x0=x1;
	end
end