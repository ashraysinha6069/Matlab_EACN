clc;
clear all;
close all;

t=-20:.01:20;

y1=square(pi*t);
subplot(2,1,1);
plot(t,0.5+(y1*0.5));
xlabel('time');
ylabel('h(t)');
title('plot2');
xlim([-6 6]);
ylim([-2 2])
