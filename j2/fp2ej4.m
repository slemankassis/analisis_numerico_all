function [f,df]=fp2ej4(x,p)
% ejecutar [f,df]=f1(x,p)
% donde p=[1,0] calcula f
%       p=[0,1] calcula df
%       p=[1,1] calcula f y df
f=[];
df=[];
if nargin<2
    p=[1,0];
end

t1=x+2;
t2=x+1;
t4=x-1;
t5=x-2;
if p(1)==1
   f=t1.*t2.^2.*x.*t4.^3.*t5;
end
if p(2)==1
   df=t2.^2.*x.*t4.^3.*t5 + 2*t1.*t2.*x.*t4.^3.*t5 + t1.*t2.^2.*t4.^3.*t5 + 3*t1.*t2.^2.*x.*t4.^2.*t5 + t1.*t2.^2.*x.*t4.^3;
end
