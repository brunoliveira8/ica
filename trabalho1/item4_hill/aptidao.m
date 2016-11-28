function [Z F Fn]=aptidao(P);
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

Vmin=0; Vmax=60;
Nb=22;   % Numero de bits por variavel
aux=1/(2^Nb - 1);

Z=[];
for i=1:m,
    X(i)=bina2deci(P(i,1:22));
    Y(i)=bina2deci(P(i,23:44));
    
    X(i)=Vmin+(Vmax-Vmin)*X(i)*aux;
    Y(i)=Vmin+(Vmax-Vmin)*Y(i)*aux;
    
    F(i)=60*X(i)+100*Y(i)-1.5*X(i)*X(i)-1.5*Y(i)*Y(i)-X(i)*Y(i);
    
    Z=[Z; X(i) Y(i)];
end

Fn=F/sum(F);  % Aptidoes normalizadas
F=F';
Fn=Fn';
