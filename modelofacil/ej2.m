[hx,hf]=seccionaurea(@fun,[0.8,1.4],10e-6,10000000);
disp("iteraciones seccionaurea");
disp(length(hx));
hx

[hx,hf]=rbisec(@fun,[0.8,1.4],10e-6,10000000);
disp("iteraciones rbisec");
disp(length(hx));
hx