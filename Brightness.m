function [  ] = Brightness( image )
[H, W, L] = size(image);
newImage=zeros(H, W);
newImage=double(newImage);
    for i=1:H 
        for j=1:W
            if L==3
                newImage = image*5;
            else
            newImage(i,j) = image(i,j)*5;
            end
        end
    newImage=uint8(newImage);
    
    end
figure,imshow(newImage);
end

