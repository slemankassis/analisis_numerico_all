function ej3
    x = linspace (1,5,5);
    y = 1./x;
    j = linspace(1,101,101);
    z = 24/25 + j/25;
    w = inewton (x,y,z);
    plot (x,y,'ro','markersize',10) , hold , plot (z,w)
end
