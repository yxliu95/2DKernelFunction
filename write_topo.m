% generate topo file
% ******************
clc;clear all
level=3; % level+1=²ãÊý
dx=0.8;
L=400.0;
number_structure=1;


%% 

for n=1:number_structure
    
%     height1=(rand(1)*2-1);
%     height2=(rand(1)*2-1);
%     mid1=(rand(1)*80-40);
%     mid2=(rand(1)*80-40);
    height1=0;
    height2=0;
    mid1=0;
    mid2=0;
    for k=1:1:int32(L/dx)+1
        for j=0:level
            x=-L/2+(double(k)-1)*dx;
            coord(k)=x;
            [h1(k,j+1),h2(k,j+1)]=topo(x,j,height1,mid1,height2,mid2);
        end
    end
    mii=min(h1);
    mxx=max(h1);
    
    dirname=['/input/para',num2str(n)];
    fid1=fopen(['./',dirname,'/inputt.dat'],'w');
    for k=1:1:int32(L/dx)+1
        for i=1:level+1
            fprintf(fid1,'%10.5f',h1(k,i));
        end
        fprintf(fid1,'\n');
    end

    fid1=fopen(['./',dirname,'/inputdt.dat'],'w');
    for k=1:1:int32(L/dx)+1
        for i=1:level+1
            fprintf(fid1,'%10.5f',h2(k,i));
        end
        fprintf(fid1,'\n');
    end

    fid2=fopen(['./',dirname,'/mint.dat'],'w');
    for k=1:1:level+1
        fprintf(fid2,'%10.5f\n',mii(k));
    end
    fid2=fopen(['./',dirname,'/maxt.dat'],'w');
    for k=1:1:level+1
        fprintf(fid2,'%10.5f\n',mxx(k));
    end
    
    fclose('all');
end

plot(coord,-h1(:,1))
hold on
plot(coord,-h1(:,2))
hold on
plot(coord,-h1(:,3))
hold on
plot(coord,-h1(:,4))

% axis equal
% axis ([-30000 30000 -4000 1000])
