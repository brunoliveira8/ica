clear all;
close all;
clc;

% Questão Única
x = linspace(-5, 5, 500);
y = linspace(-12, 12, 500);
[x,y] = meshgrid(x,y);

% z = 20 + x.^2 + y.^2;
z = 20 + x.^2 + y.^2 - 10*(cos((2*pi).*x)+cos((2*pi).*y));

% Item i)
figure;
mesh(x,y, z), colorbar;

% Item ii)
figure;
contour(z), colorbar;

% Item iii)


