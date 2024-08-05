function [gray] = rgbtogray3(img)
r=img(:,:,1);
gray=uint8(r);
imshow(gray);
end