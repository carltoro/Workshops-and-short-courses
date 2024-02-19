function [ ] = brown2D(N)
% N     : número de partículas a simular
% (x,y) : son las coordenadas de las particulas en el plano
x = zeros(1,N);
y = zeros(1,N);


figure
for i = 1:1000 % Simulación del movimiento Browniano en 1000 iteraciones
   
   x = x + 0.005*randn(1,N);% actualización de las coordenadas x
   y = y + 0.005*randn(1,N);% actualización de las coordenadas y

   plot(x,y,'.');
   axis([-1 1 -1 1]);%Para fijar el rango de los ejes donde graficaremos
   drawnow
  
   
end
end