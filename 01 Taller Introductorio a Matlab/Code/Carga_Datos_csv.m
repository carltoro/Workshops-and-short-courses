% Lectura de archivo de datos formato .csv (comma separated values)
% Fuente del conjunto de datos: https://www.kaggle.com/datasets/mustafaali96/weight-height
clear; close; clear all

T         =   readtable('weight-height.csv');
var_names = T.Properties.VariableNames;
% Las tablas tienen un tratamiento particular en matlab, pero de todas
% formas podemos trabajarlas como arreglos o matrices de la siguiente forma:

peso   = table2array(T(:,"Weight"));%libras
altura = table2array(T(:,"Height"));%pulgadas


figure
plot(altura, peso,'bo');
xlabel("Altura (pulgadas)");
ylabel("Peso (libras)");



% Ideas de ejercicios
%- Transformar las mediciones a kg y cm para el peso y altura respectivamente
%- Calcular el IMC
%- Calcular estadísticos para las variables y separar por género.
%- Realizar otrso gráficos que resuman el comportamiento de los datos, etc.


