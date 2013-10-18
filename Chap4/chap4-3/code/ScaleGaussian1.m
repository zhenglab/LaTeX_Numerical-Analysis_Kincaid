function x=ScaleGaussian(a,b)
n=length(a);
for i=1:n
    p(i)=i; 
    smax=0;
    for j=1:n
    smax=max(smax, abs(a(i,j)));
    end
    s(i)=smax;
end 
for k=1:n-1
    format rat rmax=0;
    for i=k:n
        r=abs(a(p(i),k))/s(p(i))
        if r>rmax
            rmax=r;j=i;
        end
    end
