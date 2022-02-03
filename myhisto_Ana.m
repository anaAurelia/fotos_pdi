clear all
close all 
clc

%img= imread('screen.jpg');
img = imread ('figuras.png');
[fil, col, cap] = size(img);
R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

histo = zeros (1, 256);
%for k=1:k1 
 for i=1:fil
     for j=1:col
         n=G(i,j)+1;
         histo(n) = histo(n)+1;
     end
 end
 
%H = histogram(R); 
fp = 1;
cp = 3;


%mostrar imagenes 
subplot(fp,cp,1) %filas, columnas, #objeto
imshow(img)
title ('Input image')
subplot(fp,cp,2)
imshow(G)
title ('Red')
subplot(fp,cp,3)
plot(histo)
title ('Histograma')