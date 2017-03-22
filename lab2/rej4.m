function [hx,hy] = rej4(x)
    [hx , hy] = rnewton(@lab2_ej4, x, 10^-6,100);
%    y = hx(length(hx))
end
