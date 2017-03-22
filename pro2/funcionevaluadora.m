function [lx] = funcionevaluadora(func,kx)
lx = [func(kx(end)];
k = 0 ;
while k < length(kx)
k = k + 1;
lx(end-1) = func(kx(end-1));
end
end
