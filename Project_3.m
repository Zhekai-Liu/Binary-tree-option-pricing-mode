% x = delta*S_0 + phi*Y_0
u = 1.4;
d = 0.8;
h = 1.5;
l = 0.5;
S_0 = 20;
Y_0 = 25;
K = 0:0.1:40;
%x = zeros(401);
delta = zeros(1,401);
phi = zeros(1,401);

for i = 1:401

f_u = max(u*S_0 - K(i),0);
f_d = max(d*S_0 - K(i),0);

delta(i) = (l*f_u - h*f_d) / (S_0*(l*u - d*h));
phi(i) = (d*f_u - u*f_d) / (Y_0*(d*h - u*l));

%x(i) = delta.*S_0 + phi.*Y_0;

end
figure
plot(K,delta);
hold on;
plot(K,phi);
hold off;

%savePath = 'C:\Users\91053\Desktop\myPlot.png'; 
%saveas(gcf, savePath);
%saveas(gcf, 'figure.png');
