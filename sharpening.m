cameraman = imread('cameraman.tif');
cameraman = double(cameraman)/255;

gaussian_filter = fspecial('gaussian', 7, 1)

gaussian_filtered_cameraman = conv2(cameraman, gaussian_filter, 'same');
cameraman_difference = cameraman - gaussian_filtered_cameraman;
boosted_cameraman = cameraman + cameraman_difference;
boosted_cameraman_2 = cameraman + (cameraman_difference .* .5);

figure
subplot(2,2,1), imshow(gaussian_filtered_cameraman), title('Gaussian-Filtered Image')
subplot(2,2,2), imshow(cameraman_difference), title('Subtracted Image')
subplot(2,2,3), imshow(boosted_cameraman), title('Original + Subtracted Image')
subplot(2,2,4), imshow(boosted_cameraman_2), title('Original + Subtracted x 0.5')
    


