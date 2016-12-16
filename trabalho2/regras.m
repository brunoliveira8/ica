function RULE_OUT=regras(mi1,mi2,mi_out,y)
% Exemplo simples de base de regras nebulosas
%
% ENTRADA
%     mi1: graus de pertinencia da variavel x (posicão do veículo, m)
%     mi2: graus de pertinencia da variavel phi (orientação do veículo, º)
%     mi_out: funcoes de pertinencia da variavel de saida theta (direção, º)
%
% SAIDA
%
%    RULE_OUT: Conjuntos fuzzy de saida modificados para todas as regras    
%
% Autor: Tarcísio Bruno C. Oliveira, baseado no código de Guilherme A. Barreto
% Data: 05/12/2016


%% Conjuntos de REGRA para Esquerda %%%%

m(1)=min(mi1(1),mi2(1));
mi_out_R(:,1)=min(m(1),mi_out(:,5));

m(2)=min(mi1(1),mi2(2));
mi_out_R(:,2)=min(m(2),mi_out(:,3));

m(3)=min(mi1(1),mi2(3));
mi_out_R(:,3)=min(m(3),mi_out(:,2));

m(4)=min(mi1(1),mi2(4));
mi_out_R(:,4)=min(m(4),mi_out(:,2));

m(5)=min(mi1(1),mi2(5));
mi_out_R(:,5)=min(m(5),mi_out(:,1));

m(6)=min(mi1(1),mi2(6));
mi_out_R(:,6)=min(m(6),mi_out(:,1));

m(7)=min(mi1(1),mi2(7));
mi_out_R(:,7)=min(m(7),mi_out(:,1));


%% Conjuntos de REGRA para Centro-Esquerda %%%%

m(8)=min(mi1(2),mi2(1));
mi_out_R(:,8)=min(m(8),mi_out(:,6));

m(9)=min(mi1(2),mi2(2));
mi_out_R(:,9)=min(m(9),mi_out(:,5));

m(10)=min(mi1(2),mi2(3));
mi_out_R(:,10)=min(m(10),mi_out(:,3));

m(11)=min(mi1(2),mi2(4));
mi_out_R(:,11)=min(m(11),mi_out(:,2));

m(12)=min(mi1(2),mi2(5));
mi_out_R(:,12)=min(m(12),mi_out(:,2));

m(13)=min(mi1(2),mi2(6));
mi_out_R(:,13)=min(m(13),mi_out(:,1));

m(14)=min(mi1(2),mi2(7));
mi_out_R(:,14)=min(m(14),mi_out(:,1));

%% Conjuntos de REGRA para Centro %%%%

m(15)=min(mi1(3),mi2(1));
mi_out_R(:,15)=min(m(15),mi_out(:,6));

m(16)=min(mi1(3),mi2(2));
mi_out_R(:,16)=min(m(16),mi_out(:,6));

m(17)=min(mi1(3),mi2(3));
mi_out_R(:,17)=min(m(17),mi_out(:,5));

m(18)=min(mi1(3),mi2(4));
mi_out_R(:,18)=min(m(18),mi_out(:,4));

m(19)=min(mi1(3),mi2(5));
mi_out_R(:,19)=min(m(19),mi_out(:,3));

m(20)=min(mi1(3),mi2(6));
mi_out_R(:,20)=min(m(20),mi_out(:,2));

m(21)=min(mi1(3),mi2(7));
mi_out_R(:,21)=min(m(21),mi_out(:,2));


%% Conjuntos de REGRA para Centro-Direita %%%%

m(22)=min(mi1(4),mi2(1));
mi_out_R(:,22)=min(m(22),mi_out(:,7));

m(23)=min(mi1(4),mi2(2));
mi_out_R(:,23)=min(m(23),mi_out(:,7));

m(24)=min(mi1(4),mi2(3));
mi_out_R(:,24)=min(m(24),mi_out(:,6));

m(25)=min(mi1(4),mi2(4));
mi_out_R(:,25)=min(m(25),mi_out(:,6));

m(26)=min(mi1(4),mi2(5));
mi_out_R(:,26)=min(m(26),mi_out(:,5));

m(27)=min(mi1(4),mi2(6));
mi_out_R(:,27)=min(m(27),mi_out(:,3));

m(28)=min(mi1(4),mi2(7));
mi_out_R(:,28)=min(m(28),mi_out(:,2));


%% Conjuntos de REGRA para Direita %%%%

m(29)=min(mi1(5),mi2(1));
mi_out_R(:,29)=min(m(29),mi_out(:,7));

m(30)=min(mi1(5),mi2(2));
mi_out_R(:,30)=min(m(30),mi_out(:,7));

m(31)=min(mi1(5),mi2(3));
mi_out_R(:,31)=min(m(31),mi_out(:,7));

m(32)=min(mi1(5),mi2(4));
mi_out_R(:,32)=min(m(32),mi_out(:,6));

m(33)=min(mi1(5),mi2(5));
mi_out_R(:,33)=min(m(33),mi_out(:,6));

m(34)=min(mi1(5),mi2(6));
mi_out_R(:,34)=min(m(34),mi_out(:,5));

m(35)=min(mi1(5),mi2(7));
mi_out_R(:,35)=min(m(35),mi_out(:,3));



%% Saida %%
RULE_OUT=[];

for i=1:35
    aux=mi_out_R(:,i)';
    RULE_OUT=[RULE_OUT; aux]; 
    
    if m(i) > 0
        figure;
        hold on;
        plot(y,mi_out_R(:,i)); 
        plot(y,m(i)*ones(length(y)),'k.');
        xlabel('Ângulo da Direção');
        title(['Conjuntos Fuzzy de Saida da Regra: ',num2str(i)]);
        axis([-30 30 0 1.2]);
        hold off;
         
    end
    
end






