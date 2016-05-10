% Apply a median filter
pkg load image;
%%insert any png to see impact
%% Read an image
img = imread('moon.png');  % also try: brooklyn-bridge.png, penny-farthing.png
imshow(img);

%% Add salt & pepper noise
noisy_img=imnoise(img,"salt & pepper",0.02);
imshow(noisy_img);

%% Apply a median filter (how is the result different compared to Gaussian smoothing?)
median_filtered=medfilt2(noisy_img);
