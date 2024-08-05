function [ ] = pointsharpening(image)
if size(image, 3) == 3
    image = rgb2gray(image);
end
image = double(image);

 sharpeningKernel = [-1 -1 -1; -1 9 -1; -1 -1 -1];

% Apply the Laplacian filter using imfilter


% Apply threshold to identify points
horizontalEdges = imfilter(double(image), sharpeningKernel);
% verticallEdges = imfilter(double(image), robertsFilterY);
    imshow(horizontalEdges);
    
end

