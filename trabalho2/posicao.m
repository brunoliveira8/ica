function mi=posicao(x)
%
% Retorna as pertin�ncias da medida x aos conjuntos fuzzy
% definidos para a vari�vel lingu�stica POSI��O.
%
% Funcoes de pertinencia TRIANGULARES/TRAPEZOIDAS
%
% Data: 03/12/2016
% Autor: Tarc�sio Bruno. C Oliveira, baseado no c�digo de Guilherme A. Barreto

% Conjunto de POSI��ES A ESQUERDA
mi(1) = trapmf(x, [0 0 10 35]);

% Conjunto de POSI��ES A CENTRO-ESQUERDA
mi(2) = trapmf(x, [30 40 40 50]);

% Conjunto de POSI��ES A CENTRO
mi(3) = trapmf(x, [45 50 50 55]);

% Conjunto de POSI��ES A CENTRO-DEIREITA
mi(4) = trapmf(x, [50 60 60 70]);

% Conjunto de POSI��ES A DIREITA
mi(5) = trapmf(x, [65 90 100 100]);