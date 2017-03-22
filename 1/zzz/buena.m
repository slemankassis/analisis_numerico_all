function [x_1,x_2]=buena(a,b,c)

if b>0
x_1 = (-b-(b^2-4*a*c)^0.5)*(1/(2*a));
x_2 = (c/a)*(1/x_1);
else
x_1 = (-b+(b^2-4*a*c)^0.5)*(1/(2*a));
x_2 = (c/a)*(1/x_1);

end
end


