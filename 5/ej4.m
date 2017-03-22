clear all
a=0;
b=1;
e=1e-6;
S=[1,2];

for n=100:50:1000
	S=[S,intenumcomp_(@fun_ej4a,a,b,n,"trapecio")]; %cambiar con a b c y trapecio o simpson
	if abs(S(end)-S(end-1))<e
		s=S(end)
		return;
	end
end

%format long
%probar intenumcomp_ o intenumcomp porque en esta da con _