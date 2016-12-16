% Implementacao de um sistema de inferencia fuzzy do tipo Mandani-1
% (agrega, depois desfuzifica)
% ENTRADAS: x (posição do veículo, em relação à origem de um sistema de coordenadas) 
%           phi (orientação do veículo, ângulo do eixo longitudinal em relação à horizontal)
% SAIDA:  theta (ângulo da direção, em relação à vertical)
%
% Autor: Tarcísio Bruno C. Oliveira, baseado no código de Guilherme A. Barreto 
% Data:  03/12/2016

clear; clc; close all;

% Valores medidos de x (POSIÇÃO) e phi (ORIENTAÇÃO)
x=66;
phi=-8;

%%%%%%%%%%%%
% ETAPA 1: FUZZIFICACAO
%%%%%%%%%%%%

mi1=posicao(x);   % Pertinencias para variavel POSIÇÃO
mi2=orientacao(phi);     % Pertinencias para variavel CURVATURA

% Funcoes de Pertinencia (VARIAVEL DE SAIDA)
theta=-30:0.1:30;   % Universo de discurso da variavel de saida
mi_out=[];
for i=1:length(theta),
	aux=direcao(theta(i));
	mi_out=[mi_out; aux];
end

figure;
hold on;
for i=1:7
    aux=mi_out';
    plot(theta, aux(i,:))
end
xlabel('Ângulo da Direção');
title('Conjunto Fuzzy de Saida');
axis([-30 30 0 1.2])
hold off;


%%%%%%%%%%%%
% ETAPA 2: AVALIACAO DAS REGRAS FUZZY
%%%%%%%%%%%%

RULE_OUT=regras(mi1,mi2,mi_out,theta);  % Conjuntos fuzzy de saida de todas as regras

%%%%%%%%%%%%
% ETAPA 3: INFERENCIA FUZZY (AGREGACAO - OR (operador de maximo))
%%%%%%%%%%%%

F_OUT=max(RULE_OUT);

figure;
plot(theta,F_OUT);
xlabel('Ângulo da Direção');
title('Conjunto Fuzzy de Saida Agregado');
axis([-30 30 0 1.2])

%%%%%%%%%%%%
% ETAPA 4: DESFUZZIFICACAO (CENTRO DE GRAVIDADE)
%%%%%%%%%%%%

THETA=sum(F_OUT.*theta)/sum(F_OUT)
