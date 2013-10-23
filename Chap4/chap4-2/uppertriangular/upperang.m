function x=upperang(n,a,b)
for i=n:-1:1
    s=b(i);
    for j=(i+1):n
        s=s-a(i,j)*x(j);
    end
    x(i)=s/a(i,i);
end