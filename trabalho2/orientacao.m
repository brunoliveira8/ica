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
mi(2) = trapmf(phi, [-10 40 40 60]);

% Conjunto de ORIENTA��O: DIREITA-VERTICAL
mi(3) = trapmf(phi, [30 55 70 90]);

% Conjunto de ORIENTA��O: VERTICAL
mi(4) = trapmf(phi, [50 90 90 120]);

% Conjunto de ORIENTA��O: ESQUERDA-VERTICAL
mi(5) = trapmf(phi, [100 130 145 160]);

% Conjunto de ORIENTA��O: ESQUERDA-ALTO
mi(6) = trapmf(phi, [140 180 200 220]);

% Conjunto de ORIENTA��O: ESQUERDA-BAIXO
mi(7) = trapmf(phi, [200 200 270 270]);