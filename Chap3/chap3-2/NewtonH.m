function x=NewtonH(a,z_0,M,epsilon)
for j=1:M
    [alpha,beta]=Horner3(a,z_0);
    alph=vpa(alpha,6);
    bet=vpa(beta,6);
    z_1=z_0-alpha/beta;
    x=z_1;
    x=vpa(x,5)
    if abs(z_1-z_0)<epsilon
        break
    end
     z_0=z_1;       
end
    