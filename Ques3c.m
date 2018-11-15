clc;
clear all;
close all;
t = -20:0.5:20;
t=3*t;
y  =(-2<t).*(-4-2*t).*(t<=0)+(0<t).*(-4+3*t).*(t<=4)+(4<t).*(16-2*t).*(t<=8) ;
y=y/2;

plot(t, y);
xlabel('time');
ylabel('g(t)');
title('g(t) Function');
xlim([-10 10]);
ylim([-5 5]);
