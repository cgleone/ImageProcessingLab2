clear

lena = imread('lena.tiff');
lena = rgb2gray(lena);
lena = double(lena)/255;

gaussian_noisy_lena = imnoise(lena, 'gaussian', 0, 0.002);

figure();
imshow(lena);
figure();
imhist(lena);
figure();
imshow(gaussian_noisy_lena);
figure();
imhist(gaussian_noisy_lena);

psnr(lena, gaussian_noisy_lena)


small_averaging_filter = fspecial('average', 3)

figure()
colormap(gray)
imagesc(small_averaging_filter)

small_average_filtered_gaussian_lena = conv2(gaussian_noisy_lena, small_averaging_filter, 'same');
figure()
imshow(small_average_filtered_gaussian_lena)
figure()
imhist(small_average_filtered_gaussian_lena)

psnr(lena, small_average_filtered_gaussian_lena)


large_averaging_filter = fspecial('average', 7)

figure()
colormap(gray)
imagesc(large_averaging_filter)

large_average_filtered_gaussian_lena = conv2(gaussian_noisy_lena, large_averaging_filter, 'same');
figure()
imshow(large_average_filtered_gaussian_lena)
figure()
imhist(large_average_filtered_gaussian_lena)

psnr(lena, large_average_filtered_gaussian_lena)


gaussian_filter = fspecial('gaussian', 7, 1)

figure()
colormap(gray)
imagesc(gaussian_filter)

gaussian_filtered_gaussian_lena = conv2(gaussian_noisy_lena, gaussian_filter, 'same');
figure()
imshow(gaussian_filtered_gaussian_lena)
figure()
imhist(gaussian_filtered_gaussian_lena)

psnr(lena, gaussian_filtered_gaussian_lena)


salt_noisy_lena = imnoise(lena, 'salt & pepper'); % default density is 0.05

large_average_filtered_salt_lena = conv2(salt_noisy_lena, large_averaging_filter, 'same');

figure()
imshow(large_average_filtered_salt_lena)
figure()
imhist(large_average_filtered_salt_lena)

psnr(lena, large_average_filtered_salt_lena)


gaussian_filtered_salt_lena = conv2(salt_noisy_lena, gaussian_filter, 'same');

figure()
imshow(gaussian_filtered_salt_lena)
figure()
imhist(gaussian_filtered_salt_lena)

psnr(lena, gaussian_filtered_salt_lena)


median_filtered_salt_lena = medfilt2(salt_noisy_lena);

figure()
imshow(median_filtered_salt_lena)
figure()
imhist(median_filtered_salt_lena)

psnr(lena, median_filtered_salt_lena)


