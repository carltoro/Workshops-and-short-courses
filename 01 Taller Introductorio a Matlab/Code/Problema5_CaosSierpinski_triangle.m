% Chaos game, the Sierpinski triangle
% source: https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle
clear; clc; close all;

% Primeros puntos que definen el triángulo equilátero

Px      = [0 0.5 1];
Py      = [0 sqrt(2)/2 0];

figure
plot(Px,Py,'.b','MarkerSize',3);

Npoints = 10000;% número de puntos a dibujar
p       = [0 0];% punto inicial pi = (xi,yi)
hold on
for k = 1:Npoints
    prob  = rand;%genera números aleatorios entre 0 y 1 con distribución uniforme
    
    if prob < 0.33
       p(1) = (Px(1)+p(1))/2;
       p(2) = (Py(1)+p(2))/2;
       
    elseif prob < 0.66
       p(1) = (Px(2)+p(1))/2;
       p(2) = (Py(2)+p(2))/2;
       
    else
       p(1) = (Px(3)+p(1))/2;
       p(2) = (Py(3)+p(2))/2;
       
    end
   
    plot(p(1),p(2),'.b','MarkerSize',3);
%     drawnow% si descomenta este comando, se mostrará el gráfico punto a punto
end
