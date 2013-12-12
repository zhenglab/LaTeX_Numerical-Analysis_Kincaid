function d=lessStorage(n,x,y)
for i=1:n
    d(i)=y(i);
end
for j=2:n
    for i=n:-1:j
        d(i)=(d(i)-d(i-1))/(x(i)-x(i-j+1));
    end
end
    