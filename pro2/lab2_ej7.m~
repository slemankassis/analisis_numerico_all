function lab2_ej7(metodo)

global x;
X = 0: 2/50 :2 ;

if metodo == 1  %punto fijo

for i = 1 : length(X)
   x = X(i);
 hx = rpif(@faevaluar,1,0.00001,100);
hy(i) = hx(end) ;
end

plot(X,hy)

elseif metodo == 2 %rbisec
for i = 1 : length(X)
   x = X(i);
 hx = rbisec(@faevaluarrnewton,[0 2],0.00001,100);
hy(i) = hx(end) ;
end

plot(X,hy)
elseif metodo == 3 %newton
for i = 1 : length(X)
   x = X(i);
 hx = rnewton(@faevaluarrnewton,1.1,0.00001,10);
hy(i) = hx(end) ;
end

plot(X,hy)
else disp('error: ingrese 1, 2 o 3')

end


