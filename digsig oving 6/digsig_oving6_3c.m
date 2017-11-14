n=0:99;

f1=7/40;
f2=9/40;

N1=256;
N2=128;

x=sin(2*pi*f1*n)+sin(2*pi*f2*n);

Y1=fft(x, N1);
Y2=fft(x, N2);

f1=linspace(0, 1, length(Y1));
f2=linspace(0, 1, length(Y2));

figure(4)
subplot(2, 1, 1);
plot(f1, abs(Y1));
title('DFT length=256');
xlabel('f');
ylabel('|X(f)|');

subplot(2,1,2);
plot(f2, abs(Y2));
title('DFT length=128');
xlabel('f');
ylabel('|X(f)|');