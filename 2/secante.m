function [hx,hf]=secante(funnn,x0,x1,e,M)

hx=[];
hf=[];

hx(end+1)=x0;
hf(end+1)=funnn(hx(end));
hx(end+1)=x1;
hf(end+1)=funnn(hx(end));

if abs(hf(end))<e
	return;
end

for k=1:M
	hx(end+1)=hx(end)-(hf(end)*(hx(end)-hx(end-1)))/(hf(end)-hf(end-1));
	hf(end+1)=funnn(hx(end));
	
	if (abs(hf(end))<e || abs((hx(end)-hx(end-1))/hx(end))<e)
		return;
	end
end