clc;
clear all;
close all;

theta=-30:0.1:30;

% Conjunto de DIREÇÃO: NEGATIVO GRANDE
mi(1,:) = trapmf(theta, [-30 -30 -25 -20]);

% Conjunto de DIREÇÃO: NEGATIVO MÉDIO
mi(2,:) = trapmf(theta, [-25 -15 -15 -10]);

% Conjunto de DIREÇÃO: NEGATIVO PEQUENO
mi(3,:) = trapmf(theta, [-15 -10 -10 -5]);

% Conjunto de DIREÇÃO: ZERO
mi(4,:) = trapmf(theta, [-10 0 0 10]);

% Conjunto de DIREÇÃO: POSITIVO PEQUENO
mi(5,:) = trapmf(theta, [5 10 10 15]);

% Conjunto de DIREÇÃO: POSITIVO MÉDIO
mi(6,:) = trapmf(theta, [10 15 15 25]);

% Conjunto de DIREÇÃO: POSITIVO GRANDE
mi(7,:) = trapmf(theta, [20 25 30 30]);

hold on;
for i=1:7
    plot(theta, mi(i,:))
end

hold off;