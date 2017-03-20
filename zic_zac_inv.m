function [z]=zic_zac_inv(k,m)
val=(m+1)*(m/2);
ind=0;
i=1;
j=1;
ind=ind+1;
z(i,j)=k(ind);
while (ind<val)
    if (j<m)
        if (i==1)
        j=j+1;
        if (ind<val)
        ind=ind+1;
z(i,j)=k(ind);
        end
        end
    end
    while(j>1)
        i=i+1;
        j=j-1;
       if (ind<val) 
        ind=ind+1;
z(i,j)=k(ind);
       end
    end
    if (i<m)
        if (j==1)
        i=i+1;
        if (ind<val)
        ind=ind+1;
        z(i,j)=k(ind);
        end
        end
    end
    while(i>1)
        i=i-1;
        j=j+1;
        if (ind<val)
        ind=ind+1;
        z(i,j)=k(ind);
        end
    end
end
i=m;
j=1;
while (ind<(m*m))
        if (i==m)
        j=j+1;
        if (ind<(m*m))
        ind=ind+1;
z(i,j)=k(ind);
        end
        end
    while(j<m)
        i=i-1;
        j=j+1;
       if (ind<(m*m)) 
        ind=ind+1;
z(i,j)=k(ind);
       end
    end
        if (j==m)
        i=i+1;
        if (ind<(m*m))
        ind=ind+1;
        z(i,j)=k(ind);
        end
        end
    while(i<m)
        i=i+1;
        j=j-1;
        if (ind<(m*m))
        ind=ind+1;
        z(i,j)=k(ind);
        end
    end
end
end