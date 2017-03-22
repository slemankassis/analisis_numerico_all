function y=funlab5ej4(x)

global a
for i=1:length(x)
	a=x(i);
	y(i)=intenumcomp('auxlab5ej4',0,pi/2,100,'simpson');
end

% Devuelve para cada x la integral numérica de la función auxlab5ej4 entre 0 y pi/2