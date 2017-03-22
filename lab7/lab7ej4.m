function x=lab7ej4

K=[1,0,-1,-1,-1;0,-1,1,0,-1;0,1,0,-1,0];
A=[ones(1,5),zeros(1,3);K,eye(3)];

b=[6e+6;zeros(3,1)];

f=[10;8;6;5;9];
C=[-f;zeros(3,1)];

x=glpk(C,A,b);
