clc;
clear all;
close all;

phi=-90:1:270;

% Conjunto de ORIENTA플O: DIREITA-BAIXO
mi(1,:) = trapmf(phi, [-90 -90 -30 10]);

% Conjunto de ORIENTA플O: DIREITA-ALTO
mi(2,:) = trapmf(phi, [-10 20 20 60]);

% Conjunto de ORIENTA플O: DIREITA-VERTICAL
mi(3,:) = trapmf(phi, [30 55 55 90]);

% Conjunto de ORIENTA플O: VERTICAL
mi(4,:) = trapmf(phi, [50 90 90 120]);

% Conjunto de ORIENTA플O: ESQUERDA-VERTICAL
mi(5,:) = trapmf(phi, [100 125 125 160]);

% Conjunto de ORIENTA플O: ESQUERDA-ALTO
mi(6,:) = trapmf(phi, [120 160 160 200]);

% Conjunto de ORIENTA플O: ESQUERDA-BAIXO
mi(7,:) = trapmf(phi, [180 220 270 270]);

hold on;
for i=1:7
    plot(phi, mi(i,:))
end

hold off;