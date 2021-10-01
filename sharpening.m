cameraman = imread('cameraman.tif');
cameraman = double(cameraman)/255;

gaussian_filter = fspecial('gaussian', 7, 1)

gaussian_filtered_cameraman = conv2(cameraman, gaussian_filter, 'same');

cameraman_difference = cameraman - gaussian_filtered_cameraman;

figure()
imshow(gaussian_filtered_cameraman)
figure()
imshow(cameraman_difference)

boosted_cameraman = cameraman + cameraman_difference;
figure()
imshow(boosted_cameraman)

boosted_cameraman_2 = cameraman + (cameraman_difference .* .5);
figure()
imshow(boosted_cameraman_2)


