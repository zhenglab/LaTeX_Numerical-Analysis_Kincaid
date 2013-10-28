function [k, x]=jacobi(n,a,b,x,M)
for k=1:M
    for i=1:n
        d=1/a(i,i)
        b(i)=d*b(i)
        for j=1:n
            a(i,j)=d*a(i,j)
        end
    end
    for i=1:n
        u(i)=b(i)
        for j=1:n
         u(i)=u(i)-a(i,j)*x(j)
        end
         u(i)=u(i)+a(i,i)*x(i)
    end
    for i=1:n
        x(i)=u(i)
    end
end
