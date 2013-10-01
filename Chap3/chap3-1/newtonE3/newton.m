function [x1,v]=newton(x0,M,p,q)
v=newf(x0)
if abs(v)<p
    return
end
for k=1:M
    x1=x0-v/newdf(x0)
    v=newf(x1)
 if abs(x1-x0)<p || abs(v)<q
     return
 end
 x0=x1; 
end