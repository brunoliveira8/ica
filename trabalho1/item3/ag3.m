% Implementacao de um AG binario canonico para encontrar o maximo da
% funcao de 2 variaveis
%
%       f(x,y)=20+x^2+y^2-10*(cos(2*PI*x)+cos(2*PI*y)), -5<= x <=5 e  -12<= y <=12;
%
% Autor: Guilherme A. Barreto
% Data: 14/09/2016
%
% Modificado por: Tarcisio Bruno C. Oliveira
% Data: 28/11/2016

clear; clc; close all;

%%% Parametros do AG
M=100;    % Tamanho da populacao
N=40;    % Tamanho do cromossomo (no. de genes)
% pc=0.95;    % Probabilidade de cruzamento
pc = 0.95;
pm=0.2; % Probabilidade de mutacao
Ng=50;   % Numero de geracoes
Xmin=-5, Xmax=5;
Ymin=-12,Ymax=12; 

%%% Geracao da populacao inicial 
P=round(rand(M,N));

%%% Calcula fitness da populacao inicial
[Z F Fn]=aptidao3(P, Xmin, Xmax, Ymin, Ymax, N);  % Retorna a aptida de cada individuo da populacao

%%% Roda AG por Ng geracoes
geracao=0,
% figure(1); plot(Z(:,1),Z(:,2),'ro'); axis([Xmin Xmax Ymin Ymax])
% pause
for t=1:Ng,
    %geracao=t,
    S=selecao_torneio(P,Fn);
    P=cruzamento_uniforme(P,S,pc);
    P=mutacao(P,pm);
    [Z F Fn]=aptidao3(P, Xmin, Xmax, Ymin, Ymax, N);
    
    % Mostra grafico de 10 em 10 geracoes
%     if ~mod(t,10),
%         geracao=t,
%         figure(1); plot(Z(:,1),Z(:,2),'ro');
%         axis([Xmin Xmax Ymin Ymax])
%         pause
%     end
    
    [Fmin Imin]=min(F);
    Z(Imin,:);
    
    FminT(t) = Fmin;
    FmeanT(t) = mean(F);
end

Z

figure; plot(Fn);
xlabel('Indivíduos');
ylabel('Aptidão Relativa');

figure; plot(FminT);
xlabel('Geração');
ylabel('Aptidão do Melhor Indivíduo');

figure; plot(FmeanT);
xlabel('Geração');
ylabel('Aptidão Média dos Indíviduos');

% Teste
% Res = 20 + X^2 + Y^2 - 10*(cos((2*pi)*X)+cos((2*pi)*Y));
