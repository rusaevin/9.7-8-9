I = imread('C:\Users\rusa\Desktop\mlsb\fotolar\panda.png');
c = imhist(I,32);
c_norm=c/ numel(I);
figure, subplot(1,2,1), bar_1 = bar(c);
set(gca, 'XLim', [0 32], 'YLim', [0 max(c)]);
set(gca, 'XTick', [0:8:32], 'YTick', ...
[linspace(0,7000,8) max(c)]);
set(bar_1, 'FaceColor', 'r'), title('Bar Chart')

%question3

figure, subplot(1,2,1), bar_1 = bar(c);
set(gca, 'XLim', [0 32], 'YLim', [0 max(c)]);
set(gca, 'XTick', [0:8:32], 'YTick', ...
[linspace(0,7000,8) max(c)]);
set(bar_1, 'FaceColor', 'r'), title('Bar Chart')

%question4
subplot(1,2,2), bar_2 = bar(c_norm);
set(gca, 'XTick', [0:8:32], 'YTick', ...
[linspace(0,0.09,10) max(c_norm)])
xlim([0 32]), ylim([0 max(c_norm)])
title('Normalized Bar Chart')
set(bar_2, 'FaceColor', 'g')
figure,
subplot(1,2,1), stem(c,'fill','MarkerFaceColor','red'), ...
axis tight, title('Stem Chart')
subplot(1,2,2), stem(c_norm,'fill','MarkerFaceColor','red'), ...
axis tight, title('Normalized Stem Chart')

%question6
figure, subplot(1,2,1), plot(c), axis auto, title('Plot Graph')
subplot(1,2,2), plot(c_norm), axis auto, ...
title('Normalized Plot Graph')


