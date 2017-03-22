function xout=gaussseidel(A,b,Niter,tol)
  n=length(A);
  D=diag(diag(A));
  L=D-tril(A);
  U=D-triu(A);
  invDL=1./(D-L);
  x=zeros(n,1);
  xout=x;
  oldx=ones(n,1);
  for i=1:Niter
    if (max(abs(x-oldx))<tol)
      disp("")
      disp ("The method completed successfully!")
      disp("Niter")
      disp(i)
      disp("")
      return;
    else
      oldx=x;
      x=invDL*U*x+invDL*b;
      xout=[xout x];
    endif
  endfor
  disp ("Maximum number of iterations exceeded!")
endfunction