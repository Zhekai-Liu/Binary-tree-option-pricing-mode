% x = delta*S_0 + phi*Y_0
u = 1.4;
d = 0.8;
h = 1.5;
l = 0:0.01:0.6;
S_0 = 20;
Y_0 = 25;

f_u = 2*u*S_0;
f_d = 2*d*S_0;
I = ones(1,61);
delta = (l.*f_u - I.*h*f_d) ./ (S_0*(l*u - d*h));
phi = (d.*f_u - I*u*f_d) ./(Y_0*(d*h - u*l));

x = delta.*S_0 + phi.*Y_0;

plot(l,x)

%savePath = 'C:\Users\91053\Desktop\myPlot.png'; 
%saveas(gcf, savePath);
%saveas(gcf, 'figure.png');
