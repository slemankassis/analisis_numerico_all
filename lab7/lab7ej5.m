function fert=lab7ej5

A=[ones(1,3),zeros(1,17);zeros(1,3),ones(1,2),zeros(1,15);zeros(1,5),ones(1,2),zeros(1,13);zeros(1,7),ones(1,3),zeros(1,10);eye(10),eye(10)];
b=[185,50,50,200,70,100,100,30,40,60,35,150,100,70]';

f=[450,425,480,180,200,300,240,319,350,325]';
C=[f;zeros(10,1)];

x=glpk(C,A,b);

fert(1,:)=x(1:3);
fert(2,:)=[0;x(4:5)];
fert(3,:)=[x(6);0;x(7)];
fert(4,:)=[x(8:10)];
