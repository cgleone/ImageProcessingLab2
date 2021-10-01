h1 = (1/6)*ones(1,6);
h2 = h1';
h3 = [-1 1];

img = imread('lena.tiff');
img = rgb2gray(img);
img = double(img)/255;

conv_1 = conv2(img, h1);
conv_2 = conv2(img, h2);
conv_3 = conv2(img, h3);


figure
subplot(2,2,1), imshow(img), title('Original Grayscale Image')
subplot(2,2,2), imshow(conv_1), title('Convolution with h1')
subplot(2,2,3), imshow(conv_2), title('Convolution with h2')
subplot(2,2,4), imshow(conv_3), title('Convolution with h3')
    
