%Median filtering
close all;
clear all;

I = imread('flower.jpg');  %% Taking Input Image
figure, imshow(I)
J = imnoise(I,'salt & pepper',0.02);
K = medfilt2(J);
imshowpair(J,K,'montage')