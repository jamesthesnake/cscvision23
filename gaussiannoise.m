%REMOVE nosie with a guassian fileter

%% load image
img=imgread("");
imshow(img);

%add noise

noise_sigma=25;
noise=randn(size(img))* noise_sigma;
noisy_img= img+noise;
imshow(noisy_img);


%%create gaussian filter
filter_size=11;
filter_sigma= 2;
pkg load image;
filter=fspecial('gaussian', filter_size,filter_sigma);

%remove noise by adding filter
smooth=imfilter(noisy-img,filter);
imshow(smooth);
