function y=u1(x)

for i=1:length(x)
	global a
	a=x(i);
	[hx,hf]=bisec('aux1',[0,10],1e-5,100);
	n=length(hx);
	y(i)=hx(n);
endfor

endfunction
