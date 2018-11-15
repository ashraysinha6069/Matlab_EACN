clc;
clear all;
close all;
t = linspace(-2,2,10000);   % time
f = 0*t;                    % creates a zero valued function
 
N=15;                        % number of non-zero terms
for k=0:1:N-1
 
    f_k = (4/pi)*(1/(2*k+1))*sin(2*pi*(2*k+1)*t);   % computes the k-th term of the series
    f = f + f_k;                                    % adds the k-th term to f
end
plot(t, f, 'blue');
grid on;
xlabel('t');
ylabel('f(t)');
title(strcat('Fourier synthesis of a square wave function with N=', int2str(N), ' non-zero terms.' ));