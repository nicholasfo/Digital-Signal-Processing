Nx=28;
n1=0:1:Nx-1;
Nh=9;
n2=0:1:Nh-1;
h=ones(1, length(n2));
x=0.9.^n1;



y=conv(x, h);

length(y);
stem(y);
xlabel('n');
ylabel('y(n)');

