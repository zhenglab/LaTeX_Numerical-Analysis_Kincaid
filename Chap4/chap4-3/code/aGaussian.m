function x=aGaussian(a,b,p)
n=length(a);
for i=1:n
    m=b(p(i));
    for j=1:i-1
        m=m-a(p(i),j)*z(j)
    end
        z(i)=m
end
for i=n:-1:1
    w=z(j);
    for j=i+1:n         
        w=w-a(p(i),j)*x(j);
    end
        x(i)=w/a(p(i),i);
end
    format rat