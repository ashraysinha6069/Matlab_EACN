clc;
clear all;

t=-1:0.01:1;                     
t0 = t<=-0.5 | t>=0.5;
t1 = t>-0.5 & t<0.5;
gate =  1.*t1;
subplot(2,2,1)
plot(t,gate)
xlim([-1 1]);
ylim([-1 2]);
%To d;1o Fourier transform
w=-50:0.01:50;
for m=1:length(w)
g(m) = trapz(t,(gate.*exp(-1i*w(m)*t)));
end
subplot(2,2,2)
plot(w,abs(g));
%xlim([-2 2]);
%ylim([-2 2]);

z=angle(g);
subplot(2,2,3);
plot(w,z);
z=180*angle(g)/pi;
subplot(2,2,4);
plot(w,z);