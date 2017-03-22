function [ n , z] = funciondificil(fun,x,e,m) 
hx = rpif(fun,x,e,m);
z = hx(end);
n = length(hx);
z
n
m = min(hx)
b = max(hx)
xgrilla = [m : (b-m)/100 : b];
ygrilla = feval(fun,xgrilla);
plot(xgrilla,xgrilla)
hold on
plot(xgrilla,ygrilla,'r')
hold off
X_poligonal = hx(1) ;
Y_poligonal = [hx(2) hx(2)];
for i = 3 : n
    X_poligonal = [X_poligonal hx(i-1) hx(i-1)] ;
    Y_poligonal = [Y_poligonal hx(i) hx(i)] ;
end
X_poligonal = [X_poligonal hx(n)] ;
plot(X_poligonal,Y_poligonal,'k')
end
