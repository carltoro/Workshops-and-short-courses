% Solución propuesta, pueden haber más formas de resolver el problema

clear; clc; close all

% Cargamos los datos
load froth.mat

% Cálculo de los parámetros para cada imagen
Promedios = mean([I1(:) I2(:) I3(:) I4(:)]);% promedio por imagen,
                                            % otra forma podría ser aplicando
                                            % la función mean2() a cada matriz por separado
Medianas = median([I1(:) I2(:) I3(:) I4(:)]);% medianas
Modas    = mode([I1(:) I2(:) I3(:) I4(:)]); % modas
Desvestas= std(double([I1(:) I2(:) I3(:) I4(:)])); % desviaciones estándar
                                                   % ojo, para ocupar esta función se debe
                                                   % transformar los datos desde enteros sin
                                                   % signo a tipo double
% Cálculo de la entropía
% Definamos la fórmula como una función anónima

H        = @(pi) -sum(pi.*log2(pi));%pi es el valor de probabilidad de ocurrencia de cada nivel de intensidad

% Imagen 1
pi1      =  EstimaPi(I1(:));
HI1      = H(pi1);

% Imagen 2
pi2      =  EstimaPi(I2(:));
HI2      = H(pi2);

% Imagen 3
pi3      =  EstimaPi(I3(:));
HI3      = H(pi3);

% Imagen 4
pi4      =  EstimaPi(I4(:));
HI4      = H(pi4);

% Graficar los resultados para cada índice estimado

% Aquí crearemos una sub función dentro del mismo script para estimar las
% probabilidades de cada valor de intensidad en cada imagen

function pi = EstimaPi(v)
% pi : vector con probabilidades de ocurrencia de cada nivel de intensidad
% (solo si existe, valores de 0 ocurrencia no se consideran)
% v  : es un vector que contiene los datos

[C,~,~]      = unique(v);% valores únicos que aparecen en el arreglo
Npixeles     = numel(v);% total de píxeles de la imagen = total de valores de cada matriz = 130*130 en este caso

for k = 1:numel(C)
    
    pi(k)    = sum(v==C(k))/Npixeles;  % ojo, acá se está usando comparación lógica para obtener
                                       % el número de veces que aparece
                                       % cada nivel de intensidad existente
                                       % en v
end


end








