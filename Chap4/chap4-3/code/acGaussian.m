function y=acGaussian(a,c,p)
n=length(p);
for j=1:n
    m=c(j);
    for i=1:j-1
        m=m-a(p(i),j)*z(i);
    end
        z(j)=m/a(p(j),j);
end
for j=n:-1:1
    w=z(j);
    for i=j+1:n         
        w=w-a(p(i),j)*y(p(i))
    end
        y(p(j))=w;
end
    format rat