function [x,k]=jacobii(A,b,e,m)

x = ones(1,length(b));
l = 10000;

for k=0:m
	if l<=e
		return;
	end

	y = x;
    for i=1:length(b)
   		x(i)=(b(i)- A(i,1:length(b))*y+A(i,i)*y(i)) /A(i,i);
    end

    l = abs(x-y);
end