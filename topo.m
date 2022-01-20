function [r,dr]=topo(x,j,height1,mid1,height2,mid2)
if (j==0)
    
    r=0;
    dr=0;
    
end
if (j==1)   
    n=height1;
    r=10.0+n*exp(-(x-mid1)^2/2/10^2);        
    dr=n*exp(-(x-mid1)^2/2/10^2);

end
if (j==2)
    n=height2; 
    r=20+n*exp(-(x-mid2)^2/2/10^2);        
    dr=n*exp(-(x-mid2)^2/2/10^2);

end
if (j==3)
    
    r=40;    
    dr=0;
    
end
end