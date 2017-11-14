ym2=0;
ym1=-0.4;
y0=1.16;
y1=-0.4;
y2=0;
y3=0;

a1=-y1/y0

sigma_1=y0+a1*y1

order2_left=[y0 ym1; y1 y0];
order2_right=[y1 y2];

coefficients_2=-order2_right*order2_left^-1

sigma_2=y0+coefficients_2(1)*y1+coefficients_2(2)*y2

order3_left=[y0 ym1 ym2; y1 y0 ym1; y2 y1 y0];
order3_right=[y1 y2 y3];

coefficients_3=-order3_right*order3_left^-1

sigma_3=y0+coefficients_3(1)*y1+coefficients_3(2)*y2+coefficients_3(3)*y3

%%