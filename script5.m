clear all
close all
clc
pkg load image

%Fazendo a leitura da imagem
img = imread('Elefante.jpg');
figure,imshow(img);
figure,imhist(img);

y = histeq(img);
figure,imshow(y*255,[]); c=colorbar();
set(gca,'FontSize',12,'fontame','Arial','visible','on');
set(c,'FontSize',12);
figure,imhist(uint8(y*255));grid on;
set(gca,'FontSize',14,'fontame','Arial');
xlim([0 255]);
