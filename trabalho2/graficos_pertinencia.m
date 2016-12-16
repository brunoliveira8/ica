clear; clc; close all;

x=-30:0.1:30;  % Universo de discurso da variavel de interesse

L=length(x); % No. total de medidas da variavel linguistica

M=[];
for i=1:L,
  %mi=velocidade(x(i));  % pertinencia aos conjuntos fuzzy (velocidade)
  mi=direcao(x(i));  % pertinencia aos conjuntos fuzzy (curvatura)
  %mi=forca_pedal_freio(x(i));  % pertinencia aos conjuntos fuzzy (forca no pedal de freio)
  M=[M; mi];
end

figure; hold on
plot(x,M(:,1),'r-'); % grafico conjunto fuzzy temperatura BAIXA
plot(x,M(:,2),'b-'); % grafico conjunto fuzzy temperatura MEDIA
plot(x,M(:,3),'m-'); % grafico conjunto fuzzy temperatura ALTA
plot(x,M(:,4),'k-'); % grafico conjunto fuzzy temperatura ALTA
plot(x,M(:,5),'g-'); % grafico conjunto fuzzy temperatura ALTA
plot(x,M(:,6),'c-'); % grafico conjunto fuzzy temperatura ALTA
plot(x,M(:,7),'y-'); % grafico conjunto fuzzy temperatura ALTA
hold off
axis([-30 30 0 1.2]);
xlabel('ÂNGULO DA DIREÇÃO');
title('FUNÇÃO DE PERTINÊNCIA');
% legend('ESQUERDA','CENTRO-ESQUERDA','CENTRO', 'CENTRO-DIREITA', 'DIREITA')
%legend('DIREITA-BAIXO','DIREITA-ALTO','DIREITA-VERTICAL', 'VERTICAL', 'ESQUERDA-VERTICAL', 'ESQUERDA-ALTO', 'ESQUERDA-BAIXO');

legend('NEGATIVO-GRANDE','NEGATIVO-MÉDIO','NEGATIVO-PEQUENO', 'ZERO', 'POSITIVO-PEQUENO', 'POSITIVO-MÉDIO', 'POSITIVO-GRANDE');