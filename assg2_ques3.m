clc;
clear all;
close all;
t=-2:.01:2;
x1= t>=-1;
x2 = t>=1;
xt=x1-x2;

subplot(2,2,1);
plot(t,xt);
xlabel('time');
ylabel('x(t)');
title('plot');
xlim([-3 3]);
ylim([-1 3]);

ut = t>=0
ht=xt
subplot(2,2,2);
plot(t,ht);
xlabel('time');
ylabel('h(t)');
title('plot2');
xlim([-3 3]);
ylim([-1 3]);

u=conv(xt,ht);
subplot(2,2,3);
tt=-4:0.01:4;
plot(tt,u*0.01);
xlabel('time');
ylabel('h(t)');
title('plot2');
xlim([-4 4]);
ylim([-1 4]);
