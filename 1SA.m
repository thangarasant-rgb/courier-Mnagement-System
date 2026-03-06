originalImage = imread('C:\Users\SONY\OneDrive\Pictures\MATLAB PICTURES\waterfall.jpg');
% Convert to grayscale if the image is RGB
if size(originalImage, 3) == 3
originalImageGray = rgb2gray(originalImage);
else
originalImageGray = originalImage; % Already grayscale
end
% Convert to double precision for processing
originalImageGray = im2double(originalImageGray);
% Display the original image
figure;
imshow(originalImageGray);
title('Original Grayscale Image');
% Apply median filter (noise reduction)
medianFiltered = medfilt2(originalImageGray, [3 3]); % 3x3 neighborhood
% Display the median filtered image
figure;
imshow(medianFiltered);
title('Median Filtered Image');