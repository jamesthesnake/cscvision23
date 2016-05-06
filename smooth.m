img = imread('saturn.png');
imshow(img);

% TODO: Add noise to the image
noise_sigma=25;
noise=rand(size(img)).* noise_sigma;
no_img= img+noise;

% TODO: Now apply a Gaussian filter to smooth out the noise
pkg load image;
filter_size=11;
filter_sigma=2;
filter = fspecial("gaussian",filter_size,filter_sigma);
% Note: You may need to pkg load image;
smoothed= imfilter(no_img,filter);
