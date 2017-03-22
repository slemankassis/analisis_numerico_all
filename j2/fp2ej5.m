function [f,df]=fp2ej5(x,p)
% ejecutar [f,df]=f1(x,p)
% donde p=[1,0] calcula f
%       p=[0,1] calcula df
%       p=[1,1] calcula f y df
f=[];
df=[];
if nargin<2
    p=[1,0];
end
global a

if p(1)==1
   f=x.^2-a;
end
if p(2)==1
   df=2*x;
end
