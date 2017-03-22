function p = horn(coefs,x)
n = length(coefs)
p = coefs(n)
for i = n - 1 : -1 : 1
	p = coefs(i) + p * x
end
end