function y=u3(x)

for i=1:length(x)
	global a
	a=x(i);
	hx=puntofijo('aux3',2/max(1,a),1e-5,100);
	n=length(hx);
	y(i)=hx(n);
endfor

endfunction
