clear all
close all
clc
pkg load image

%Leitura da imagem
img = imread('Elefante.jpg');
figure,imshow(img);
figure,imhist(img);

y = 1 * double(img).^0.2;
figure,imshow(y,[]);
set(gca,'FontSize',12,'fontname','Arial');

y = imadjust(img,[],[],0.2);
figure,imshow(y,[]);
set(gca,'FontSize',12,'fontname','Arial');
