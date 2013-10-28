function x=Jacobii(n,A,b,x,M)
for k=1:M
    for i=1:n
        d=1/A(i,i);
        b(i)=d*b(i);
        for j=1:n
            A(i,j)=d*A(i,j);
        end
    end
    for i=1:n
        u(i)=b(i);
        for j=1:n
            u(i)=u(i)-A(i,j)*x(j);
        end
        u(i)=u(i)+A(i,i)*x(i);
    end
    for i=1:n
        x(i)=u(i);
    end
end