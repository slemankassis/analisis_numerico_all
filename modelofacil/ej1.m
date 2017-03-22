a=-1;
b=1;
n=100;
h=(b-a)/(n-1);

z=linspace(a,b,n);

load datos.mat;
w=ilagrange(xd,yd,z);

S=h/3*(w(1)+2*sum(w(3:2:n-2))+4*sum(w(2:2:n-1))+w(n))
S=h/3*(w(1)+2*sum(w(2*(2:1:(n-1)/2)-1))+4*sum(w(2*(1:1:(n-1)/2)))+w(n))

%me da lo mismo
%el -1 va no va para el paso