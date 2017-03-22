function solucion = ejercicio_pf(fun,x,e,m)
solucion = rpif(@fun_integracion,0,0.00001,100);

solucion

hx = [];
senx = [];
i = 1;
j = 1;
for i = 1 : 50
    hx(end + 1) = -2 + i/25 ; 
end

for j = 1 : 50
senx(j) = sin(hx(j) - 1);
end


plot([-2 0],[-2 0])
hold on
plot(hx,senx,'r')
hold off


end
