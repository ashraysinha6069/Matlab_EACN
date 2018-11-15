clc;
clear all;
close all;
t = -20:0.5:20;
y  =(-2<t).*(-4-2*t).*(t<=0)+(0<t).*(-4+3*t).*(t<=4)+(4<t).*(16-2*t).*(t<=8) ;


plot(t, y);
xlabel('time');
ylabel('g(t)');
title('g(t) Function');
xlim([-20 20]);
ylim([-10 10]);
