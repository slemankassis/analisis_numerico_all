%Problema fertilizante x1
% minimizar z=450A+425B+480C
%  s.a.		A+B+C=185
%		A<=70
%		B<=100
%		C<=100
%		A,B,C>=0

c1=[450,425,480]';
A1=[1,1,1;1,0,0;0,1,0;0,0,1];
b1=[185,70,100,100]';
LB1=[0,0,0]';
UB1=[inf,inf,inf]';
ctype1="SUUU";

[XOPT1,FMIN1]=glpk(c1,A1,b1,LB1,UB1,ctype1)

disp('Deberá comprar 70 tn en A, 100 en B y 15 en C del fertilizante 1') 

%Problema fertilizante x2
% minimizar z=180B+200C
%  s.a.		B+C=50
%		B<=30
%		C<=40
%		B,C>=0

c2=[180,200]';
A2=[1,1;1,0;0,1];
b2=[50,30,40]';
LB2=[0,0]';
UB2=[inf,inf]';
ctype2="SUU";

[XOPT2,FMIN2]=glpk(c2,A2,b2,LB2,UB2,ctype2)

disp('Deberá comprar 30 tn en B y 20 tn en C del fertilizante 2') 

%Problema fertilizante x3
% minimizar z=300A+240C
%  s.a.		A+C=50
%		A<=60
%		C<=35
%		B,C>=0

c3=[300,240]';
A3=[1,1;1,0;0,1];
b3=[50,40,35]';
LB3=[0,0]';
UB3=[inf,inf]';
ctype3="SUU";

[XOPT3,FMIN3]=glpk(c3,A3,b3,LB3,UB3,ctype3)

disp('Deberá comprar 15 tn en A y 35 tn en C del fertilizante 3') 

%Problema fertilizante x4
% minimizar z=319A+350B+325C
%  s.a.		A+B+C=200
%		A<=150
%		B<=100
%		C<=70
%		A,B,C>=0

c4=[319,350,325]';
A4=[1,1,1;1,0,0;0,1,0;0,0,1];
b4=[200,150,100,70]';
LB4=[0,0,0]';
UB4=[inf,inf,inf]';
ctype4="SUUU";

[XOPT4,FMIN4]=glpk(c4,A4,b4,LB4,UB4,ctype4)

disp('Deberá comprar 150 tn en A, 0 en B y 50 en C del fertilizante 4') 
