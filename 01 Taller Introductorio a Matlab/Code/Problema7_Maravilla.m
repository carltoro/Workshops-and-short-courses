% Problema 7
% En este caso no usaremos la función plot() para el cambio, 
% usaremos la función scatter()

phi          = (sqrt(5)+1)/2;% Número áureo
golden_angle = 2*pi/phi;
max_angle    = 10000;
theta        = 1:golden_angle:max_angle;% ángulo
r            = sqrt(theta);% radio
[x,y]        = pol2cart(theta,r);% coordenadas polares a cartesianas


% definimos tamaños variables para cada punto
N         = numel(r);
max_size  = 15;
step_size = linspace(0.1,max_size,N); 

figure
scatter(x,y,step_size,'b','filled','LineWidth',1);
axis off;
 