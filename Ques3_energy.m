clc;
clear all;
close all;
t=-5:0.01:5;
xt=-3*t;
xsq=xt.^2;
T=10;
power=trapz(t,xsq)/T;
disp(['(b)Power= ',num2str(power)]);