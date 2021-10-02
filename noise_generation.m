f = [0.3*ones(200,100) 0.7*ones(200,100)];

gaussian = imnoise(f, 'gaussian'); % default mean is 0 and variance is 0.01
salt = imnoise(f, 'salt & pepper'); % default noise density is 0.05
speckle = imnoise(f, 'speckle', 0.04);

figure
subplot(2,2,1), imshow(f), title('Original Image')
subplot(2,2,2), imshow(gaussian), title('Gaussian Noise')
subplot(2,2,3), imshow(salt), title('Salt & Pepper Noise')
subplot(2,2,4), imshow(speckle), title('Speckle Noise')

figure 
subplot(2,2,1), imhist(f), title('Original Image')
subplot(2,2,2), imhist(gaussian), title('Gaussian Noise')
subplot(2,2,3), imhist(salt), title('Salt & Pepper Noise')
subplot(2,2,4), imhist(speckle), title('Speckle Noise')    