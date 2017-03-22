
xi = linspace(0, 1, 50);
yi = asin(xi)
p = polyfit(xi, yi, 1) //me da el polinomio
p2 = polyfit(xi, yi, 2)
p3 = polyfit(xi, yi, 3)
p4 = polyfit(xi, yi, 4)
p5 = polyfit(xi, yi, 5)
// aca lo evaluo para compararlos con f, en este caso, asin polyval(p,xi) 
