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
mi(2) = trapmf(phi, [-10 20 20 60]);

% Conjunto de ORIENTAÇÃO: DIREITA-VERTICAL
mi(3) = trapmf(phi, [30 55 55 90]);

% Conjunto de ORIENTAÇÃO: VERTICAL
mi(4) = trapmf(phi, [50 90 90 120]);

% Conjunto de ORIENTAÇÃO: ESQUERDA-VERTICAL
mi(5) = trapmf(phi, [100 125 125 160]);

% Conjunto de ORIENTAÇÃO: ESQUERDA-ALTO
mi(6) = trapmf(phi, [120 160 160 200]);

% Conjunto de ORIENTAÇÃO: ESQUERDA-BAIXO
mi(7) = trapmf(phi, [180 220 270 270]);