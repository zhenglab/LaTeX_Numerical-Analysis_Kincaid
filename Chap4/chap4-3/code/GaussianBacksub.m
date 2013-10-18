function x=GaussianBacksub(a,b)
n=length(a);
for k=1:n-1
    for i=k+1:n
        z=a(i,k)/a(k,k);a(i,k)=0;
        for j=k+1:n
            a(i,j)=a(i,j)-z*a(k,j);
        end
        b(i)=b(i)-z*b(k);
    end
end
for i=n:-1:1
    s=b(i);
    for j=i+1:1:n
        s=s-a(i,j)*x(j);
    end
    x(i)=s/a(i,i);
end
