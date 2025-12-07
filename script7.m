close all
clc
pkg load image

img = imread('Elefante.jpg');
figure,imshow(img);
%set(gca,'FontSize',12,'fontname','Arial');

n = 7;
Me = medfilt2(img,[n n]);
figure,imshow(Me);

img2_noise = imnoise(img,'salt & pepper'); %adiciona ruído sal e pimenta
figure,imshow(img2_noise,[]);
c = colorbar();
set(c,'FontSize',12,'fontname','Arial')
set (gca,'FontSize',12,'fontname','Arial','visible','on');

Me = medfilt2(img,[n n]);
figure,imshow(Me);
