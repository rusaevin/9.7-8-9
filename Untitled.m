%Bir g�r�nt�y� ve histogram�n� g�r�nt�leyin.
I = imread('C:\Users\rusa\Desktop\mlsb\fotolar\panda.png');
figure, subplot(2,2,1), imshow(I), title('Image')
subplot(2,2,2), imhist(I,256), axis tight, title('Histogram')
%�nceki ad�m, g�r�nt� i�in varsay�lan histogram� g�r�nt�ledi - bir histogram
%256 kutu ile. Bu de�eri 64 ve 32 olarak de�i�tirirsek ne olaca��n� g�relim
subplot(2,2,3), imhist(I,64), axis tight, ...
title('Histogram with 64 bins')
subplot(2,2,4), imhist(I,32), axis tight, ...
title('Histogram with 32 bins')
