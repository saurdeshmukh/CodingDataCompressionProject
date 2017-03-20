function [ind,k]=zic_zac(mat)
k=[];
[m,n]=size(mat);
val=(m+1)*(m/2);
ind=0;
i=1;
j=1;
ind=ind+1;
k(ind)=mat(i,j);
while (ind<val)
    if (j<m)
        if (i==1)
        j=j+1;
        if (ind<val)
        ind=ind+1;
k(ind)=mat(i,j);
        end
        end
    end
    while(j>1)
        i=i+1;
        j=j-1;
       if (ind<val) 
        ind=ind+1;
k(ind)=mat(i,j);
       end
    end
    if (i<m)
        if (j==1)
        i=i+1;
        if (ind<val)
        ind=ind+1;
        k(ind)=mat(i,j);
        end
        end
    end
    while(i>1)
        i=i-1;
        j=j+1;
        if (ind<val)
        ind=ind+1;
        k(ind)=mat(i,j);
        end
    end
end
i=m;
j=1;
while (ind<(m*n))
        if (i==m)
        j=j+1;
        if (ind<(m*n))
        ind=ind+1;
k(ind)=mat(i,j);
        end
        end
    while(j<m)
        i=i-1;
        j=j+1;
       if (ind<(m*n)) 
        ind=ind+1;
k(ind)=mat(i,j);
       end
    end
        if (j==m)
        i=i+1;
        if (ind<(m*n))
        ind=ind+1;
        k(ind)=mat(i,j);
        end
        end
    while(i<m)
        i=i+1;
        j=j-1;
        if (ind<(m*n))
        ind=ind+1;
        k(ind)=mat(i,j);
        end
    end
    end
    end
    
        
        