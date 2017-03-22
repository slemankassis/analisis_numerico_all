function w = inewton(x , y, z)
    l = length(x);
    m = length(z);
    w = [];

    for i = 1:l
        b(1,i) = y(i);   % c1
    end
    for j = 2:l
        for i = j:l
            b(j,i) = (b(j-1,i) - b(j-1,i-1))/(x(i) - x(i-(j-1)));   % cn
        end
    end
    for i = 1:l
        c(i) = b(i,i);
    end
    for j = 1:m
        p = 0;
        for i = 1:l
            o = 1;
            for k = 1:i-1
                o = o *(z(j)-x(k));
            end
            p = p + c(i) * o;
        end
        w = [w ,p];
    end
end
