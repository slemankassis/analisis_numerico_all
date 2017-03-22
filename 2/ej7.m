hold on

global a;
x=[0:0.1:2];
y=[];
for i=1:length(x)
	a=x(i);
	[hx,hf]=rbisec(@fun_ej7rbisec,[0,2],1e-6,100);
	y=[y,hx(end)];
end
plot(x,y);


global a;
x=[0:0.1:2];
y=[];
for i=1:length(x)
	a=x(i);
	[hx,hf]=secante(@fun_ej7rbisec,1,1e-6,100); %porque es dificil derivar, derivar respecto a y
	y=[y,hx(end)];
end
plot(x,y);


global a;
x=[0:0.1:2];
y=[];
for i=1:length(x)
	a=x(i);
	[hx]=ripf(@fun_ej7ripf,1,1e-6,100);
	y=[y,hx(end)];
end
plot(x,y);