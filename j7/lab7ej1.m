A=[2,1;-1,3;1,2];
b=[-9;-6;3];

A1=A([1,2],:);
p1=soleg(A1,b([1,2]));
A2=A([1,3],:);
p2=soleg(A2,b([1,3]));
A3=A([2,3],:);
p3=soleg(A3,b([2,3]));

x=[p1(1),p2(1),p3(1)];
y=[p1(2),p2(2),p3(2)];

fill(x,y,'r')

