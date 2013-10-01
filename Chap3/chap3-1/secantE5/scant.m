function [a,fa]=scant(a,b,M,p,q)
fa=sca(a);fb=sca(b)
for k=1:M
    if abs(fa)>abs(fb)
        c=b;b=a;a=c
        fd=fb;fb=fa; fa=fd
    end
 s=(b-a)/(fb-fa);
 b=a;
 fb=fa;
 a=a-fa*s
 fa=sca(a)
 if abs(fa)<p || abs(b-a)<q
     break
 end
end