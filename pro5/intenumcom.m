function s = intenumcom(f,a,b,n,regla) 
% n cant de intervalos; n+1 cant de puntos
s = 0;
x = linspace(a,b,n+1);


if (strcmp (regla,"simpson"))

    if (mod(n+1,2) == 1)
        for i = 1 : n/2 
            a =x(2*i-1);
            b = x(2*i+1);
            v = simpson(f,a,b);
            s = s + v;
        end
      else
        disp('simpson no esta definida para n+1 par')
      end
elseif (strcmp(regla,"pm"))
    if (mod(n+1,2) == 1)
        for i = 1 : n/2 
            a =x(2*i-1)                       %%SOLUCIONAR PROBLEMAS DE LOS IFS
            b = x(2*i+1)%% a = a + ((b - a)*i)/n;
            %%b = a + ((b - a)*(i+1))/n;
            v = pm(f,a,b);
            s = s + v;
        end
    else
      disp('pm no esta definida para n+1 par')
    end
elseif(strcmp(regla,"trapecio"))
for i = 0 : n - 1
    a = a + ((b - a)*i)/n;
    b = a + ((b - a)*(i+1))/n;
    v = trapecio(f,a,b);
    s = s + v;
end
else 
    disp('regla erronea')
end
end
