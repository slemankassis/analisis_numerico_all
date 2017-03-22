load datos1a.mat

z=polyfit(xd,yd,1); %variar n

plot(xd,yd,"o",xd,polyval(z,xd));
legend("puntos","aproximacion lineal");

%polyval valua decreciente osea termino indep es el ultimo
%polyfit da coeficientes donde el ultimo es el indep