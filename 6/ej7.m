clear all

n=5;
b=[ones(n,1);zeros(n,1)];
I=eye(n);
B=diag(4*ones(n,1))-diag(ones(n-1,1),1)-diag(ones(n-1,1),-1);
A=[B,-I;-I,B];

m=500;
e=1e-6;

x1=soleg(A,b);
x2=sollu(A,b');%'
[x3,k]=jacobi(A,b,e,m);
[x4,k]=gseidel(A,b,e,m);

soleg=	norm(A*x1'-b,2)%'
sollu=	norm(A*x2'-b,2)%'
jacobi=	norm(A*x3 -b,2)
gseidel=norm(A*x4 -b,2)


%cada metodo depende de la matriz en efectividad
%usar clear all por este error: cerrar octave y volver a abrir porque al cambiar n mucho da error indices de matriz

%x=(x1,x2); y=(y1,y2); ||x||2=sqrt(x1^2+x2^2); ||x-y||2=sqrt((x1-y1)^2+(x2-y2)^2)