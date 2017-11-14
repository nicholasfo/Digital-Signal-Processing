f=0:1/100:2*pi;

sigma=[1.0221 1.0035 1.006];
ak_1=0.3448;
ak_2=[0.03914 0.1350];
ak_3=[0.3986 0.01560 0.0538];

power_1=(sigma(1)^2)./(abs((1+ak_1*exp(-j*2*pi*f*1))).^2);

power_function=1.16-0.8*cos(2*pi*f);

figure
subplot(3,1,1);
plot(f, power_1, 'color', 'r');
hold on;
plot(f, power_function, 'color', 'b');
xlabel('f');
ylabel('Power density spectrum');
legend('estimated power density', 'calculated power density');
axis([0 1 0 5]);

subplot(3,1,2);
power_2=(sigma(2)^2)./(abs((1+ak_2(1)*exp(-j*2*pi*f*1)+ak_2(2)*exp(-j*2*pi*f*2))).^2);
plot(f, power_2, 'color', 'r');
hold on;
plot(f, power_function, 'color', 'b');
xlabel('f');
ylabel('Power density spectrum');
legend('estimated power density', 'calculated power density');
axis([0 1 0 5]);


subplot(3,1,3);
power_3=(sigma(3)^2)./(abs((1+ak_3(1)*exp(-j*2*pi*f*1)+ak_3(2)*exp(-j*2*pi*f*2)+ak_3(3)*exp(-j*2*pi*f*3))).^2);
plot(f, power_3, 'color', 'r');
hold on;
plot(f, power_function, 'color', 'b');
xlabel('f');
ylabel('Power density spectrum');
legend('estimated power density', 'calculated power density');
axis([0 1 0 5]);