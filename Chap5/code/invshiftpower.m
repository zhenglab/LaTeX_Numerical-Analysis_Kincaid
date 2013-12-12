function [x,r]=invshiftpower(A,x,M,u, I)
for k=1:M
    y=(A-u*I)\x
    r=linearFun(y)/linearFun(x)
    x=y/max(abs(y))
end
