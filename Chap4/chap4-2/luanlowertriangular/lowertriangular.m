function x=lowertriangular(n,a,b,p)
for i=1:n
    s=b(p(i))
    for j=1:(i-1)
        s=s-a(p(i),j)*x(j)
    end
    x(i)=s/a(p(i),i)
end