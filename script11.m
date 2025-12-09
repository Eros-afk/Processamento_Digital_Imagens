%binarização
clc
clear all
close all
pkg load image

img = imread('Elefante.jpg');
figure,imshow(img);
figure,imhist(img);grid on;set(gca,'FontSize',10);
xlim([0 255]);ylim([0 50000]);

%bin = img > 170;
bin = img > 136;
bin2 = im2bw(img,170/255);
bin3 = im2bw(img,graythresh(img));

figure,imshow(bin);title('Manual');
set(gca,'FontSize',14);
figure,imshow(bin2);
figure,imshow(bin3);
