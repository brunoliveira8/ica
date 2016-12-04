function mi=orientacao(phi)
%
% Retorna as pertinências da medida x aos conjuntos fuzzy
% definidos para a variável linguística POSIÇÃO.
%
% Funcoes de pertinencia TRIANGULARES/TRAPEZOIDAS
%
% Data: 03/12/2016
% Autor: Tarcísio Bruno. C Oliveira, baseado no código de Guilherme A. Barreto

% Conjunto de ORIENTAÇÃO: DIREITA-BAIXO
mi(1) = trapmf(phi, [-90 -90 -30 10]);

% Conjunto de ORIENTAÇÃO: DIREITA-ALTO
mi(2) = trapmf(phi, [-10 40 40 60]);

% Conjunto de ORIENTAÇÃO: DIREITA-VERTICAL
mi(3) = trapmf(phi, [30 55 70 90]);

% Conjunto de ORIENTAÇÃO: VERTICAL
mi(4) = trapmf(phi, [50 90 90 120]);

% Conjunto de ORIENTAÇÃO: ESQUERDA-VERTICAL
mi(5) = trapmf(phi, [100 130 145 160]);

% Conjunto de ORIENTAÇÃO: ESQUERDA-ALTO
mi(6) = trapmf(phi, [140 180 200 220]);

% Conjunto de ORIENTAÇÃO: ESQUERDA-BAIXO
mi(7) = trapmf(phi, [200 200 270 270]);