clc; clear;

v(:,1) = [-5;-12];

eta=0.1;
geracoes = 500;
% a=20; b=a; c=50;

for n=1:geracoes
%     gradvec(1,n)=2*(v(1,n)-a);
%     gradvec(2,n)=2*(v(2,n)-b);
    gradvec(1,n)=2*v(1,n)+ 20*pi*sin(2*pi*v(1,n));
    gradvec(1,n)=2*v(2,n)+ 20*pi*sin(2*pi*v(2,n));
    v(:, n+1)=v(:,n)-eta*gradvec(:,n);
end

figure;
plot(1:geracoes+1,v(1,:),'ro'); hold on;
plot(1:geracoes+1,v(2,:),'b*'); grid;
axis([1 geracoes 0 1.5*max(max(v))+0.1]);
xlabel('iteracao (n)');
ylabel('(x(n), y(n))'); hold off;
