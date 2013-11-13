function x=SteepestDescent(x,A,b,M)
for k=1:M
    v=b-A*x;
    t=dot(v,v)/dot(v,A*v);
    x=x+t*v;
end