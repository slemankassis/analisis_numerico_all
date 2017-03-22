function [i,j] = buena(a,b,c)
    if b < 0 
        i=(-b+sqrt(b^2-4*a*c))/(2*a);
        j= c/(a*i);
    else 
        i=(-b-sqrt(b^2-4*a*c))/(2*a);
        j=c/(a*i);
    end
end
