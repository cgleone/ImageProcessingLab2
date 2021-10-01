h1 = (1/6)*ones(1,6);
h2 = h1';
h3 = [-1 1];

img = imread('lena.tiff');
img = rgb2gray(img);
img = double(img)/255;

figure()
imshow(img);

figure()
conv_1 = conv2(img, h1);
imshow(conv_1);

figure()
conv_2 = conv2(img, h2);
imshow(conv_2);

figure()
conv_3 = conv2(img, h3);
imshow(conv_3);