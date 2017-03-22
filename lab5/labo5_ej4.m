function S=labo5_ej4()

xd=[];
Sd=[];

global x 
 for x=-1:0.1:1
	if abs(x)<1
  		S=intenumcomp(@fun_ej4,0,pi/2,100,'simpson');
		
	else
  		S=inf;
	end
Sd=[Sd S];
xd=[xd x];
 end
plot(xd,Sd)
