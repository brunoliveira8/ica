% Implementacao de um sistema de inferencia fuzzy do tipo Mandani-1
% (agrega, depois desfuzifica)
% ENTRADAS: x (posi��o do ve�culo, em rela��o � origem de um sistema de coordenadas) 
%           phi (orienta��o do ve�culo, �ngulo do eixo longitudinal em rela��o � horizontal)
% SAIDA:  theta (�ngulo da dire��o, em rela��o � vertical)
%
% Autor: Tarc�sio Bruno C. Oliveira, baseado no c�digo de Guilherme A. Barreto 
% Data:  03/12/2016

clear; clc; close all;

% Valores medidos de x (POSI��O) e theta (ORIENTA��O)
x=57;
phi=43;

%%%%%%%%%%%%
% ETAPA 1: FUZZIFICACAO
%%%%%%%%%%%%

mi1=velocidade(x);   % Pertinencias para variavel POSI��O
mi2=curvatura(phi);     % Pertinencias para variavel CURVATURA

% Funcoes de Pertinencia (VARIAVEL DE SAIDA)
y=0:0.1:10;   % Universo de discurso da variavel de saida
mi_out=[];
for i=1:length(y),
	aux=forca_pedal_freio(y(i));
	mi_out=[mi_out; aux];
end

%%%%%%%%%%%%
% ETAPA 2: AVALIACAO DAS REGRAS FUZZY
%%%%%%%%%%%%

RULE_OUT=regras(mi1,mi2,mi_out,y);  % Conjuntos fuzzy de saida de todas as regras

%%%%%%%%%%%%
% ETAPA 3: INFERENCIA FUZZY (AGREGACAO - OR (operador de maximo))
%%%%%%%%%%%%

F_OUT=max(RULE_OUT);

figure;
plot(y,F_OUT);
xlabel('Forca no pedal de freio');
title('Conjunto Fuzzy de Saida Agregado');
axis([0 10 0 1.2])

%%%%%%%%%%%%
% ETAPA 4: DESFUZZIFICACAO (CENTRO DE GRAVIDADE)
%%%%%%%%%%%%

Y=sum(F_OUT.*y)/sum(F_OUT)
