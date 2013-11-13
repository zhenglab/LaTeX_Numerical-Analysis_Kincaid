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
