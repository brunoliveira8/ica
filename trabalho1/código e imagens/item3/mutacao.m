function Pnew=mutacao(P,Pm);
% Promove mutacao nos genes dos individuos da populacao P,
% com probabilidade de mutacao Pm

[m n]=size(P); % Dimensoes da matriz de populacao
%%% m=num.linhas=num.individuos
%%% n=num.colunas=num.genes

Pnew=P;
for i=1:m,   % Indice para as linhas da matriz Pnew (individuos)
    for j=1:n,  % Indice para as colunas da matriz Pnew (genes)
        u=rand;  % Gera numero aleatorio entre 0 e 1
        if u<Pm,
            Pnew(i,j)=~Pnew(i,j);
        end
    end
end

