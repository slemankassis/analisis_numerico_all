function p = productorio(i,z,x)
if i == 1
p = 1

else
p = productorio(i - 1,z,x)*(z - x(i - 1))

end
p
end 

