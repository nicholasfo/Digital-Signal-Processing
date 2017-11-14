N1=1024;

f1=7/40;
f2=9/40;
n1=0:99;
n2=0:999;
n3=0:29;
n4=0:9;

x1=sin(2*pi*f1*n1)+sin(2*pi*f2*n1);
x2=sin(2*pi*f1*n2)+sin(2*pi*f2*n2);
x3=sin(2*pi*f1*n3)+sin(2*pi*f2*n3);
x4=sin(2*pi*f1*n4)+sin(2*pi*f2*n4);

Y1=fft(x1, N1);
Y2=fft(x2, N1);
Y3=fft(x3, N1);
Y4=fft(x4, N1);

f1=linspace(0, 1, length(Y1));
f2=linspace(0, 1, length(Y2));
f3=linspace(0, 1, length(Y3));
f4=linspace(0, 1, length(Y4));

figure(3)
subplot(2, 2, 1);
plot(f1, abs(Y1));
title('lengde=1024');
xlabel('f');
ylabel('|X(f)|');

subplot(2,2,2);
plot(f2, abs(Y2));
title('lengde=1000');
xlabel('f');
ylabel('|X(f)|');

subplot(2, 2, 3);
plot(f3, abs(Y3));
title('lengde=30');
xlabel('f');
ylabel('|X(f)|');

subplot(2,2,4);
plot(f4, abs(Y4));
title('lengde=10');
xlabel('f');
ylabel('|X(f)|');