function Pnew=cruzamento_uniforme(P,S,Pc);

% Cruzamento por 1 ponto de corte
% 
% Variaveis de entrada
% ====================
% P: populacao atual
% S: pares selecionados para POTENCIAL geracao de prole (cruzamento)
% Pc: probabilidade de recombinacao (crossover)
%
% Variaveis de saida
% ==================
% Pnew: nova populacao de individuos (substituicao completa)

[m n]=size(P);

F1=zeros(1,n);  % Recebera os genes dos pais

Pnew=[];
for i=1:m/2,
    
    I1=S(i,1);  % Num. da linha na matriz P correspondente ao pai
    I2=S(i,2);  % Num. da linha na matriz P correspondente a mae
    
    PAI=P(I1,:);   % Encontra "potencial" pai na matriz P
    MAE=P(I2,:);   % Encontra "potencial" mae na matriz P
        
    u=rand;
    if u<=Pc,
        
        mask=round(rand(1,n));  % Cria mascara para cruzamento
            
        F1=PAI; F2=MAE;  % Cria filhos como copia exata dos pais
        for j=1:n,
           if mask(j)==1,  % Quando mask(j)=1, permuta genes entre filhos
               aux=F1(j);
               F1(j)=F2(j);
               F2(j)=aux;
           end
        end
    else  % Quando nao gera prole, filhos=pais
        F1=PAI; 
        F2=MAE;  
    end
    
    Pnew=[Pnew; F1; F2];
end

