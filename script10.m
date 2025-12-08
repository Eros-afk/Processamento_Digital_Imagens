%Detecção de bordas Laplaciano
clc
clear all
close all
pkg load image

img = imread('Elefante.jpg');
figure,imshow(img);c=colorbar();set(c,'FontSize',10);

%Laplaciano
h = [0 -1 0; -1 4 -1; 0 -1 0];
L = filter2(h,img,'same');
L = abs(L);

%Laplaciano
figure,imshow(L,[]);c=colorbar();set(c,'FontSize',14);

img2_noise = imnoise(img,"salt & pepper");
figure,imshow(img2_noise,[]);
c=colorbar();set(c,'FontSize',12,'fontname','Arial')
set(gca,'FontSize',12,'fontname','Arial','visible','on');

%resultado inutilizado
L = filter2(h,img2_noise,'same');
L = abs(L);
figure,imshow(L,[]);c=colorbar();set(c,'FontSize',14);
