function [gray] = rgbtogray2(img)
r=img(:,:,1);
g=img(:,:,2);
b=img(:,:,3);
gray=uint8((r+g+b)/3);
imshow(gray);
end