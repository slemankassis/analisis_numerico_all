function f = faevaluar(y)
global x; 
f =  exp(-(1-x*y)^2);
%df = (2-2*x*y)*exp(-(1-x*y)^2);
end
