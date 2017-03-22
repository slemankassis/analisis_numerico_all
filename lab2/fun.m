function [f,df] = fun(x)
    f = x.^2 - 3;
    df = 2*x;
end
