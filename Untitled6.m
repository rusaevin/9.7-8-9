%question 6
I = imread('eight.tif');
[newmap, T] = histeq(I);
figure, plot(T)

img1 = imread('pout.tif');
figure, subplot(3,3,1), imshow(img1), title('Original Image')
subplot(3,3,2), imhist(img1), title('Original Histogram')

img1_eq = histeq(img1); m1 = ones(1,256)*0.5;
subplot(3,3,4), imshow(img1_eq), title('Equalized Image')
subplot(3,3,5), imhist(img1_eq), title('Equalized Histogram')
subplot(3,3,6), plot(m1), title('Desired Histogram Shape'), ...
ylim([0 1]), xlim([1 256])

m2 = linspace(0,1,256); img2 = histeq(img1,m2);
subplot(3,3,7), imshow(img2), title('Matched Image')
subplot(3,3,8), imhist(img2), title('Matched Histogram')
subplot(3,3,9), plot(m2), title('Desired Histogram Shape'), ...
ylim([0 1]), xlim([1 256])