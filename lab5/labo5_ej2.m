function [a,b,c]=labo5_ej2 (n)

S=intenumcomp(@fun_ej2,0,1,n,'pm');
a=abs(((e-1)/e)-S);
S=intenumcomp(@fun_ej2,0,1,n,'trapecio');
b=abs(((e-1)/e)-S);
S=intenumcomp(@fun_ej2,0,1,n,'simpson');
c=abs(((e-1)/e)-S);
end
