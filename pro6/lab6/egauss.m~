function  [A,b] = egauss(A,b)
j = 0;
n = length(b);
for k = 1 : (n-1)
    if (A(k,k) == 0) 
        disp('error')
        
        return        
    else
       for j = k + 1 : (n)
        v = A(j,k)/A(k,k);
        A(j,k) = 0;
        A(j,j:n) = A(j,j:n) - v*A(k,j:n);
        b(j) = b(j) - v*b(k);
        end
end

b;



end
