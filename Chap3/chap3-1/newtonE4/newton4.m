function [i,x,y,G]=newton4(x,y,h,M,N)
for i=1:M
    x = x+h
   for j=1:N
        f=F(x,y);
        fy=Fy(y);
        y = y-f/fy;
    end
    y=y
    G=f
end