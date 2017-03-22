%con cuadrados minimos

load datos1a.mat

for i=1:length(xd)
    A(i,1) = 1;
    A(i,2) = xd(i);
end

z=A\yd'%'

plot(xd,yd,"o",xd,z(1)+z(2)*xd);
legend("datos","aproximacion");

%A*x=b con A\b=x
%dot producto interno, para ahorrarme el do de la suma de xi*yi
%M' te da la transpuesta
%sum de vector suma elementos