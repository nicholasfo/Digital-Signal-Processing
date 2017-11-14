function computeCoeff(fc,window) = value

Fs = 48000;  % Sampling Frequency

N    = 10;       % Order
flag = 'scale';  % Sampling Flag

% Create the window vector for the design algorithm.
win = window(N+1);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, fc/(Fs/2), 'low', win, flag);

end

computeCoeff(0.2,hammer)