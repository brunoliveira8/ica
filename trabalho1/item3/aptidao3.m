function [Z F Fn]=aptidao3(P, Xmin, Xmax, Ymin, Ymax);
% Calcula aptidao dos individuos da populacao P
% Entrada:
%    P - Matriz binaria representando os individuos de uma geracao
%    nas linhas e os genes nas colunas
% Saida:
%    X - Fenotipo,  i.e. valores correspondentes em base decimal aos 
%        numeros binarios codificados nos individuos da populacao P 
%    F - Valores correspondentes da funcao de aptidao para os individuos 
%        da populacao P
%    Fn - Valores normalizados das aptidoes dos individuos da populacao 

[m n]=size(P);

Nb=22;   % Numero de bits por variavel
aux=1/(2^Nb - 1);

Z=[];
for i=1:m,
    X(i)=bina2deci(P(i,1:22));
    Y(i)=bina2deci(P(i,23:44));
    
    X(i)=Xmin+(Xmax-Xmin)*X(i)*aux;
    Y(i)=Ymin+(Ymax-Ymin)*Y(i)*aux;
    
    F(i) = 20 + X(i)^2 + Y(i)^2 - 10*(cos((2*pi)*X(i))+cos((2*pi)*Y(i)));
    
    Z=[Z; X(i) Y(i)];
end

Fn=F/sum(F);  % Aptidoes normalizadas
F=F';
Fn=Fn';
