function [l,u]=doolittle(n,a)
for k=1:n
    l(k,k)=1;
    for j=k:n
        p=a(k,j);
        for s=1:(k-1)
            p=p-l(k,s)*u(s,j);
        end
        u(k,j)=p
        for i=(k+1):n
            q=a(i,k)
            for s=1:(k-1)
                q=q-l(i,s)*u(s,k)
            end
            l(i,k)=q/u(k,k)
        end
    end
end