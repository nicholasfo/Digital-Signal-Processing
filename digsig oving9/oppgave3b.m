

b = 1;
a = [1 sqrt(2) 1];
[h,w] = freqs(b,a);
plot (w, 20*log10(abs(h)));
grid on;
title('Magnitude response of 2nd order BW filter')
ylabel ('Magnitude (dB)')
xlabel ('Omega')
hold on