x=[0:0.5:2*pi];
y=senint(x);
plot(x,sin(x),'b',x,y,'r')
legend('seno','seno integral')
print -djpg lab5ej3.jpg
