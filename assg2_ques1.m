clc;
clear all;
close all;
t=-10:.01:10;
x1= t>=3;
x2 = t>=5;
xt=x1-x2;

subplot(2,2,1);
plot(t,xt);
xlabel('time');
ylabel('x(t)');
title('plot');
xlim([-5 10]);
ylim([-1 3]);

ut = t>=0
ht=exp(-3*t).*ut;
subplot(2,2,2);
plot(t,ht);
xlabel('time');
ylabel('h(t)');
title('plot2');
xlim([-5 10]);
ylim([-1 3]);


u=conv(xt,ht);
subplot(2,2,3);
tt=-20:0.01:20;
plot(tt,u*0.01);