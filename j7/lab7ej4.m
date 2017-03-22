% Problema:
%minimizar z=-10x1-8x2-6x3-5x4-9x5
% s.a.		x1+x2+x3+x4+x5<=6000000
%		x1<=x3+x4+x5
%		x2+x5>=x3
%		x2<=x4
%		x1,x2,x3,x4,x5>=0

c=[-10,-8,-6,-5,-9]';
A=[1,1,1,1,1;1,0,-1,-1,-1;0,1,-1,0,1;0,1,0,-1,0];
b=[6000000,0,0,0]';
LB=[0,0,0,0,0]';
UB=[inf,inf,inf,inf,inf]';
ctype="UULU";

[XOPT,FMIN]=glpk(c,A,b,LB,UB,ctype)
