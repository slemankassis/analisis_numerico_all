c=[-4500,-8000]';
A=[5,20;10,15];
b=[400,450]';
LB=[0,0]';
UB=[inf,inf]';
ctype="UU";

[XOPT,FMIN]=glpk(c,A,b,LB,UB,ctype)
