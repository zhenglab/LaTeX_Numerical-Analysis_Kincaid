function x=PCG(x,A,b,M,Q,delta,epsilon)
r=b-A*x
n=length(Q);
for k=1:n
    z(k)=r(k)/Q(k,k)
end
v=z'
c=dot(z,r)
for k=1:M
    if sqrt(dot(v,v))<delta
        break
    end
    z=A*v;
    t=c/dot(v,z);
    x=x+t*v;
    r=r-t*z;
    for k=1:n
    z(k)=r(k)/Q(k,k);
    end
    d=dot(z,r);
    if d<epsilon
        if dot(r,r)<epsilon
            break
        end
    end
    v=z+(d/c)*v;
    c=d;
end
