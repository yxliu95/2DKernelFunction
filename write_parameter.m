clc;clear all
L=400;
dx=0.25;
xs=-200;
zs=5.0;
slayer=1;

f0=0.0;
centerf=15;
df=1;
nf=80;
coeIO=2;
force=10000;
level=3;

t0=0.08;
number_structure=1;

kk=1;
for i=-70:10:20
    for j=-50:10:40
        hi(kk)=i;
        hj(kk)=j;
        kk=kk+1;
    end
end

for j=1:number_structure
%     for i=1:level+1
%         vs(i)=180*i+rand(1)*20;
%     end
%     for i=1:level+1
%         rou(i)=1800+rand(1)*200;
%     end
    vs(1)=200;%+rand(1)*30;
    vs(2)=350;%+hi(j)+rand(1)*30;
    vs(3)=250;% hj(j)+rand(1)*30;
    vs(4)=600;%+rand(1)*50;
    
    rou(1)=1780;%+rand(1)*20;
    rou(2)=1850;%+rand(1)*20;
    rou(3)=1800;%+rand(1)*20;
    rou(4)=1930;%+rand(1)*50;
    
    dirname=['input/para',num2str(j)];
    mkdir(dirname)
    fid=fopen(['./',dirname,'/parameter.dat'],'w');
    fprintf(fid,'%8.3f\n',L);
    fprintf(fid,'%8.3f\n',dx);
    for i=1:max(size(vs))
        fprintf(fid,'%8.3f ',vs(i));
    end
    fprintf(fid,'\n');
    for i=1:max(size(rou))
        fprintf(fid,'%8.3f ',rou(i));
    end
    fprintf(fid,'\n');
    fprintf(fid,'\n');
    fprintf(fid,'%8.3f\n',xs);
    fprintf(fid,'%8.3f\n',zs);
    fprintf(fid,'%8i\n',slayer);
    fprintf(fid,'\n');
    fprintf(fid,'%8.3f\n',f0);
    fprintf(fid,'%8.3f\n',df);
    fprintf(fid,'%8i\n',nf);
    fprintf(fid,'%8.3f\n',force);
    
    write_source
    
    cd(dirname)
    mkdir output
    cd .. 
    cd ..
    
    fclose('all');
    
end

% rmdir('input\para*','s');