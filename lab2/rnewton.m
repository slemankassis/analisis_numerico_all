function [hx,hy] = rnewton(fun,x,e,m)
	x1 = 0;	
	hx = [];
	hy = [];
    [f,df] = fun(x);
	if (abs(f)<e) 
		hx = [hx , x];
        hy = [hx , f];
		return
	end
	for k = 1:m
        [f,df] = fun(x);
        if (df == 0)
            hx = [hx , x];
            hy = [hy , f];
			return
        else    
		    x1 = x- f/df;
            [f, df] = fun(x1);
		    if ((abs((x1-x)/x1)<e) | (abs(f)<e))
			    hx = [hx , x1];
                hy = [hy , f];
			    return
		    else 
			    hx = [hx , x];
		        hy = [hy , f];
			    x=x1;
            end
		end
	end
end
