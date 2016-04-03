% File: smoothing.m
% Desc: Proses smoothing 256 px image
% Date: 1 April 2016
% Author: Eliza Riviera Rachmawati Jasin - 1103130144

% Load data
img1 = imread('test.jpg');
% Copy data
img2 = img1;
% Beri noise salt paper
img2 = imnoise(img2,'salt & pepper',0.02);

% Konvolusi mean filter 3x3
mean3 = meanFilt(img2,3);

% Konvolusi mean filter 5x5
mean5 = meanFilt(img2,5);

% Konvolusi mean filter 7x7
mean7 = meanFilt(img2,7);

% Konvolusi median filter 3x3
median3 = medianFilt(img2,3);

% Konvolusi median filter 5x5
median5 = medianFilt(img2,5);

% Konvolusi median filter 7x7
median7 = medianFilt(img2,7);

% Konvolusi modus filter 3x3
modus3 = modusFilt(img2,3);

% Konvolusi modus filter 5x5
modus5 = modusFilt(img2,5);

% Konvolusi modus filter 7x7
modus7 = modusFilt(img2,7);

% Tampilkan gambar
subplot(4,3,1); imshow(img1); title('Image asli');
subplot(4,3,3); imshow(img2); title('Salt & Pepper');
subplot(4,3,4); imshow(mean3); title('Mean 3x3');
subplot(4,3,5); imshow(mean5); title('Mean 5x5');
subplot(4,3,6); imshow(mean7); title('Mean 7x7');
subplot(4,3,7); imshow(median3); title('Median 3x3');
subplot(4,3,8); imshow(median5); title('Median 5x5');
subplot(4,3,9); imshow(median7); title('Median 7x7');
subplot(4,3,10); imshow(modus3); title('Modus 3x3');
subplot(4,3,11); imshow(modus5); title('Modus 5x5');
subplot(4,3,12); imshow(modus7); title('Modus 7x7');
figure; imshow(img1); title('Image asli');
figure; imshow(img2); title('Salt & Pepper');
figure; imshow(mean3); title('Mean 3x3');
figure; imshow(mean5); title('Mean 5x5');
figure; imshow(mean7); title('Mean 7x7');
figure; imshow(median3); title('Median 3x3');
figure; imshow(median5); title('Median 5x5');
figure; imshow(median7); title('Median 7x7');
figure; imshow(modus3); title('Modus 3x3');
figure; imshow(modus5); title('Modus 5x5');
figure; imshow(modus7); title('Modus 7x7');