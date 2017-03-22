function labo_2
ok=zeros(4,1);
[hx,hf]=rbisec(@fun_rbisc,[-1 1],1e-10,100);
if length(hx)<1, disp("rbisec 1 bien"),ok(1)=1;end,
[hx,hf]=rbisec(@fun_rbisc,[-.9 1],1e-10,100);
if length(hx==100),disp("rbisec 2 bien"),ok(2)=1;end,
[hx,hf]=rbisec(@lab2_ej2a,[.8 1.4],1e-10,100);
if length(hx) <= 33, disp("2a bien"),ok(3)=1;end
x=min(hx):0.01:max(hx,1.4); figure, plot(x,@lab2_ej2a(x),hx,hf,"x")
[hx,hf]=rbisec(@lab2_ej2b,[1 3],1e-5,100);
if and(abs(hx(end)^2-3)<=1e-5,length(hx)<100),disp("2b bien"),ok(4)=1;,end
x=min(hx):0.01:max(hx,3); figure, plot(x,@lab2_ej2b(x),hx,hf,"x")
global a, a = 3;
[hx,hf]=rnewton(@lab2_ej4,1 ,1e-6,100);
if and(abs(hx(end)^3-3)<=1e-6,length(hx)<100),disp("4 bien"),ok(5)=1;end
hx =ripf(@fun_ej6,1.3,1e-5,100) ;if length(hx)<100,disp("5 bien"),ok(6)=1;end
figure,lab2_ej6(@fun_ej6)
disp(" ____________________________________________________________")
disp("|                                                            |")
disp("|                                                            |")
if sum(ok)==6,disp("| Faltan ver las graficas para que el practico este aprobado |"),else,disp("|           El practico no esta aprobado                     |"),end
disp("|                                                            |")
disp("|____________________________________________________________|")
end
function f=fun_ej6(x), f = tan(x)/2; end
function f=fun_rbisc(x), if x==-1,f=1;elseif x>0, f=1;else,f=-1;end
