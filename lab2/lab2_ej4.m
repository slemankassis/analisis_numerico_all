function [f, df] = lab2_ej4(x)
    global a;    
    f = x.^3 - a;
    df = 3*x.^2;
end 
