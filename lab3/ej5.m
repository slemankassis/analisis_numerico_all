function w=lab3_ej5

for n=2:15
	 x=((2*(i-1))/(n))-1;
	 y=1./(1+25*(x.^2));
z=linspace (-1,1,200);
w=inewton(x,y,z);
plot(x,y,"*",z,w,"b-",z,1./z,"r-")	
end
