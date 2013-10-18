function x=luGaussian(l,u,b,p)
n=length(b);
for i=1:n   
    m=b(p(i));
    for j=1:i-1
        m=m-l(i,j)*z(j);
    end
        z(i)=m;
end
for i=n:-1:1
    w=z(i);
    for j=i+1:n         
        w=w-u(i,j)*x(j);
    end
        x(i)=w/u(i,i);
end
    format rat