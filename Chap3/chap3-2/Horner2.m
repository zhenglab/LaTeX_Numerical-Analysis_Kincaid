function a=Horner2(a,z_0)
n=length(a);
for k=1:n-1
    for j=n-1:-1:k
        a(j)=a(j)+(z_0)*a(j+1)
    end
end
