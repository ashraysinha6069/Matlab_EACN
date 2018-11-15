clc;
clear all;
close all;
t=-10:0.01:10;
N=30;
xt=0*t;

for k=1:2:N
    x= (2/pi)*(1/k)*sin(pi*k*t);
    xt=xt+x;
end

plot(t,xt)
xlim([-4 4]);
ylim([-2 2]);
grid on;
title('fourier Series');
