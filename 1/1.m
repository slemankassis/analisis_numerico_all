v = [1 2]
u = [1 2 3 4]
A = [1 2 ; 3 4]
B = rand(2,3)
pi*v
v.*u(2:3)
A*v'
A*A
A.*A
A*B
A.*B(1:2,2:3)
x = 2
y = 3
z = 4
x/y + z
x/(y + z)
x/y*z
x/(y*z)
n = 2
while isinf(2*n) != 1
n = n*2;
end
n
break


