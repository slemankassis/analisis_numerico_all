load datos_aeroCBA.dat

xf=datos_aeroCBA([1:46],[1]);
xf=xf';
yf=datos_aeroCBA([1:46],[2]);
yf=yf';


xp=xf([2,5:14,16:18,20:34,36,37,39:45]); % Son los lugares de xf no vacíos
yp=yf([2,5:14,16:18,20:34,36,37,39:45]);

spl=interp1(xp,yp,xf,"spline"); % spl es un vector de las mismas dimensiones de xf, pero con los valores faltantes interpolados.
hold on
plot(xf,yf,'*',xf,spl,'r')

