x=4;M=20
for k=1:M 
    x=4+1/3*sin(2*x);
    x=vpa(x,8)
end
