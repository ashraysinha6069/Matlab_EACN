fs = 1000; 
n = 1024; 
t = [0:1:n-1]*(1/fs); 
f = 100; 

x = 0.8*cos(2*pi*t*f);
subplot(3,1,1);
plot(t,x);
axis([0 0.05 -1 1]);
p = fft(x,n);
X = abs(p);
grid on;

k = 0:n-1;
subplot(3,1,2);
plot(k,X);
grid on;

Z=angle(p)*(180/pi);
subplot(3,1,3);
plot(k,Z);
grid on;