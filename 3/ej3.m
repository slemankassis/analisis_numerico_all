z=24/25+[1:101]/25;

hold on
plot(z,1./z);
plot(z,inewton([1:5],1./[1:5],z),"*");