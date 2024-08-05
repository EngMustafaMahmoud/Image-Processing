function [ ] = lineDetectionR(image)
if size(image, 3) == 3
    image = rgb2gray(image);
end
image = double(image);

   % Define the Roberts Cross filter
robertsFilterX = [1 0; 0 -1];
%robertsFilterY = [0 1; -1 0];


% Apply the Laplacian filter using imfilter


% Apply threshold to identify points
horizontalEdges = imfilter(double(image), robertsFilterX);
% verticallEdges = imfilter(double(image), robertsFilterY);
    imshow(horizontalEdges);
    
end