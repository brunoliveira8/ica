clc;
clear all;
close all;

x=0:0.1:100;

% Conjunto de POSI합ES A ESQUERDA
mi(1,:) = trapmf(x, [0 0 10 35]);

% Conjunto de POSI합ES A CENTRO-ESQUERDA
mi(2,:) = trapmf(x, [30 40 40 50]);

% Conjunto de POSI합ES A CENTRO
mi(3,:) = trapmf(x, [45 50 50 55]);

% Conjunto de POSI합ES A CENTRO-DEIREITA
mi(4,:) = trapmf(x, [50 60 60 70]);

% Conjunto de POSI합ES A DIREITA
mi(5,:) = trapmf(x, [65 90 100 100]);

hold on;
for i=1:5
    plot(x, mi(i,:))
end

hold off;