function x=lowerang(n,a,b)
for i=1:n
    s=b(i)
    for j=1:(i-1)
        s=s-a(i,j)*x(j)
    end
    x(i)=s/a(i,i)
end