function l = li(i,x,y,z)
 %i la variable auxiliar, x vector de todas las cordenadas de las x, y vector de las coordenadas de las y, z un numero real, w un numero real.
a = 1;
b = 1;
p1 = 1;
p2 = 1;
p3 = 1;
p4 = 1;
j = 1;
n = length(x);

if (i == 1)
    j = 2;
    while (j <= n)
    a = a*(z - x(j));
    b = b*(x(1) - x(j));
    j = j + 1;
    end

l = a/b

else
    for j = 1 : i - 1
    p1 = p1*(z - x(j)); 
    p3 = p3*(x(i) - x(j));
    end

j = i + 1;

    while (j <= n)
        p2 = p2*(z - x(j));
        p4 = p4*(x(i) - x(j));
        j = j + 1;
    end
l = (p1*p2)/(p3*p4);

end %el end del if 
l
end
