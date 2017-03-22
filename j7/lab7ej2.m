A=[5,20;10,15];
A=[A,eye(2)];
b=[400;450];

P=[];
for i=1:3
	for j=(i+1):4
		B=A(:,[i,j]);
		p=soleg(B,b);
		t=zeros(1,4);
		for k=1:4
			if k==i
				t(k)=p(1);
			elseif k==j
				t(k)=p(2);
			endif
		endfor
		P=[P;t];
	endfor
endfor

C=[];
for i=1:6
	if P(i,:)>=0
		C=[C;P(i,:)];
	endif
endfor

I=[eye(2),zeros(2);zeros(2),[0,1;1,0]];
C=I*C;
x=C(:,1);
y=C(:,2);

hold on
fill(x,y,'g')

V=[1e5,1.5e5,2e5,2.5e5];
x1=[0:0.1:45];
for i=1:length(V)
	v=V(i);
	plot(x1,(v-4500.*x1)./8000,'r')
endfor

% En el gráfico se puede observar que la solución deseada es el punto (24,14), ya que es el último punto que tocan las rectas perpendiculares al vector gradiente de la función objetivo.
	
