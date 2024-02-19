% Uso de sbuplots
clear;clc;close all

figure(1)
subplot(2,1,1);
x = linspace(0,10,200);
y1 = sin(x);
plot(x,y1);
xlabel('x');ylabel('y'); 
grid on

subplot(2,1,2); 
y2 = sin(5*x);
plot(x,y2);
xlabel('x');ylabel('y');
grid on

% Guadamos la figura usando códugo
ax = gcf;% figura actual con todos los subplots
exportgraphics(ax,'Uso_de_Subplots.jpg','Resolution',300); % resolución medida en dpi, 
                                                      % medida estándar
                                                      % para impresión,
                                                      