clc;
clear all;
close all;

t=-5:.01:5;
x1= t>=-1;
x2 = t>=1;
x=x1-x2;
h=x;

y1=conv(x,h,'same');
subplot(4,2,1);
plot(t,y1*0.01);
xlabel('time');
ylabel('h(t)');
title('plot2');
xlim([-4 4]);
ylim([-1 5]);


y2=conv(x,h,'same');
subplot(4,2,2);
plot(t,y2*0.01);
xlabel('time');
ylabel('h(t)');
title('plot2');
xlim([-4 4]);
ylim([-1 5]);

x3=x+x;
x4=conv(x3,h,'same');
subplot(4,2,3);
plot(t,x4*0.01);
xlabel('time');
ylabel('(x3=x1+x2)(t)');
title('Additive Property');
xlim([-4 4]);
ylim([-1 5]);


y3=y1+y2;
subplot(4,2,4);
plot(t,y3*0.01);
xlabel('time');
ylabel('(Y3=y1+y2)(t)');
title('Additive Proprty');
xlim([-4 4]);
ylim([-1 5]);

x4=4.*x;
x5=conv(x4,h,'same');
subplot(4,2,5);
plot(t,x5*.01);
xlabel('time');
ylabel('(x4=4*x)(t)');
title('Scaling Proprty');
xlim([-14 14]);
ylim([-1 15]);

y4=4.*y1;
subplot(4,2,6);
plot(t,y4*.01);
xlabel('time');
ylabel('(Y4=4*y1)(t)');
title('Scaling Proprty');
xlim([-14 14]);
ylim([-1 15]);



