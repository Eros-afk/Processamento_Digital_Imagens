%Detecção de bordas usando o operador Sobel
clc
clear all
close all
pkg load image

img = imread('Elefante.jpg');
figure,imshow(img);c=colorbar();set(c,'FontSize',10);

%Operador de Sobel
%Máscara vertical para detectar bordas horizontais
%[1 2 1
% 0 0 0
% -1 -2 -1]
sH = fspecial('sobel');
S_H = filter2(sH,img,'same');
S_H = abs(S_H);%fazendo o módulo

%Máscara horizontal para detectar bordas verticais
sV = sH';
S_V = filter2(sV,img,'same');
S_V = abs(S_V);

%Magnitude do gradiente
S_H_V = S_H + S_V;

%Sobel
figure,imshow(S_H,[]);c=colorbar();set(c,'FontSize',14);title('Bordas horizontais');
set(gca,'FontSize',14);
figure,imshow(S_V,[]);c=colorbar();set(c,'FontSize',14);title('Bordas verticais');
set(gca,'FontSize',14);
figure,imshow(S_H_V,[]);c=colorbar();set(c,'FontSize',14);title('Magnitude do gradiente - Sobel');