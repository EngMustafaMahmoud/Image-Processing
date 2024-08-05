function new_image = MedianFilter(image, M)
    k = (M-1) / 2;
    image = padarray(image, [k, k]);
    
    [H, W] = size(image);
    new_image = zeros(H, W);
    
    for i = 1+k:H-k
        for j = 1+k:W-k
            subimage = image(i-k:i+k, j-k:j+k);
            sorted = sort(reshape(subimage, [1, M.*M]));
            new_image(i, j) = median(sorted);
        end
    end
    
    new_image = new_image(1+k:H-k, 1+k:W-k);
    new_image = uint8(new_image);
    figure,imshow(new_image);
end
