%TUTORIAL 9.3
J = imread('pout.tif');
I = im2double(J);
clear J
figure, subplot(3,2,1), imshow(I), title('Original Image')
subplot(3,2,2), imhist(I), axis tight, ...
title('Original Histogram')

const = 0.1;
I2 = I + const;
subplot(3,2,3), imshow(I2), title('Original Image + 0.1')
subplot(3,2,4), imhist(I2), axis tight, ...
title('Original Hist + 0.1')
%question1
const = 0.5;
I3 = I + const;
bad_values = find(I3 > 1);
I3(bad_values) = 1;
subplot(3,2,5), imshow(I3), title('Original Image + 0.5')
subplot(3,2,6), imhist(I3), axis tight, ...
title('Original Hist + 0.5')

%question3
img_limits = stretchlim(I);
I_stretch = imadjust(I,img_limits,[]);
figure
subplot(3,2,1), imshow(I), title('Original Image')
subplot(3,2,2), imhist(I), axis tight, ...
title('Original Histogram')
subplot(3,2,3), imshow(I_stretch), ...
title('Stretched Image')
subplot(3,2,4), imhist(I_stretch), axis tight, ...
title('Stretched Histogram')
%question5
I_stretch2 = imadjust(I);
subplot(3,2,5), imshow(I_stretch2), ...
title('Stretched Image')
subplot(3,2,6), imhist(I_stretch2), axis tight, ...
title('Stretched Histogram')
I_stretch_diff = imabsdiff(I_stretch, I_stretch2);
figure, imshow(I_stretch_diff,[])
min(I_stretch_diff(:))
max(I_stretch_diff(:))


