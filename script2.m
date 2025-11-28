clear all
close all
clc
pkg load image

%Lendo a imagem
img = imread('Elefante.jpg');%Ver
figure,imshow(img);
figure,imhist(img);

%Obtendo informação
Min = min(img(:));
Max = max(img(:));
a = Max - Min;
M = mean2(img(:));
d = std2(img(:));

printf('Valor mínimo: %f\n',Min);
printf('Valor máximo: %f\n',Max);
printf('Valor médio: %f\n',M);
printf('Amplitude: %f\n',a);
printf('Desvio padrão: %f\n',d);

%Aplicando realce linear sem saturação
x = double(img);
y = 255 * (x-0)/(255-0);
y = uint8(y);
figure,imshow(y); %Visualização
figure,imhist(y);


Min = min(y(:));
Max = max(y(:));
a = Max - Min;
M = mean2(y(:));
d = std2(y(:));

printf('Valor mínimo: %f\n',Min);
printf('Valor máximo: %f\n',Max);
printf('Valor médio: %f\n',M);
printf('Amplitude: %f\n',a);
printf('Desvio padrão: %f\n',d);

y = imadjust(img,[],[]);
figure,imshow(y,[]);
