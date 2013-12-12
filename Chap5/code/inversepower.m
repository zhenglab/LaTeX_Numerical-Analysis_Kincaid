function [x,r]=inversepower(A,x,M)
for k=1:M
    y=A\x
    r=linearFun(y)/linearFun(x)
    x=y/max(abs(y))
end
