function [out]=uniquant(k)
m=max(k)
n=min(k)
s=(m-n)/16;
l=length(k)/2;
intervals=n:s:m;
for i=1:l
    x=k(i);
    for j=0:14
        if (x>intervals(j+1))
            if (x<intervals(j+2))
            out(i)=j;
            end
        end
    end
end
end