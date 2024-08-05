function [] = rgbtobinary(img)
img=double(img);

r=img(:,:,1);
G=img(:,:,2);
b=img(:,:,3);
gray=0.5*r+0.3*G+0.2*b;
[H ,W]=size(gray);
 binary=zeros(H,W);
 threshold=127;
 for i=1:H
     for j=1:W
         if gray(i,j)>threshold 
             binary(i,j)=1;
         end
         if gray(i,j)<=threshold
             binary(i,j)=0;
         end
     end
binary=logical(binary);
imshow(binary);
end


 