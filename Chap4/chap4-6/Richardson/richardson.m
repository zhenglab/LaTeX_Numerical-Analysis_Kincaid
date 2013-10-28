function [k,x,r]=richardson(n,a,b,x,M)
for k=1:M
    for i=1:n
        s=b(i)
        for j=1:n
            s=s-a(i,j)*x(j)
        end
        r(i)=s
    end
    for i=1:n
        x(i)=x(i)+r(i)
    end
end
       