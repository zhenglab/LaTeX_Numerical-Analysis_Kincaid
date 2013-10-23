function l=cholesky(n,a)
for k=1:n
    p=a(k,k);
    for s=1:(k-1)
        p=p-[l(k,s)]^2;
    end
    l(k,k)=p^(1/2);
    for i=(k+1):n
        q=a(i,k);
        for m=1:(k-1)
            q=q-l(i,m)*l(k,m);
        end
        l(i,k)=q/l(k,k);
    end
end