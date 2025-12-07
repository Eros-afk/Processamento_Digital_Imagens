clear all
close all
clc
pkg load image

img = imread('Elefante.jpg');
figure,imshow(img);
set(gca,'FontSize',12,'fontname','Arial');

%Tamanho do filtro
n = 3;
h = fspecial('average', [n n]); %filtro de média
s = imfilter(img,h,'replicate','same');%replicando pixels da borda e mantendo o tamanho da imagem
figure,imshow(s);

img2_noise = imnoise(img,'salt & pepper'); %adiciona ruído sal e pimenta
figure,imshow(img2_noise,[]);
c = colorbar();
set(c,'FontSize',12,'fontname','Arial')
set (gca,'FontSize',12,'fontname','Arial','visible','on');

s = imfilter(img,h,'replicate','same');%replicando pixels da borda e mantendo o tamanho da imagem
figure,imshow(s);

