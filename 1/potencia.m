function z = potencia(x,n)
if n == 0
	z = 1
else if n > 0
	z = 1;
	for i = 1 : n
		z = z * x;
	end
else
	z = "no se puede"
end
end