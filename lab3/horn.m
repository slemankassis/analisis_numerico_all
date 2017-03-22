function p = horn( coefs, x)
    p=0;
    for i = 1:(length(coefs))
        p =( p * x) + coefs(i);
    end
end
