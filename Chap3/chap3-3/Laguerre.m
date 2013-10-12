function z1=Laguerre(a,M,epsilon,z0)
n=length(a);
for k=1:M
   alpha=a(n);beta=0;gamma=0;
   for j=n-1:-1:1
      gamma =z0*gamma+beta;
      beta =z0*beta+alpha;
      alpha =z0*alpha+a(j);
   end
   A=-beta/alpha;B=A^2-2*beta/alpha;
   C=[A+((n-1)^0.5)*((n*B-A^2)^0.5)]/n;
   z1(k)=z0+1/C
   if abs(z1-z0)<epsilon  break
   end
   z0=z1(k);
end

   
