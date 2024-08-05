function [ ] = lineDetectionS(image)
if size(image, 3) == 3
    image = rgb2gray(image);
end
image = double(image);

   sobelFilter = fspecial('sobel');

% Apply the Laplacian filter using imfilter


% Apply threshold to identify points
horizontalEdges = imfilter(double(image), sobelFilter);
    imshow(horizontalEdges);
    
end