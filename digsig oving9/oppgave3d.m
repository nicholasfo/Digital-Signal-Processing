
f1 = 0.25;
f2 = 1.4;
fs = 10;

%Setter opp Butterworth med f1 = 0.25
%Setter deretter opp det digitale filteret
[b1,a1] = butter(2,2*pi*f1,'s');
[bz1,az1] = impinvar(b1,a1,fs);

%Setter opp Butterworth med f1 = 1.4
%Setter deretter opp det digitale filteret
[b2,a2] = butter(2,2*pi*f2,'s');
[bz2,az2] = impinvar(b2,a2,fs);

%Transferfunksjonene for de respektive BWF
h1 = tf(b1,a1);
h2 = tf(b2,a2);

%Transferfunksjonene for de respektive IIRF
hz1 = tf(bz1,az1);
hz2 = tf(bz2,az2);
