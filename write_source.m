% tmax=1/df;
% fc=centerf;

tmax=1;
fc=15;
t0=0.08;
coeIO=2;
for j=1:1000
    o=2.0*pi*(j-1)/tmax+coeIO*1i*pi/tmax;
    oc=2*pi*fc;        % center radial frequency
    coe=(o/oc)^2;
    stf=-4*sqrt(pi)/oc*coe*exp(-coe)*exp(1i*o*t0);     % Ricker子波的震源时间函数
    stff(j)=stf;
end
srct=real(fft(stff,8192));

% fid1=fopen('./rickert.dat','w');
fid1=fopen(['./',dirname,'/rickert.dat'],'w');
for k=1:1:j-1
    fprintf(fid1,'%40.13f  %40.13f\n',real(stff(k)),imag(stff(k)) );
end
fclose('all');
