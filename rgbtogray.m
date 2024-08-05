function [gray] = rgbtogray(img)
img=double(img);

r=img(:,:,1);
G=img(:,:,2);
b=img(:,:,3);
gray=0.5*r+0.3*G+0.2*b;
gray=uint8(gray);
figure,imshow(gray);
end