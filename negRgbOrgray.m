function [] = negRgbOrgray(Image)
m=max(max(Image));
image=m-(Image+1);
figure,imshow(image);
end
