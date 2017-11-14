Fs=8000;

x_a=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/a.wav');
x_e=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/e.wav');
x_i=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/i.wav');
x_o=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/o.wav');
x_u=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/u.wav');
x_y=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/y.wav');
x_ae=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/ae.wav');
x_oe=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/oe.wav');
x_aa=audioread('C:\Users\nicho\Desktop\Assignment8/Vowels/aa.wav');

lpc_a=lpc(x_a, 10);
lpc_e=lpc(x_e, 10);
lpc_i=lpc(x_i, 10);
lpc_o=lpc(x_o, 10);
lpc_u=lpc(x_u, 10);
lpc_y=lpc(x_y, 10);
lpc_ae=lpc(x_ae, 10);
lpc_oe=lpc(x_oe, 10);
lpc_aa=lpc(x_aa, 10);

sound(x_e, Fs);

a=filter(lpc_e, 1, x_e);
pause(1);
sound(a, Fs);

x_i2=filter(1, lpc_,, a);
pause(1);
sound(x_i2, Fs);