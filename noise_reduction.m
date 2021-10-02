clear

lena = imread('lena.tiff');
lena = rgb2gray(lena);
lena = double(lena)/255;

gaussian_noisy_lena = imnoise(lena, 'gaussian', 0, 0.002);

figure
subplot(1,2,1), imshow(lena), title("Original Lena")
subplot(1,2,2), imhist(lena), title("Histogram")
figure
subplot(1,2,1), imshow(gaussian_noisy_lena), title("Lena with Gaussian Noise")
subplot(1,2,2), imhist(gaussian_noisy_lena), title("Histogram")

psnr(lena, gaussian_noisy_lena)


small_averaging_filter = fspecial('average', 3)

figure
colormap(gray)
imagesc(small_averaging_filter), title("3x3 Averaging Filter Plot")

small_average_filtered_gaussian_lena = conv2(gaussian_noisy_lena, small_averaging_filter, 'same');

figure
subplot(1,2,1), imshow(small_average_filtered_gaussian_lena), title("Gaussian Noisy Lena Filtered with 3x3 Average Filtering")
subplot(1,2,2), imhist(small_average_filtered_gaussian_lena), title("Histogram")

psnr(lena, small_average_filtered_gaussian_lena)


large_averaging_filter = fspecial('average', 7)

figure
colormap(gray)
imagesc(large_averaging_filter), title("7x7 Averaging Filter Plot")

large_average_filtered_gaussian_lena = conv2(gaussian_noisy_lena, large_averaging_filter, 'same');
figure
subplot(1,2,1), imshow(large_average_filtered_gaussian_lena), title("Gaussian Noisy Lena Filtered with 7x7 Average Filtering")
subplot(1,2,2), imhist(large_average_filtered_gaussian_lena), title("Histogram")

psnr(lena, large_average_filtered_gaussian_lena)


gaussian_filter = fspecial('gaussian', 7, 1)

figure
colormap(gray)
imagesc(gaussian_filter), title("7x7 Gaussian Filter Plot")

gaussian_filtered_gaussian_lena = conv2(gaussian_noisy_lena, gaussian_filter, 'same');
figure
subplot(1,2,1), imshow(gaussian_filtered_gaussian_lena), title("Gaussian Noisy Lena Filtered with 7x7 Gaussian Filter")
subplot(1,2,2), imhist(gaussian_filtered_gaussian_lena), title("Histogram")

psnr(lena, gaussian_filtered_gaussian_lena)


salt_noisy_lena = imnoise(lena, 'salt & pepper'); % default density is 0.05

figure
subplot(1,2,1), imshow(salt_noisy_lena), title("Salt and Pepper Noisy Lena")
subplot(1,2,2), imhist(salt_noisy_lena), title("Salt and Pepper Noisy Lena")

psnr(lena, salt_noisy_lena)


large_average_filtered_salt_lena = conv2(salt_noisy_lena, large_averaging_filter, 'same');

figure
subplot(1,2,1), imshow(large_average_filtered_salt_lena), title("Salt and Pepper Noisy Lena Filtered with 7x7 Averaging Filter")
subplot(1,2,2), imhist(large_average_filtered_salt_lena), title("Histogram")

psnr(lena, large_average_filtered_salt_lena)


gaussian_filtered_salt_lena = conv2(salt_noisy_lena, gaussian_filter, 'same');

figure
subplot(1,2,1), imshow(gaussian_filtered_salt_lena), title("Salt and Pepper Noisy Lena Filtered with Gaussian Filter")
subplot(1,2,2), imhist(gaussian_filtered_salt_lena), title("Histogram")

psnr(lena, gaussian_filtered_salt_lena)


median_filtered_salt_lena = medfilt2(salt_noisy_lena);

figure
subplot(1,2,1), imshow(median_filtered_salt_lena), title("Salt and Pepper Noisy Lena Filtered with Median Filtering")
subplot(1,2,2), imhist(median_filtered_salt_lena), title("Histogram")

psnr(lena, median_filtered_salt_lena)


