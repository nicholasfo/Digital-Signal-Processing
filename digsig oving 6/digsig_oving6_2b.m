N_x = 28; 
n = 0:N_x-1;
k = 1;
f = 0:1/10000:1;

x_n = 0.9.^n;

N_1 = N_x/4;
N_2 = N_x/2;
N_3 = N_x;
N_4 = 2*N_x;

X1 = fft(x_n,N_1);
X2 = fft(x_n,N_2);
X3 = fft(x_n,N_3);
X4 = fft(x_n,N_4);


X_f = (1-(0.9*exp(-j*2*pi*f).^N_x))./(1-(0.9*exp(-j*2*pi*f)));


f1=linspace(0, 1, length(X1));
f2=linspace(0, 1, length(X2));
f3=linspace(0, 1, length(X3));
f4=linspace(0, 1, length(X4));

N=Nx+Nh-1;
N1=N/4;
N2=N/2;
N3=2*N;

H=fft(h, N); X=fft(x, N); Y=H.*X;
H1=fft(h, N1); X1=fft(x, N1); Y1=H1.*X1;
H2=fft(h, N2); X2=fft(x, N2); Y2=H2.*X2;
H3=fft(h, N3); X3=fft(x, N3); Y3=H3.*X3;

y=ifft(Y); y1=ifft(Y1); y2=ifft(Y2); y3=ifft(Y3);
figure(2)
subplot(2,2,1);
stem(y);
title('Ny');

subplot(2,2,2);
stem(y1);
title('Ny/4');

subplot(2,2,3);
stem(y2);
title('Ny/2');

subplot(2,2,4);
stem(y3);
title('2*Ny');

