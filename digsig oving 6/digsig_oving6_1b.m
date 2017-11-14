N_x = 28; 
n = 0:N_x-1;

x_n = 0.9.^n;

N_1 = N_x/4;
N_2 = N_x/2;
N_3 = N_x;
N_4 = 2*N_x;

X1 = fft(x_n,N_1);
X2 = fft(x_n,N_2);
X3 = fft(x_n,N_3);
X4 = fft(x_n,N_4);