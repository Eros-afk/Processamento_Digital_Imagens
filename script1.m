%Comentários
clear all % comando para limpar variáveis
close all % comando para fechar figuras
%clc % comando para limpar a tela

% comando para carregar o pacote de imagens
pkg load image

%comando para ler imagens
%img = imread('Elefante.jpg');

% comando para exibir imagens
%figure,imshow(img);

img_cor = imread('Gralha.jpg');
figure,imshow(img_cor);

R = img_cor(:,:,1);
G = img_cor(:,:,2);
B = img_cor(:,:,3);

figure,imshow(R); title("Banda R");
figure,imshow(G); title("Banda G");
figure,imshow(B); title("Banda B");

img2 = cat(3,R,G,B);
figure,imshow(img2);

imwrite(img_cor,'Gralha_nova.tif');
