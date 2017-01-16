function Pnew=cruzamento(P,S,Pc);

% Cruzamento por 1 ponto de corte
% 
% Variaveis de entrada
% ====================
% P: populacao atual
% S: pares selecionados para POTENCIAL geracao de prole (cruzamento)
% Pc: probabilidade de recombinacao (crossover)
%
%
% Variaveis de saida
% ==================
% Pnew: nova populacao de individuos (substituicao completa)

[m n]=size(P);

Pnew=[];
for i=1:m/2,
    
    I1=S(i,1);  % Num. da linha na matriz P correspondente ao pai
    I2=S(i,2);  % Num. da linha na matriz P correspondente a mae
    
    PAI=P(I1,:);   % Encontra "potencial" pai na matriz P
    MAE=P(I2,:);   % Encontra "potencial" mae na matriz P
    
    u=rand;
    if u<=Pc,
	    % Determina ponto de corte aleatoriamente
    	    cut=floor((n-1)*rand) + 1;
    
    	    % Determina filhos
    	    F1=[PAI(1:cut) MAE(cut+1:end)];
    	    F2=[MAE(1:cut) PAI(cut+1:end)];
    else
	    % Filhos=Pais se nao houver crossover 
    	    F1=PAI;
    	    F2=MAE;
    end
    
    Pnew=[Pnew;F1;F2];
end
    
