function hx = ripf(f,x,e,m)
    hx = [];
    for k = 1:m
        x1 = f(x);
        if (abs(x1-x)<e)
            hx = [hx , x];
		    return
        end
        hx = [hx , x];
        x=x1;
    end
end
