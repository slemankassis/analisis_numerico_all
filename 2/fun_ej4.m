function [f,df]=fun_ej4(x)
global b
f=x.^3-b;
df=3.*x.^2;
end