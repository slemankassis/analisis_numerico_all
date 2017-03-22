function [i,j]=mala(a,b,c)
    i=(-b-sqrt(b^2-4*a*c))/2;
    j=(-b+sqrt(b^2-4*a*c))/2;
end
