f = [0.3*ones(200,100) 0.7*ones(200,100)];

gaussian = imnoise(f, 'gaussian'); % default mean is 0 and variance is 0.01
salt = imnoise(f, 'salt & pepper'); % default noise density is 0.04
speckle = imnoise(f, 'speckle', 0.04);

figure()
imshow(f)
figure()
imshow(gaussian)
figure()
imshow(salt)
figure()
imshow(speckle)
