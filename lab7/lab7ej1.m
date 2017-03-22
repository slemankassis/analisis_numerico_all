function lab7ej1

% Hago el cálculo de los vértices (busco Ax=b, donde A tiene en cada fila los coeficientes de cada ecuación, y b son las constantes de las igualdades)

V(:,1)=[2,1;-1,3]\[-9;-6];
V(:,2)=[-1,3;1,2]\[-6;3];
V(:,3)=[1,2;2,1]\[3;-9];

% Cada columna de A tiene el valor de 'x' y el de 'y' de los vértices. En el comando 'fill' me piden como entradas X e Y, que son las coordenadas 'x' e 'y' de los vértices, es decir que X=V(1,:) e Y=V(2,:)

fill(V(1,:),V(2,:),'g')

% Y como para verificar, voy a graficar las rectas de las ecuaciones, considerandolas igualdades

hold on
x=(-10:0.01:10);
plot(x,-2*x-9,x,x/3-2,x,-x/2+3/2)
