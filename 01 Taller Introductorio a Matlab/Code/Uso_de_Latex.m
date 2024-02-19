% Ejemplo uso de Latex
clear; close; clc

% definición de la función
x = linspace(0,3);
y = x.^2.*sin(x);

% gráfico
plot(x,y,'LineWidth',1.5)
line([2,2],[0,2^2*sin(2)],'LineWidth',1.5)
xlabel('x');ylabel('y');

% área bajo la curva
hf = fill_between(x(x<=2),0*x(x<=2),y(x<=2));% esta función es provista por la comunidad de Matlab
hf.FaceColor = [.929 .694 .125];
hf.EdgeColor = 'none';

% texto en latex
str = '$$ \int_{0}^{2} x^2\sin(x) dx $$';
text(1.1,0.5,str,'Interpreter','latex','FontSize',12)