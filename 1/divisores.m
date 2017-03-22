function d = divisores(n) 
d = [] ;
i = 1 ;
k = 0;
    for i = 1 : n
    if mod(n,i) == 0
        d(end+1) = i;
        k = k + 1;
    end

d
k


end
