function c=dividedDifferences(n,c,x)
for j=2:n
    for i=1:(n-j+1)
        c(i,j)=(c(i+1,j-1)-c(i,j-1))/(x(i+j-1)-x(i));
    end
end