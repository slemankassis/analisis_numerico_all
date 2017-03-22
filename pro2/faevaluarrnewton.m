function [f df] = faevaluarrnewton(y)
global x;
f = y - exp(-(1-x*y)^2);
df = 1 - (2-2*x*y)*x*exp(-(1-x*y)^2);

end
