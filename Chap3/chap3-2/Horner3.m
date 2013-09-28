function [alpha,beta]=Horner3(a,z_0)
n=length(a);
alpha=a(n);
beta=0;
for k=n-1:-1:1
    beta=alpha+z_0*beta;
    alpha=a(k)+z_0*alpha;
end
  
