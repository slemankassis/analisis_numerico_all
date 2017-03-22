x=linspace(0,10,20);
y=3/4*x+1/2;
y=y+randn(1,20);

z=polyfit(x,y,1)

plot(x,y,"o",x,polyval(z,x));
legend("puntos","aproximacion lineal");

%numero=rand()*(sup-inf)+inf aleatorios en intervalo


%no necesitás tomar los números aleatorios en un intervalo, sino con distribución normal, tal como dice el ejercicio. 
%Lo primero que hacés es generarte 20 puntos equidistantes en el intervalo [0,10]:
%x = linspace(0,10,20)

%Luego, evaluás el polinomio en esos puntos:

% y = polyval([3/4, -1/2],x) ;

%Ahora, perturbás los datos de y usando la distribución normal:

% y_pert(1:20) = y(1:20) + randn(1,20)

%Y finalmente aplicas mínimos cuadrados con el polyfit a los datos. Los coeficientes deberían darte parecidos a los originales.

%coefs = polyfit(x,y_pert,1)

%En el ejcio 2 no necesitás generar números aleatorios.