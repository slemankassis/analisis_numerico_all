function lab2_ej6(f)
    k = 0;
    z = 0;
    x = 0.8;
    ep = 1e-6;
    m = 100;
    hy = [];

    hx = ripf(f,x,ep,m);

    k = length(hx);
    z = hx(k);

    a = [z:0.01:x];
    M = zeros(2*length(hx)-1,2); 

    M(1,1) = hx(1);
    M(1:2:end-1,2) = hx(2:end)';
    M(2:2:end,:) = [hx(2:end)',hx(2:end)'];
    M(3:2:end,1) = hx(2:end)';

    plot(a,a,a,f(a),M(:,1),M(:,2));
end
