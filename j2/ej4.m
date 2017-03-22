function y=ej4(a)
%Saca la raíz cúbica de a

global a
[hx,hf]=newton('funej4',a,1e-6,100);
n=length(hx);
y=hx(n);

endfunction
