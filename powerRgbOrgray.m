function [] = powerRgbOrgray(Image,y)
[h ,w ,l]=size(Image);
image=zeros(h,w);
Image=im2double(Image);
 for i=1:h
    for j=1:w
           if l==3
               
                image(i,j,1)=(Image(i,j,1))^y;
                image(i,j,2)=(Image(i,j,2))^y;
                image(i,j,3)=(Image(i,j,3))^y;
                

            else
                image(i,j)=(Image(i,j))^y;
           end
    end
end
 image=im2uint8(image);
    figure,imshow(image);
end
