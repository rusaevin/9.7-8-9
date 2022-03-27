%Bir görüntüyü ve histogramýný görüntüleyin.
I = imread('C:\Users\rusa\Desktop\mlsb\fotolar\panda.png');
figure, subplot(2,2,1), imshow(I), title('Image')
subplot(2,2,2), imhist(I,256), axis tight, title('Histogram')
%Önceki adým, görüntü için varsayýlan histogramý görüntüledi - bir histogram
%256 kutu ile. Bu deðeri 64 ve 32 olarak deðiþtirirsek ne olacaðýný görelim
subplot(2,2,3), imhist(I,64), axis tight, ...
title('Histogram with 64 bins')
subplot(2,2,4), imhist(I,32), axis tight, ...
title('Histogram with 32 bins')
