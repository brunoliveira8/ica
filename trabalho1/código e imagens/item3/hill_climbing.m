% Implementacao do algoritmo Hill-Climbing por Mutacao aleatoria 
% para encontrar o maximo da % funcao de 2 variaveis
%
%       f(x,y)=60x+100y-1.5*x^2-1.5*y^2-xy, 0 <= x,y <=60;
%
% Autor: Guilherme A. Barreto
% Data: 16/09/2016

clear; clc; close all;

%%% Parametros do AG
N=44;    % Tamanho do cromossomo (no. de genes)
Ng=500;   % Numero de geracoes

Pbest=round(rand(1,N)); % Gera string inicial e a torna "melhor string"
[Zbest Fbest]=aptidao3(Pbest);  % Avalia string inicial

%%% Roda AG por Ng geracoes
for t=1:Ng,
    iteracao=t,
    
    Aptidao(t)=Fbest;
    
    %%%%%%%%%%%%%%
    %%% Passo 2: Gera nova string por mutacao em posicao aleatoria
    %%%%%%%%%%%%%%
    pos=floor(N*rand)+1;  % Seleciona posicao aleatoria na string
    Pcurr=Pbest;
    Pcurr(pos)=~Pcurr(pos); % mutacao do gene na posicao "pos"
    
    [Zcurr Fcurr]=aptidao3(Pcurr);  % Avalia nova string
    
    if Fcurr>Fbest,
        Pbest=Pcurr; % Se aptidao da nova string eh maior, ela vira "melhor string"
        Fbest=Fcurr;
        Zbest=Zcurr;
    end
end

Zbest

figure; plot(Aptidao);
xlabel('Iteration');
ylabel('Fitness');
