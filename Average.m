function result = Average(old_image)
    filter=1/9*[1 1 1;1 1 1;1 1 1];
    p = 1;
    old_image = double(padarray(old_image, [p, p]));
    [h, w, l] = size(old_image);
    filter = double(filter);
    result = zeros(h, w, l);
    if l == 1
        for i = 2:h-1
            for j = 2:w-1
                s = old_image(i-1:i+1, j-1:j+1);
                result(i, j) = sum(sum(s .* filter));
                if result(i,j)>255
                    result(i,j)=255;
                elseif result(i,j)<0
                    result(i,j)=0;
                end
            end
        end
    else
        for k = 1:3
            for i = 2:h-1
                for j = 2:w-1
                    s = old_image(i-1:i+1, j-1:j+1, k);
                    result(i, j, k) = sum(sum(s.*filter));
                    if result(i,j,k)>255
                        result(i,j,k)=255;
                    elseif result(i,j,k)<0
                        result(i,j,k)=0;
                    end
                end
            end
        end
    end

    result = uint8(result);
    imshow(result);
end