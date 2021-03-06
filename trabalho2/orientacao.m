function mi=orientacao(phi)
%
% Retorna as pertin�ncias da medida x aos conjuntos fuzzy
% definidos para a vari�vel lingu�stica POSI��O.
%
% Funcoes de pertinencia TRIANGULARES/TRAPEZOIDAS
%
% Data: 03/12/2016
% Autor: Tarc�sio Bruno. C Oliveira, baseado no c�digo de Guilherme A. Barreto

% Conjunto de ORIENTA��O: DIREITA-BAIXO
mi(1) = trapmf(phi, [-90 -90 -30 10]);

% Conjunto de ORIENTA��O: DIREITA-ALTO
mi(2) = trapmf(phi, [-10 20 20 60]);

% Conjunto de ORIENTA��O: DIREITA-VERTICAL
mi(3) = trapmf(phi, [30 55 55 90]);

% Conjunto de ORIENTA��O: VERTICAL
mi(4) = trapmf(phi, [50 90 90 120]);

% Conjunto de ORIENTA��O: ESQUERDA-VERTICAL
mi(5) = trapmf(phi, [100 125 125 160]);

% Conjunto de ORIENTA��O: ESQUERDA-ALTO
mi(6) = trapmf(phi, [120 160 160 200]);

% Conjunto de ORIENTA��O: ESQUERDA-BAIXO
mi(7) = trapmf(phi, [180 220 270 270]);