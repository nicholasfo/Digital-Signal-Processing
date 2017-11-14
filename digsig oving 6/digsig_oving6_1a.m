N_x = 28; 

f = 0:1/10000:1;
X_f = (1-(0.9*exp(-j*2*pi*f).^N_x))./(1-(0.9*exp(-j*2*pi*f)));
plot(f,abs(X_f));