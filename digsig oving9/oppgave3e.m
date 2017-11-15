
%kode og plot fra 3b
b = 1;
a = [1 sqrt(2) 1];
[h,w] = freqs(b,a);

%Kode og plot for 3e T = 0.25
T1 = 0.25; 
b1 = [0, sqrt(2)*exp(-T1/sqrt(2))*sin(T1/sqrt(2))]; 
a1 = [1, -2*exp(-T1/sqrt(2))*cos(T1/sqrt(2)), exp(-sqrt(2)*T1)];

[H1,w1] = freqz(b1,a1);

%Kode og plot for 3e T = 1.4
T2 = 1.4; 
b2 = [0 sqrt(2)*exp(T2/sqrt(2))*sin(T2/sqrt(2))];
a2 = [1, -2*exp(-T2/sqrt(2))*cos(T2/sqrt(2)), exp(-sqrt(2)*T2)];

[H2,w2] = freqz(b2,a2);


figure
ax1 = subplot(3,1,1);
plot (w, 20*log10(abs(h)));
grid on
title ('Magnitude response of 2nd order of LP BWF')

ax2 = subplot(3,1,2);
plot (w1,20*log10(abs(H1))/max(abs(H1)));
grid on
title('Magnitude response for H(z) with wc = 0.25')

ax3 = subplot(3,1,3);
plot (w2,20*log10(abs(H2))/max(abs(H2)));
grid on
title('Magnitude response for H(z) with wc = 1.4')


