function x=lab7ej3

% Las entradas para glpk son C:funcion objetivo,A:coeficientes de las condiciones,b:resultados de las condiciones

C=[4500;8000];
A=[5,20;10,15];
b=[400;450];

% Ahora voy a ver la forma estandar, donde sumo x3 y x4 para que sea una igualdad. Además, maximizar C*x lo voy a excribir como minimizar -C*x

CE=[-C;0;0];
AE=[A,eye(2)];

x=glpk(CE,AE,b);
