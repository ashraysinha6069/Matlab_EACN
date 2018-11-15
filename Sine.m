clc;
clear all;
close all;
t = -5:0.01:5;
f = 1;
y1 = sin(2*pi*f*t);
ut = t>=0;
y2 = y1.*ut;
y3 = exp(t).*y1+exp(t/2).*sin(19*pi*t);
y4 = sinc(t).*cos(20*pi*t);

subplot(2,2,1);
plot(t, y1);
xlabel('time');
ylabel('sin(2pift)');
title('Sine Function');
xlim([-5 5]);
ylim([-2 2]);

subplot(2,2,2);
plot(t, y2);
xlabel('time');
ylabel('sin(2pift).u(t)');
title('Sine Function');
xlim([-5 5]);
ylim([-2 2]);

subplot(2,2,2);
plot(t, y2);
xlabel('time');
ylabel('sin(2pift).u(t)');
title('Sine Function');
xlim([-5 5]);
ylim([-2 2]);

subplot(2,2,2);
plot(t, y2);
xlabel('time');
ylabel('sin(2pift).u(t)');
title('Sine Function');
xlim([-5 5]);
ylim([-2 2]);

subplot(2,2,3);
plot(t, y3);
xlabel('time');
ylabel('e^(-t).sin(2pift)+e^(-t/2).sin(19pit');
title('Sine Function');
xlim([-5 5]);
ylim([-2 2]);

subplot(2,2,4);
plot(t, y4);
xlabel('time');
ylabel('sinc(t).cos(20pi*t)');
title('Sine Function');
xlim([-5 5]);
ylim([-2 2]);

