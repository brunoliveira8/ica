% Implementacao do algoritmo Hill-Climbing por Mutacao aleatoria 
% para encontrar o maximo da % funcao de 2 variaveis
%
%       f(x,y)=60x+100y-1.5*x^2-1.5*y^2-xy, 0 <= x,y <=60;
%
% Autor: Guilherme A. Barreto
% Data: 16/09/2016
% Modificado por: Tarcisio Bruno C. Oliveira
% Data: 28/11/2016

clear; clc; close all;


%%% Parametros do AG
N=40;    % Tamanho do cromossomo (no. de genes)
Ng=200;   % Numero de geracoes
Xmin=-5, Xmax=5;
Ymin=-12,Ymax=12; 
for i=1:40
    tic;
    Pbest=round(rand(1,N)); % Gera string inicial e a torna "melhor string"
    [Zbest Fbest]=aptidao(Pbest, Xmin, Xmax, Ymin, Ymax, N);  % Avalia string inicial

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

        [Zcurr Fcurr]=aptidao(Pcurr, Xmin, Xmax, Ymin, Ymax, N);  % Avalia nova string

        if Fcurr<Fbest,
            Pbest=Pcurr; % Se aptidao da nova string eh maior, ela vira "melhor string"
            Fbest=Fcurr;
            Zbest=Zcurr;
        end
    end

    Zbest, Fbest
    time(i) = toc;
end
figure; plot(Aptidao);
xlabel('Iteration');
ylabel('Fitness');
