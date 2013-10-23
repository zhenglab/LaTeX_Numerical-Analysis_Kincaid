function [l,u]=crout(n,a)
for k=1:n
    u(k,k)=1;
    for i=k:n
        p=a(i,k);
        for s=1:(k-1)
        p=p-l(i,s)*u(s,k);
        end
    l(i,k)=p;
    end
    for j=(k+1):n
        q=a(k,j);
        for m=1:(k-1)
        q=q-l(k,m)*u(m,j);
        end
        u(k,j)=q/l(k,k);
    end
    format rat
end
    
 
