function y=senint(x)

for i=1:length(x)
	if x(i)==0
		y(i)=0;
	else
		t=x(i);
		N=ceil(t/0.1);
		y(i)=intenumcomp('cos',0,t,N,"trapecio");
	end
end

% Es la función que asigna a cada x(i) un y(i) que es aproximación numérica de la integral del coseno entre 0 y x(i)
% Usando la regla compuesta del trapecio con N(i) intervalos de longitud menor o igual a 0.1