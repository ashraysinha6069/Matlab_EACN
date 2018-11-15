clc;
close all;
clear all;
t=-5:.05:5;
unit_step = t>=0;
impulse = t == 0;
ramp = t
unit_shift = t>=1;
subplot(2,2,1);
plot(t,unit_step);
xlabel('time');
ylabel('u(t)');
title('Unit Step Function');
xlim([-5 5]);
ylim([-2 2]);

subplot(2,2,2);
plot(t, impulse);
xlabel('time');
ylabel('D(t)');
title('Impulse Function');
xlim([-3 3]);
ylim([-2 2]);

subplot(2,2,3);
plot(t, ramp);
xlabel('time');
ylabel('r(t)');
title('Ramp Function');
xlim([-5 5]);
ylim([-4 5]);

subplot(2,2,4);
plot(t, unit_shift);
xlabel('time');
ylabel('u(t-1)');
title('Unit Step Function');
xlim([-3 3]);
ylim([-2 2]);
