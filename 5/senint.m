xd=[];
Sd=[];

for x=0.1:0.5:2*pi
	xd=[xd,x];
	S=intenumcomp(@fun_ej3,0,x,ceil(x/0.1),"trapecio")
	Sd=[Sd,S];
end

plot(xd,Sd,"*",xd,sin(xd));

%sin, cos, tan, asin, acos, atan, sinh, cosh, tanh, asinh, acosh, atanh 
%round: redondea al entero más próximo
%floor: redondea hacia -Inf
%ceil: redondea hacia +Inf
%fix: redondea hacia cero