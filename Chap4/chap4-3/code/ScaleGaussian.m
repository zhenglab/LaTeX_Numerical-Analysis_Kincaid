function x=ScaleGaussian(a,b)
n=length(a);
for i=1:n
    p(i)=i;
    smax=0;
    for j=1:n
    smax=max(smax, abs(a(i,j)));
    end
    s(i)=smax;
end 
for k=1:n-1
    format rat
    rmax=0;
    for i=k:n
        r=abs(a(p(i),k))/s(p(i))
        if r>rmax
            rmax=r;
            j=i;
        end
    end
    c=p(k);p(k)=p(j);
    p(j)=c;   
    for i=k+1:n
        z=a(p(i),k)/a(p(k),k);
        a(p(i),k)=z;
        for j=k+1:n
            a(p(i),j)=a(p(i),j)-z*a(p(k),j)
        end
    end 
    for i=k+1:n
        b(p(i))=b(p(i))-a(p(i),k)*b(p(k))
    end
end
for i=n:-1:1
    q=b(p(i))
    for j=i+1:1:n
        q=q-a(p(i),j)*x(j);
    end
    x(i)=q/a(p(i),i);
end
    

