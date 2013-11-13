function x=ConGradient(x,A,b,M,epsilon,delta)
r=b-A*x;
v=r;
c=dot(r,r);
for k=1:M
    if sqrt(dot(v,v))<delta
        break
    end
    z=A*v;
    t=c/dot(v,z);
    x=x+t*v;
    r=r-t*z;
    d=dot(r,r)
    if d<epsilon
        break
    end
    v=r+(d/c)*v;
    c=d;      
end
