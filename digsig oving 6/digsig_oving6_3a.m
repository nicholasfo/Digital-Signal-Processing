f1 = 7/40;
f2 = 9/40; 
n = 0:0.1:0.4;

x = sin(2*pi*f1*n) + sin(2*pi*f2*n);

X = fft(x,100);

f = linspace(0, 1, length(X));

plot(f,abs(X));