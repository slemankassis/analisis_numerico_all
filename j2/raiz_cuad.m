function r=raiz_quad(b,metodo)
% ejecutar r=raiz_quad(b,metodo)
% donde b es un numero mayor que cero
%       metodo es el nombre del archivo de
%              un metodo para hallar raices
global a
a=b;

histx=feval(metodo,'fp2ej5',b,1e-8,100);
r=histx(end);
