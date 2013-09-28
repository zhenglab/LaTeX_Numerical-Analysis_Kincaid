function [u,v,b]=Bairstow(a,u,v,M)
n=length(a);b(n)=a(n);c(n)=0;c(n-1)=a(n);
for j=1:M
    b(n-1)=a(n-1)+u*b(n);
    for k=n-2:-1:1
        b(k)=a(k)+u*b(k+1)+v*b(k+2);
        c(k)=b(k+1)+u*c(k+1)+v*c(k+2);
    end
    J=c(1)*c(3)-c(2)^2;
    u=u+(c(2)*b(2)-c(3)*b(1))/J;
    v=v+(c(2)*b(1)-c(1)*b(2))/J;
    
end
   u=vpa(u,14)
   v=vpa(v,14) 
