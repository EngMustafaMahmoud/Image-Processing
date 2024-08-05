function [ ] = detectPoints(image)
if size(image, 3) == 3
    image = rgb2gray(image);
end
image = double(image);

   laplacian_filter = fspecial('laplacian');

% Apply the Laplacian filter using imfilter
laplacian_result = imfilter(image, laplacian_filter);

% Apply threshold to identify points
threshold_value = 30;
points = zeros(size(laplacian_result));
points(laplacian_result > threshold_value) = 255;
    imshow(points);
    
end