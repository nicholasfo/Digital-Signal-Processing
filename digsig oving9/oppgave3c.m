

b = 1;
a = [1 sqrt(2) 1];

Hs = tf(b,a);
[bz,az] = impinvar(b,a);

Ha = tf(bz,az);