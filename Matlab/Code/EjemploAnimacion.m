% Animación regresión lineal
clear;clc;close all
opengl hardware

% Datos simulados
Np = 200;% número de puntos a simular
t  = linspace(0,1,Np);
y1 = 2*sin(2*pi*1*t);
y2 = 1*sin(2*pi*2*t);

%Parámetros gif
hgif         = figure('Units','Pixels');
gifname      = 'EjemploGif.gif';% para generar .gif
set(hgif,'color', 'w');

for i = 1:Np

    h= plot(t(1:i),y1(1:i),'.b',t(1:i),y2(1:i),':r','LineWidth',1.5);
    axis([0 t(end) min([y1 y2]) max([y1 y2])]);grid on
    pause(0.001)

    GuardaGif(hgif,i, gifname);    
    drawnow
    
    %set(h,'Visible','off')  
    
end

 

% si el gif generado se ve demasiado lento, se puede acelerar con esta app
% web: https://ezgif.com/speed

