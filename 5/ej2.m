a=0;
b=1;
exacto=1-exp(-1);
M=[4,10,20];

for i=1:3
	disp(M(i));
	disp(":");

	disp("pm");
	e=abs(exacto-intenumcomp(@fun,a,b,M(i),"pm"))
	e=abs(exacto-intenumcomp_(@fun,a,b,M(i),"pm"))

	disp("trapecio");
	e=abs(exacto-intenumcomp(@fun,a,b,M(i),"trapecio"))
	e=abs(exacto-intenumcomp_(@fun,a,b,M(i),"trapecio"))

	disp("simpson");
	e=abs(exacto-intenumcomp(@fun,a,b,M(i),"simpson"))
	e=abs(exacto-intenumcomp_(@fun,a,b,M(i),"simpson"))
end