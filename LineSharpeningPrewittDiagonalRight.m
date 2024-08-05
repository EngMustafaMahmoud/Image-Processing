function new_image = LineSharpeningPrewittDiagonalRight(image)%blurring ,smoothing filter
    
    filter = [-1, -1, 0; -1, 0, 1; 0, 1, 1];
    M = length(filter);%obtain length of mask
    k = (M-1) / 2;
    image = double(padarray(image, [k, k],'replicate'));% apply padding k to imageage image
    
    [H, W ,l] = size(image);
    new_image = zeros(H, W);% the same size with padding
    
    for i = 1+k:H-k
        for j = 1+k:W-k
            if (l==3)% check if its rgb
                 subimage = image(i-k:i+k, j-k:j+k,1);%cut size of image = mask
            new_image(i, j,1) = sum(sum(subimage .* filter));
            else
            subimage = image(i-k:i+k, j-k:j+k);%cut size of image = mask
            new_image(i, j) = sum(sum(subimage .* filter));%multiply each value of mask to oppsite value of image then sum  "A.*B is the element-by-element product of A and B."  "sum column then row"
            end
            if new_image(i, j) > 255  % map all value to [0:255]
                new_image(i, j) = 255;
            elseif new_image(i, j) < 0
                new_image(i, j) = 0;
            end
        end
    end

    new_image = uint8(new_image);
    
    new_image = new_image(1+k:H-k, 1+k:W-k);
    figure, imshow(new_image);
end





