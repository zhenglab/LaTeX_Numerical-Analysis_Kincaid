function a=Gaussian(a)
n=length(a);
for k=1:n-1
    for i=k+1:n
        z=a(i,k)/a(k,k);
        a(i,k)=0;
        for j=k+1:n
            a(i,j)=a(i,j)-z*a(k,j);
        end
    end
end