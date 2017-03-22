function w = ilagrange(x ,y ,z)

    w = [];
    j = length(x);
    jz = length(z);

    for m = 1:jz
        p = 0;
        for i = 1 : j

            l = 1;
            for k = 1:j
                if k != i
                    l = l * (z(m)-x(k))/(x(i)-x(k));
                end
            end

        p = p + y(i) * l;
        end
        w =  [w , p];
    end
end
