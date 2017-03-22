e=0.5e-6;
M=50;
I=[0,2];

disp("rbisec");
[k,c,fc]=rbisec(@fun,I,e,M)
disp("falsi");
[k,c,fc]=falsi(@fun,I,e,M)