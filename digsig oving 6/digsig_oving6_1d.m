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


plot(f,abs(X_f));

f1=linspace(0, 1, length(X1));
f2=linspace(0, 1, length(X2));
f3=linspace(0, 1, length(X3));
f4=linspace(0, 1, length(X4));

