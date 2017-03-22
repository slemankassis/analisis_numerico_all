function [z1,z2]=aux2(w)

global a

z1=w-exp(-((1-a.*w).*(1-a.*w)));
z2=1-2.*a.*(1-a.*w).*exp(-((1-a.*w).*(1-a.*w)));

endfunction
