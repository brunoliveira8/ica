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
M=50;    % Tamanho da populacao
N=44;    % Tamanho do cromossomo (no. de genes)
pc=0.95;    % Probabilidade de cruzamento
pm=0.01; % Probabilidade de mutacao
Ng=100;   % Numero de geracoes
Xmin=-5, Xmax=5;
Ymin=-12,Ymax=12; 

%%% Geracao da populacao inicial 
P=round(rand(M,N));

%%% Calcula fitness da populacao inicial
[Z F Fn]=aptidao3(P, Xmin, Xmax, Ymin, Ymax);  % Retorna a aptida de cada individuo da populacao

%%% Roda AG por Ng geracoes
geracao=0,
figure(1); plot(Z(:,1),Z(:,2),'ro'); axis([Xmin Xmax Ymin Ymax])
pause
for t=1:Ng,
    %geracao=t,
    S=selecao_torneio(P,Fn);
    P=cruzamento_uniforme(P,S,pc);
    P=mutacao(P,pm);
    [Z F Fn]=aptidao3(P, Xmin, Xmax, Ymin, Ymax);
    
    % Mostra grafico de 10 em 10 geracoes
    if ~mod(t,10),
        geracao=t,
        figure(1); plot(Z(:,1),Z(:,2),'ro');
        axis([Xmin Xmax Ymin Ymax])
        pause
    end
    
    [Fmin Imin]=min(F);
    Z(Imin,:);
end

Z

figure; plot(Fn);
xlabel('Generation');
ylabel('Relative Fitness');

% Teste
% Res = 20 + X^2 + Y^2 - 10*(cos((2*pi)*X)+cos((2*pi)*Y));
