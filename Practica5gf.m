
tspan=0:0.000001:0.05;
[t,x] = ode45(@Practica5,tspan,[0 0]);
figure(1)
plot(t,x(:,1));
hold on
plot(t,x(:,2))
hold off
grid on
title("IL and Vc");
xlabel("Tiempo");


function dx=Practica5(t,x)
     L=2e-3;
     C=10e-6;
     R=10;
     U=32;
     d=0.4;
     dx= zeros(2,1);

     dx(1)=(1/L)*((-x(2))+(U*d));
     dx(2)=(1/C)*(x(1)+((-1/R)*x(2)));
 end