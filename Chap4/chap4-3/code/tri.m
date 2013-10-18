function x=tri(a,b,c,d)
n=length(d);
for i=2:n
    d(i)=d(i)-(a(i-1)/d(i-1))*c(i-1);
    b(i)=b(i)-(a(i-1)/d(i-1))*b(i-1);
end
x(n)=b(n)/d(n);
for i=n-1:-1:1
    x(i)=(b(i)-c(i)*x(i+1))/d(i);
end